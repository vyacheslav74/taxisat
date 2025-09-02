part of 'destination_suggestions.dart';

@freezed
class DestinationSuggestionsState with _$DestinationSuggestionsState {
  const factory DestinationSuggestionsState.initial() = _Initial;

  const factory DestinationSuggestionsState.loading() = _Loading;

  const factory DestinationSuggestionsState.loaded({
    required List<FavoriteLocationEntity> favorites,
    required List<PlaceEntity> recents,
  }) = _Loaded;

  const factory DestinationSuggestionsState.error(String message) = _Error;
}
