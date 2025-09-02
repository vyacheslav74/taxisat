import 'dart:async';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/locator/locator.dart';
import '../../../../core/datasources/geo_datasource.dart';
import '../../../../core/entities/order.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repositories/home_repository.dart';
import '../../features/track_order/presentation/blocs/track_order.dart';

part 'home.state.dart';
part 'home.freezed.dart';
part 'home.g.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  final HomeRepository homeRepository;
  final GeoDatasource geoDatasource;

  StreamSubscription<Either<Failure, List<DriverLocation>>>? _driverLocationSubscription;
  Timer? _driverAnimationTimer;


  HomeCubit(this.homeRepository, this.geoDatasource)
      : super(
      const HomeState.welcome(
    waypoints: [null, null], driversAround: []

  ));

  @override
  Future<void> close() {
    _driverLocationSubscription?.cancel();
    _driverAnimationTimer?.cancel();
    _driverLocationSubscription?.cancel();
    _animationTimer?.cancel();
    return super.close();
  }

  List<DriverLocation> _currentDisplayDrivers = [];
  void onStarted({
    required bool authenticated,
    required PlaceEntity? currentLocationPlace,
  }) async {
    if (authenticated) {
      final currentOrder = await homeRepository.getCurrentOrder();
      await currentOrder.fold(
            (l) async => emit(HomeState.error(error: l.errorMessage)),
            (r) async {
          if (r == null) {
            // no active order returned from server
            switch (state) {
              case RideInProgressState():
              case RateDriverState():
                initializeWelcome(pickupPoint: currentLocationPlace);
                break;
              default:
            }
          } else {
            // active order returned from server
            if (r.$1.status != OrderStatus.waitingForReview) {
              emit(
                HomeState.rideInProgress(
                  order: r.$1,
                  driverLocation: r.$2,
                ),
              );
            } else {
              locator.resetLazySingleton<TrackOrderBloc>();
              emit(
                HomeState.rateDriver(
                  order: r.$1,
                ),
              );
            }
          }
        },
      );
    } else {

      return initializeWelcome(pickupPoint: PlaceEntity(
          coordinates:  LatLngEntity( lat: 55.0488,
              lng: 58.9721), address: ''));
      }

  }

  void initializeWelcome({
    required PlaceEntity? pickupPoint,
  }) async {
    emit(
      HomeState.welcome(
        waypoints: [pickupPoint, null],
        driversAround: [],
      ),
    );
    _showDriversAround(waypoints: [pickupPoint, null]);
  }

  void closeWaypointsInput({
    required List<PlaceEntity?> waypoints,
  }) async {
    emit(HomeState.welcome(waypoints: waypoints, driversAround: []));
    _showDriversAround(
      waypoints: waypoints,
    );
  }

  void onMapMoved({
    required PlaceEntity selectedLocation,
  }) async {
    state.mapOrNull(
      welcome: (welcome) async {
        _showDriversAround(
          waypoints: welcome.waypoints.mapIndexed((index, e) => index == 0 ? selectedLocation : e).toList(),
        );
      },
      confirmLocation: (confirmLocation) async {
        emit(
          HomeState.confirmLocation(
            waypoints: confirmLocation.waypoints,
            index: confirmLocation.index,
            selectedLocation: selectedLocation,
          ),
        );
      },
    );
  }

  Timer? _animationTimer;
  DateTime? _animationStartTime;
  static const _animationDuration = Duration(milliseconds: 3000);
  // В классе (на уровне состояния):

  void _showDriversAround({

    required List<PlaceEntity?> waypoints,
  }) async {
    if (waypoints.first == null) {
      emit(const HomeState.welcome(
        waypoints: [null, null],
        driversAround: [],
      ));
      return;
    }

    await _driverLocationSubscription?.cancel();
    _driverAnimationTimer?.cancel();
    // Периодические обновления с анимацией
    _driverLocationSubscription = Stream.periodic(
      const Duration(milliseconds: 3000),
          (_) => homeRepository.getDriversAround(waypoints.first!.latLng2),
    ).asyncMap((future) => future)
        .listen((result) {
      result.fold(
            (failure) => emit(HomeState.error(error: failure.errorMessage)),
            (newDrivers) {
          if (state is WelcomeState) {
            _startDriverAnimation(newDrivers, waypoints);
          }
        },
      );
    });
  }

  void cancelDriverUpdates() {
    _driverLocationSubscription?.cancel();
    _driverAnimationTimer?.cancel();
    _driverLocationSubscription = null;
    _driverAnimationTimer = null;
  }

  void pauseDriverUpdates() {
    _driverLocationSubscription?.pause();
    _driverAnimationTimer?.cancel();
  }

  String _getMarkerKey(DriverLocation driver) {
    return '${driver.lat.toStringAsFixed(6)}_'
        '${driver.lng.toStringAsFixed(6)}_'
        '${driver.rotation ?? 0}';
  }

  final Map<String, DriverLocation> _markerCorrespondence = {};


  void _startDriverAnimation(List<DriverLocation> newDrivers, List<PlaceEntity?> waypoints) {
    _animationStartTime = DateTime.now();
    _driverAnimationTimer?.cancel();



    // 1. Сопоставляем маркеры между обновлениями
    final newMarkersMap = {for (var d in newDrivers) _getMarkerKey(d): d};
    final oldMarkersMap = {for (var d in _currentDisplayDrivers) _getMarkerKey(d): d};

    // 2. Обновляем соответствия
    final updatedCorrespondence = <String, DriverLocation>{};

    // Сначала находим точные совпадения
    for (final key in newMarkersMap.keys) {
      if (oldMarkersMap.containsKey(key)) {
        updatedCorrespondence[key] = oldMarkersMap[key]!;
      }
    }

    // Затем находим ближайшие для оставшихся
    final unmatchedNew = newDrivers.where((d) => !updatedCorrespondence.containsKey(_getMarkerKey(d))).toList();
    final unmatchedOld = _currentDisplayDrivers.where((d) => !updatedCorrespondence.containsValue(d)).toList();

    for (final newDriver in unmatchedNew) {
      final closestOld = _findClosestMarker(newDriver, unmatchedOld);
      if (closestOld != null && _calculateDistance(closestOld, newDriver) < 0.001) {
        updatedCorrespondence[_getMarkerKey(newDriver)] = closestOld;
        unmatchedOld.remove(closestOld);
      }
    }

    // 3. Сохраняем новые соответствия
    _markerCorrespondence.clear();
    _markerCorrespondence.addAll(updatedCorrespondence);

    // 4. Запускаем анимацию
    _driverAnimationTimer = Timer.periodic(
      const Duration(milliseconds: 16),
          (timer) {
        final elapsed = DateTime.now().difference(_animationStartTime!);
        final progress = min(1.0, elapsed.inMilliseconds / _animationDuration.inMilliseconds);
        final easedProgress = _easeInOutCubic(progress);

        _currentDisplayDrivers = newDrivers.map((newDriver) {
          final key = _getMarkerKey(newDriver);
          final previousDriver = _markerCorrespondence[key] ?? newDriver;




          return DriverLocation(
            lat: _interpolate(previousDriver.lat, newDriver.lat, easedProgress),
            lng: _interpolate(previousDriver.lng, newDriver.lng, easedProgress),
            rotation: _interpolateAngle(previousDriver.rotation, newDriver.rotation, easedProgress),
          );
        }).toList();

        emit(HomeState.welcome(
          waypoints: waypoints,
          driversAround: List.from(_currentDisplayDrivers),
        ));

        if (progress >= 1.0) {
          timer.cancel();
          // Обновляем соответствия на новые позиции
          for (final driver in newDrivers) {
            _markerCorrespondence[_getMarkerKey(driver)] = driver;
          }
        }
      },
    );
  }

  // Поиск ближайшего маркера
  DriverLocation? _findClosestMarker(DriverLocation target, List<DriverLocation> candidates) {
    if (candidates.isEmpty) return null;

    candidates.sort((a, b) {
      final distA = _calculateDistance(target, a);
      final distB = _calculateDistance(target, b);
      return distA.compareTo(distB);
    });

    return candidates.first;
  }

  // Расчет расстояния между координатами
  double _calculateDistance(DriverLocation a, DriverLocation b) {
    return sqrt(pow(a.lat - b.lat, 2) + pow(a.lng - b.lng, 2));
    }

