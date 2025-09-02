// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_fare_args.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculateFareArgsImpl _$$CalculateFareArgsImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculateFareArgsImpl(
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      couponCode: json['couponCode'] as String?,
      isTwoWay: json['isTwoWay'] as bool,
      waitTime: json['waitTime'] as int?,
      rideOptions: (json['rideOptions'] as List<dynamic>)
          .map((e) => RideOptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CalculateFareArgsImplToJson(
        _$CalculateFareArgsImpl instance) =>
    <String, dynamic>{
      'waypoints': instance.waypoints,
      'couponCode': instance.couponCode,
      'isTwoWay': instance.isTwoWay,
      'waitTime': instance.waitTime,
      'rideOptions': instance.rideOptions,
    };
