part of 'favorite_drivers.dart';

@freezed
class FavoriteDriversState with _$FavoriteDriversState {
  const factory FavoriteDriversState.initial() = _Initial;

  const factory FavoriteDriversState.loading() = _Loading;

  const factory FavoriteDriversState.empty() = _Empty;

  const factory FavoriteDriversState.loaded({
    required List<FavoriteDriverEntity> drivers,
  }) = _Loaded;

  const factory FavoriteDriversState.error({
    required String message,
  }) = _Error;
}
