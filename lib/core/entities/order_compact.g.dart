// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_compact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryEntityImpl _$$OrderHistoryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHistoryEntityImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expectedAt: DateTime.parse(json['expectedAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      waitTime: json['waitTime'] as int,
      isTwoWayTrip: json['isTwoWayTrip'] as bool,
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      rideOptions: (json['rideOptions'] as List<dynamic>)
          .map((e) => RideOptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      fee: (json['fee'] as num).toDouble(),
      currency: json['currency'] as String,
      paymentMethodUnion: PaymentMethodUnion.fromJson(
          json['paymentMethodUnion'] as Map<String, dynamic>),
      serviceName: json['serviceName'] as String,
      serviceDescription: json['serviceDescription'] as String?,
      serviceImageUrl: json['serviceImageUrl'] as String?,
      distanceBest: json['distanceBest'] as int,
      durationBest: json['durationBest'] as int,
      driver: json['driver'] == null
          ? null
          : DriverEntity.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderHistoryEntityImplToJson(
        _$OrderHistoryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'expectedAt': instance.expectedAt.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'waitTime': instance.waitTime,
      'isTwoWayTrip': instance.isTwoWayTrip,
      'waypoints': instance.waypoints,
      'rideOptions': instance.rideOptions,
      'fee': instance.fee,
      'currency': instance.currency,
      'paymentMethodUnion': instance.paymentMethodUnion,
      'serviceName': instance.serviceName,
      'serviceDescription': instance.serviceDescription,
      'serviceImageUrl': instance.serviceImageUrl,
      'distanceBest': instance.distanceBest,
      'durationBest': instance.durationBest,
      'driver': instance.driver,
    };
