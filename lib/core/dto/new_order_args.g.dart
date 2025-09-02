// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_order_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewOrderArgsImpl _$$NewOrderArgsImplFromJson(Map<String, dynamic> json) =>
    _$NewOrderArgsImpl(
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      couponCode: json['couponCode'] as String?,
      isTwoWay: json['isTwoWay'] as bool,
      waitTime: json['waitTime'] as int,
      rideOptions: (json['rideOptions'] as List<dynamic>)
          .map((e) => RideOptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentMethod: PaymentMethodUnion.fromJson(
          json['paymentMethod'] as Map<String, dynamic>),
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      serviceId: json['serviceId'] as String?,
    );

Map<String, dynamic> _$$NewOrderArgsImplToJson(_$NewOrderArgsImpl instance) =>
    <String, dynamic>{
      'waypoints': instance.waypoints,
      'couponCode': instance.couponCode,
      'isTwoWay': instance.isTwoWay,
      'waitTime': instance.waitTime,
      'rideOptions': instance.rideOptions,
      'paymentMethod': instance.paymentMethod,
      'dateTime': instance.dateTime?.toIso8601String(),
      'serviceId': instance.serviceId,
    };