// Методы интерполяции...


// Easing функция для плавности
  double _easeInOutCubic(double progress) {
    return progress < 0.5
        ? 4 * progress * progress * progress
        : 1 - pow(-2 * progress + 2, 3) / 2;
  }
  double _interpolate(double start, double end, double progress) {
    // Добавляем порог для минимального изменения
    if ((end - start).abs() < 0.00001) return end;
    return start + (end - start) * progress;
  }

  int _interpolateAngle(int? start, int? end, double progress) {
    if (start == null && end == null) return 0;
    if (start == null) return end!;
    if (end == null) return start;

    // Если изменение угла меньше порога - сохраняем текущий угол
    if ((end - start).abs() < 5) return end;

    // Плавный поворот по кратчайшему пути
    final diff = ((end - start + 180) % 360) - 180;
    return (start + diff * progress).round() % 360;
  }

  void onAddStop() {
    state.maybeMap(
      orElse: () => throw Exception('Invalid state'),
      inputWaypoints: (inputWaypoints) {
        emit(
          inputWaypoints.copyWith(
            waypoints: inputWaypoints.waypoints.followedBy([null]).toList(),
          ),
        );
      },
    );
  }

  void onRemoveStop(int index) {
    state.maybeMap(
      orElse: () => throw Exception('Invalid state'),
      inputWaypoints: (inputWaypoints) {
        final locations = [...inputWaypoints.waypoints];
        locations.removeAt(index);
        emit(inputWaypoints.copyWith(waypoints: locations));
      },
    );
  }

  void onLocationSelected(int index, PlaceEntity place) {
    state.maybeMap(
      orElse: () => throw Exception('Invalid state'),
      inputWaypoints: (inputWaypoints) {
        final locations = [...inputWaypoints.waypoints];
        locations[index] = place;
        emit(inputWaypoints.copyWith(waypoints: locations));
      },
    );
  }

  void showWaypoints({
    required List<PlaceEntity?> waypoints,
  }) =>
      emit(
        HomeState.inputWaypoints(
          waypoints: waypoints,
        ),
      );

  void showConfirmLocation({
    required List<PlaceEntity?> waypoints,
    required int index,
    required PlaceEntity selectedLocation,
  }) =>
      emit(
        HomeState.confirmLocation(
          waypoints: waypoints,
          index: index,
          selectedLocation: selectedLocation,
        ),
      );

  void showPreview({
    required List<PlaceEntity> waypoints,
    required List<LatLngEntity> directions,
  }) =>

      emit(
        HomeState.ridePreview(
          waypoints: waypoints,
          directions: directions,
        ),
      );

  void showInProgress({
    required OrderEntity order,
    required DriverLocation? driverLocation,
  }) =>
      emit(
        HomeState.rideInProgress(
          order: order,
          driverLocation: driverLocation,
        ),
      );

  void showRate({
    required OrderEntity order,
  }) =>
      emit(
        HomeState.rateDriver(
          order: order,
        ),
      );

// @override
// HomeState? fromJson(Map<String, dynamic> json) => HomeState.fromJson(json);

// @override
// Map<String, dynamic>? toJson(HomeState state) => state.toJson();



}