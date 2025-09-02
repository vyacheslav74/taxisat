part of 'order_preview_args.dart';

@freezed
class OrderPreviewArgsState with _$OrderPreviewArgsState {
  const factory OrderPreviewArgsState({
    required List<PlaceEntity> waypoints,
    required String? couponCode,
    required bool isTwoWay,
    required int? waitTime,
    required List<RideOptionEntity> rideOptions,
  }) = _OrderPreviewArgsState;

  factory OrderPreviewArgsState.initial() => const OrderPreviewArgsState(
        waypoints: [],
        couponCode: null,
        isTwoWay: false,
        waitTime: null,
        rideOptions: [],
      );

  const OrderPreviewArgsState._();

  CalculateFareArgs get calculateFareArgs => CalculateFareArgs(
        waypoints: waypoints,
        couponCode: couponCode,
        isTwoWay: isTwoWay,
        waitTime: waitTime,
        rideOptions: rideOptions,
      );
}
