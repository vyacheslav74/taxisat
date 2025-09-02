part of 'home.dart';

@Freezed(fromJson: true)
sealed class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;

  const factory HomeState.welcome({
    required List<PlaceEntity?> waypoints,
    required List<DriverLocation> driversAround,
  }) = WelcomeState;

  const factory HomeState.inputWaypoints({
    required List<PlaceEntity?> waypoints,
  }) = InputWaypointsState;

  const factory HomeState.confirmLocation({
    required List<PlaceEntity?> waypoints,
    required int index,
    required PlaceEntity selectedLocation,
  }) = ConfirmLocationState;

  const factory HomeState.ridePreview({
    required List<PlaceEntity> waypoints,
    @Default([]) List<LatLngEntity> directions,
  }) = RidePreviewState;

  const factory HomeState.rideInProgress({
    required OrderEntity order,
    required DriverLocation? driverLocation,
  }) = RideInProgressState;

  const factory HomeState.rateDriver({
    required OrderEntity order,
  }) = RateDriverState;

  const factory HomeState.error({
    required String error,
  }) = _Error;

  factory HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);

  const HomeState._();

  List<PlaceEntity?> get waypoints => maybeMap(
        orElse: () => [null, null],
        ridePreview: (value) => value.waypoints,
        inputWaypoints: (value) => value.waypoints,
        confirmLocation: (value) => value.waypoints,
        welcome: (value) => value.waypoints,
        rideInProgress: (value) => value.order.waypoints,
        rateDriver: (value) => value.order.waypoints,
      );
}

enum ErrorType {
  regionNotSupported,
  noInternet,
  unknown,
}
