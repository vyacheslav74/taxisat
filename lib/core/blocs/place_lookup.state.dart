part of 'place_lookup.dart';

@freezed
class PlaceLookupState with _$PlaceLookupState {
  const factory PlaceLookupState.initial() = _Initial;
  const factory PlaceLookupState.loading() = _Loading;
  const factory PlaceLookupState.noResults() = _NoResults;
  const factory PlaceLookupState.moreCharacters() = _MoreCharacters;
  const factory PlaceLookupState.loaded({
    required List<PlaceEntity> places,
  }) = _Loaded;
  const factory PlaceLookupState.error(String message) = _Error;
}
