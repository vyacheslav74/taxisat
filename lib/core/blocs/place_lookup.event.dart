part of 'place_lookup.dart';

@freezed
class PlaceLookupEvent with _$PlaceLookupEvent {
  const factory PlaceLookupEvent.onStarted() = _OnStarted;
  const factory PlaceLookupEvent.onQueryChanged({
    required String? query,
    required LatLng? latLng,
    required int radius,
    required String language,
    required MapProviderEnum mapProvider,
  }) = _OnQueryChanged;
}
