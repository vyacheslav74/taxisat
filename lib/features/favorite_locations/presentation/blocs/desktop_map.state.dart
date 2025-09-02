part of 'desktop_map.dart';

@freezed
class FavoriteLocationsDesktopMapState with _$FavoriteLocationsDesktopMapState {
  const factory FavoriteLocationsDesktopMapState.initial() = _Initial;

  const factory FavoriteLocationsDesktopMapState.list({
    required List<FavoriteLocationEntity> locations,
  }) = _ShowList;

  const factory FavoriteLocationsDesktopMapState.viewOne({
    required String name,
    required PlaceEntity location,
  }) = _ViewOne;

  const factory FavoriteLocationsDesktopMapState.locate({
    required PlaceEntity? centerLocation,
  }) = _Locate;

  const FavoriteLocationsDesktopMapState._();

  List<CustomMarker> get markers {
    return maybeMap(
      orElse: () => const [],
      list: (list) {
        return list.locations.map(
          (e) {
            return AppMarkerAddresss(
              title: e.name,
              address: e.place.address,
            ).genericMarker(
              e.place.latLng2,
            );
          },
        ).toList();
      },
      viewOne: (viewOne) {
        return [
          AppMarkerAddresss(
            title: viewOne.name,
            address: viewOne.location.address,
          ).genericMarker(
            viewOne.location.latLng2,
          ),
        ];
      },
      locate: (locate) {
        return [];
      },
    );
  }
}
