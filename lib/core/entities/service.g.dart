// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceEntityImpl _$$ServiceEntityImplFromJson(Map<String, dynamic> json) =>
    _$ServiceEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String,
      capacity: json['capacity'] as int?,
      price: (json['price'] as num).toDouble(),
      priceAfterCouponApplied:
          (json['priceAfterCouponApplied'] as num?)?.toDouble(),
      rideOptions: (json['rideOptions'] as List<dynamic>)
          .map((e) => RideOptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      isCashAllowed: json['isCashAllowed'] as bool,
      isOnlinePaymentAllowed: json['isOnlinePaymentAllowed'] as bool,
    );

Map<String, dynamic> _$$ServiceEntityImplToJson(_$ServiceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'capacity': instance.capacity,
      'price': instance.price,
      'priceAfterCouponApplied': instance.priceAfterCouponApplied,
      'rideOptions': instance.rideOptions,
      'isCashAllowed': instance.isCashAllowed,
      'isOnlinePaymentAllowed': instance.isOnlinePaymentAllowed,
    };
