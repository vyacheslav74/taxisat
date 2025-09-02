part of 'location.dart';

@Freezed(fromJson: true)
class LocationState with _$LocationState {
  const factory LocationState.loading() = LocationStateLoading;

  const factory LocationState.error({
    required LocationError error,
  }) = _Error;

  const factory LocationState.determined({
    required PlaceEntity place,
  }) = LocationStateDetermined;

  factory LocationState.fromJson(Map<String, dynamic> json) => _$LocationStateFromJson(json);

  const LocationState._();

  PlaceEntity? get place => mapOrNull(determined: (determined) => determined.place);

  String? distanceTo(LatLng other, BuildContext context) {
    final distance = place?.coordinates.latLng.distanceTo(other, context);
    return distance;
  }
}

enum LocationError { permissionDenied, serviceDisabled, unknown }
