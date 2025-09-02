import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/entities/ride_option.dart';

part 'service.freezed.dart';
part 'service.g.dart';

@Freezed(fromJson: true)
class ServiceEntity with _$ServiceEntity {
  const factory ServiceEntity({
    required String id,
    required String name,
    required String? description,
    required String imageUrl,
    required int? capacity,
    required double price,
    required double? priceAfterCouponApplied,
    required List<RideOptionEntity> rideOptions,
    required bool isCashAllowed,
    required bool isOnlinePaymentAllowed,
  }) = _ServiceEntity;

  factory ServiceEntity.fromJson(Map<String, dynamic> json) => _$ServiceEntityFromJson(json);
}
