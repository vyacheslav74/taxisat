import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_pickup.dart';
import 'package:generic_map/generic_map.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/settings.dart';
import 'package:rider_flutter/core/datasources/geo_datasource.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_drop_off.dart';
import 'package:rider_flutter/core/presentation/app_generic_map.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.extensions.dart';
import 'package:rider_flutter/features/home/presentation/blocs/place_confirm.dart';

import 'current_location_marker.dart';

class HomeMap extends StatefulWidget {
  const HomeMap({super.key});

  @override
  State<HomeMap> createState() => _HomeMapState();
}

class _HomeMapState extends State<HomeMap> {
  MapViewController? mapViewController;
  bool _showNoDriversMessage = false;
  Timer? _noDriversTimer;

  @override
  void dispose() {
    _noDriversTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // Обновляем флаг видимости сообщения
        _noDriversTimer?.cancel();
          final shouldShowMessage = state is WelcomeState &&
              state.driversAround.isEmpty;

        if (shouldShowMessage) {
          _noDriversTimer = Timer(const Duration(seconds: 8), () {
            if (mounted) {
              setState(() {
                _showNoDriversMessage = true;
              });
            }
          });
        } else {
          setState(() {
            _showNoDriversMessage = false;
          });
        }

        // Обработка перемещения камеры
        state.mapOrNull(
          welcome: (value) {
            if (value.waypoints.first == null) return;
            mapViewController?.moveCamera(
              value.waypoints.first!.toGenericMapPlace.latLng,
              14,
            );
          },
          ridePreview: (value) async {
            if (value.waypoints.latLngs.length < 2) return;
            await Future.delayed(const Duration(milliseconds: 500));
            mapViewController?.fitBounds(value.waypoints.latLngs);
          },
          rideInProgress: (value) {
            if (value.markers.length < 2) return;
            mapViewController?.fitBounds(
              value.markers.map((e) => e.position).toList(),
            );
          },
          confirmLocation: (value) {
            mapViewController?.moveCamera(
                value.selectedLocation.latLng2, 19);
          },
          rateDriver: (value) {
            if (value.markers.length < 2) return;
            mapViewController?.fitBounds(
              value.markers.map((e) => e.position).toList(),
            );
          },
        );
      },
      builder: (context, state) {
        return Stack(
          children: [
            BlocBuilder<SettingsCubit, SettingsState>(
              buildWhen: (previous, current) =>
              previous.mapProvider != current.mapProvider,
              builder: (context, settingsState) {
                return AppGenericMap(
                  padding: settingsState.mapProvider == MapProviderEnum.googleMaps
                      ? const EdgeInsets.only(bottom: 32)
                      : const EdgeInsets.symmetric(
                      horizontal: 148, vertical: 148).copyWith(bottom: 80),
                  mode: state.mapViewMode,
                  interactive: state.isInteractive,
                  polylines: state.polylines,
                  onControllerReady: (controller) =>
                  mapViewController = controller,
                  centerMarkerBuilder: state.maybeMap(
                    orElse: () => null,
                    confirmLocation: (value) {
                      return (context, key, address) {
                        if (value.index == 0) {
                          return AppMarkerPickup(
                            address: "Перетащите курсор",
                            key: key,
                          ).centerMarker;
                        } else {
                          return AppMarkerDropoff(
                            address: "Перетащите курсор",
                            key: key,
                          ).centerMarker;
                        }
                      };
                    },
                    welcome: (value) =>
                        (context, key, address) =>
                    CurrentLocationMarker(
                      key: key,
                    ).marker,
                  ),
                  addressResolver: state.mapViewMode == MapViewMode.static
                      ? null
                      : (provider, location) async {
                    final settingsState = locator<SettingsCubit>().state;
                    final result = await locator<GeoDatasource>()
                        .getAddressForLocation(
                      latLng: location,
                      language: settingsState.locale,
                      mapProvider: settingsState.mapProviderEnum,
                    );
                    return result.fold(
                          (l) => Place(location, "", ""),
                          (r) => Place(location, r.address, r.title),
                    );
                  },
                  onMapMoved: (place) {
                    state.mapOrNull(
                      confirmLocation: (confirmLocation) {
                        if (place == null) {
                          locator<PlaceConfirmCubit>().onLoading();
                        } else {
                          locator<PlaceConfirmCubit>().onLoaded(
                            place: place.toPlaceEntity,
                          );
                        }
                      },
                      welcome: (welcome) {
                        if (place != null &&
                            state.mapViewMode == MapViewMode.picker) {
                          locator<HomeCubit>().onMapMoved(
                            selectedLocation: place.toPlaceEntity,
                          );
                        }
                      },
                    );
                  },
                  markers: state.markers,
                  initialLocation:
                  state.waypoints.firstOrNull?.toGenericMapPlace ??
                      Constants.defaultLocation.toGenericMapPlace,
                );
              },
            ),

            // Сообщение о отсутствии водителей
            if (_showNoDriversMessage)
              Positioned(
                bottom: 100, // Позиция над элементами управления картой
                left: MediaQuery.of(context).size.width * 0.5,
                right: 10,
                child: _buildNoDriversMessage(),
              ),
          ],
        );
      },
    );
  }
  Widget _buildNoDriversMessage() {
    return Material(
      color: Colors.transparent,
      elevation: 4,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.orange[100]?.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.orange),
        ),
        child: Row(
          children: [
            const Icon(Icons.directions_car_filled, color: Colors.orange),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Нет свободных машин',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}