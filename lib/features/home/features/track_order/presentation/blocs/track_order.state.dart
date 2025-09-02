part of 'track_order.dart';

@freezed
class TrackOrderState with _$TrackOrderState {
  const factory TrackOrderState.initial() = _Initial;

  const factory TrackOrderState.orderInProgres({
    required OrderEntity order,
    required DriverLocation? driverLocation,
    required TrackOrderPage page,
    String? error,
  }) = _OrderInProgress;

  const factory TrackOrderState.done() = _Done;

  factory TrackOrderState.fromJson(Map<String, dynamic> json) => _$TrackOrderStateFromJson(json);

  const TrackOrderState._();

  String? get error => mapOrNull(
        orderInProgres: (value) => value.error,
      );
}
