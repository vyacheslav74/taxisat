part of 'track_order.dart';

@freezed
class TrackOrderEvent with _$TrackOrderEvent {
  const factory TrackOrderEvent.onStarted({
    required OrderEntity order,
    required DriverLocation? driverLocation,
  }) = _OnStarted;

  const factory TrackOrderEvent.cancelRide({
    required String? cancelReasonId,
    required String? cancelReasonNote,
  }) = _CancelRide;

  const factory TrackOrderEvent.messageSent({
    required ChatMessageEntity message,
  }) = _SendMessage;

  const factory TrackOrderEvent.changePage(TrackOrderPage page) = _ChangePage;

  const factory TrackOrderEvent.hideChat() = _HideChat;

  const TrackOrderEvent._();
}
