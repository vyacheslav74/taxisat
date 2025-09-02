import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generic_map/generic_map.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_address.dart';

part 'desktop_map.state.dart';
part 'desktop_map.freezed.dart';

@lazySingleton
class FavoriteLocationsDesktopMapCubit extends Cubit<FavoriteLocationsDesktopMapState> {
  FavoriteLocationsDesktopMapCubit()
      : super(
          const FavoriteLocationsDesktopMapState.initial(),
        );

  void onStarted() {
    final oldState = state;
    emit(
      const FavoriteLocationsDesktopMapState.initial(),
    );
    emit(oldState);
  }

  void onStopped() {
    emit(
      const FavoriteLocationsDesktopMapState.initial(),
    );
  }

  void showList({
    required List<FavoriteLocationEntity> list,
  }) {
    //throw UnimplementedError();
    emit(
      FavoriteLocationsDesktopMapState.list(
        locations: list,
      ),
    );
  }

  void viewOne({
    required String name,
    required PlaceEntity location,
  }) {
    emit(
      FavoriteLocationsDesktopMapState.viewOne(
        name: name,
        location: location,
      ),
    );
  }

  void locate({
    required PlaceEntity? centerLocation,
  }) {
    emit(
      FavoriteLocationsDesktopMapState.locate(
        centerLocation: centerLocation,
      ),
    );
  }
}
