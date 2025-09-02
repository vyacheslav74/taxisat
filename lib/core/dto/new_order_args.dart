import 'package:flutter_common/core/entities/ride_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';

part 'new_order_args.freezed.dart';
part 'new_order_args.g.dart';

@freezed
class NewOrderArgs with _$NewOrderArgs {
  const factory NewOrderArgs({
    required List<PlaceEntity> waypoints,
    required String? couponCode,
    required bool isTwoWay,
    required int waitTime,
    required List<RideOptionEntity> rideOptions,
    required PaymentMethodUnion paymentMethod,
    required DateTime? dateTime,
    required String? serviceId,
  }) = _NewOrderArgs;

  factory NewOrderArgs.fromJson(Map<String, dynamic> json) => _$NewOrderArgsFromJson(json);
}
