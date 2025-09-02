part of 'favorite_locations.dart';

@freezed
class FavoriteLocationsState with _$FavoriteLocationsState {
  const factory FavoriteLocationsState.initial() = _Initial;
  const factory FavoriteLocationsState.loading() = _Loading;
  const factory FavoriteLocationsState.loaded(List<(AddressType, FavoriteLocationEntity?)> data) = _Loaded;
  const factory FavoriteLocationsState.error(String message) = _Error;
}
