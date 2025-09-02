import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rider_flutter/core/entities/driver.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/enums/order_status.dart';

import 'package:flutter_common/features/chat/chat.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    required String id,
    required OrderStatus status,
    required List<PlaceEntity> waypoints,
    required int? arrivedAtWaypointIndex,
    required List<LatLngEntity> rideDirections,
    required List<LatLngEntity> driverDirections,
    required DriverEntity? driver,
    required String serviceName,
    required String serviceImageUrl,
    required double cancellationFee,
    required double cost,
    required double costAfterCoupon,
    required String currency,
    required int distance,
    required int duration,
    required int waitTime,
    required DateTime? etaPickup,
    required DateTime createdAt,
    required DateTime expectedAt,
    required DateTime? startedAt,
    required DateTime lastSeenMessagesAt,
    required PaymentMethodUnion? paymentMethod,
    required List<ChatMessageEntity> chatMessages,
    required double walletCredit,
    required bool cashPaymentAllowed,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) => _$OrderEntityFromJson(json);

  const OrderEntity._();

  bool get isWalletCreditSufficient => walletCredit > costAfterCoupon;

  double get couponDiscount => cost - costAfterCoupon;

  double get total => costAfterCoupon - walletCredit;
}
