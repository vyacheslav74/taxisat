import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rider_flutter/core/entities/driver.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/entities/ride_option.dart';

part 'order_compact.freezed.dart';
part 'order_compact.g.dart';

@freezed
class OrderCompactEntity with _$OrderCompactEntity {
  const factory OrderCompactEntity({
    required String id,
    required DateTime createdAt,
    required DateTime expectedAt,
    required DateTime? startedAt,
    required DateTime? endedAt,
    required int waitTime,
    required bool isTwoWayTrip,
    required List<PlaceEntity> waypoints,
    required List<RideOptionEntity> rideOptions,
    required double fee,
    required String currency,
    required PaymentMethodUnion paymentMethodUnion,
    required String serviceName,
    required String? serviceDescription,
    required String? serviceImageUrl,
    required int distanceBest,
    required int durationBest,
    required DriverEntity? driver,
  }) = _OrderHistoryEntity;

  factory OrderCompactEntity.fromJson(Map<String, dynamic> json) => _$OrderCompactEntityFromJson(json);
}
