// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: json['id'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      arrivedAtWaypointIndex: json['arrivedAtWaypointIndex'] as int?,
      rideDirections: (json['rideDirections'] as List<dynamic>)
          .map((e) => LatLngEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      driverDirections: (json['driverDirections'] as List<dynamic>)
          .map((e) => LatLngEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      driver: json['driver'] == null
          ? null
          : DriverEntity.fromJson(json['driver'] as Map<String, dynamic>),
      serviceName: json['serviceName'] as String,
      serviceImageUrl: json['serviceImageUrl'] as String,
      cancellationFee: (json['cancellationFee'] as num).toDouble(),
      cost: (json['cost'] as num).toDouble(),
      costAfterCoupon: (json['costAfterCoupon'] as num).toDouble(),
      currency: json['currency'] as String,
      distance: json['distance'] as int,
      duration: json['duration'] as int,
      waitTime: json['waitTime'] as int,
      etaPickup: json['etaPickup'] == null
          ? null
          : DateTime.parse(json['etaPickup'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expectedAt: DateTime.parse(json['expectedAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      lastSeenMessagesAt: DateTime.parse(json['lastSeenMessagesAt'] as String),
      paymentMethod: json['paymentMethod'] == null
          ? null
          : PaymentMethodUnion.fromJson(
              json['paymentMethod'] as Map<String, dynamic>),
      chatMessages: (json['chatMessages'] as List<dynamic>)
          .map((e) => ChatMessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      walletCredit: (json['walletCredit'] as num).toDouble(),
      cashPaymentAllowed: json['cashPaymentAllowed'] as bool,
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'waypoints': instance.waypoints,
      'arrivedAtWaypointIndex': instance.arrivedAtWaypointIndex,
      'rideDirections': instance.rideDirections,
      'driverDirections': instance.driverDirections,
      'driver': instance.driver,
      'serviceName': instance.serviceName,
      'serviceImageUrl': instance.serviceImageUrl,
      'cancellationFee': instance.cancellationFee,
      'cost': instance.cost,
      'costAfterCoupon': instance.costAfterCoupon,
      'currency': instance.currency,
      'distance': instance.distance,
      'duration': instance.duration,
      'waitTime': instance.waitTime,
      'etaPickup': instance.etaPickup?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'expectedAt': instance.expectedAt.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'lastSeenMessagesAt': instance.lastSeenMessagesAt.toIso8601String(),
      'paymentMethod': instance.paymentMethod,
      'chatMessages': instance.chatMessages,
      'walletCredit': instance.walletCredit,
      'cashPaymentAllowed': instance.cashPaymentAllowed,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.requested: 'requested',
  OrderStatus.notFound: 'notFound',
  OrderStatus.noCloseFound: 'noCloseFound',
  OrderStatus.found: 'found',
  OrderStatus.driverAccepted: 'driverAccepted',
  OrderStatus.arrived: 'arrived',
  OrderStatus.waitingForPrePay: 'waitingForPrePay',
  OrderStatus.driverCanceled: 'driverCanceled',
  OrderStatus.riderCanceled: 'riderCanceled',
  OrderStatus.started: 'started',
  OrderStatus.waitingForPostPay: 'waitingForPostPay',
  OrderStatus.waitingForReview: 'waitingForReview',
  OrderStatus.finished: 'finished',
  OrderStatus.booked: 'booked',
  OrderStatus.expired: 'expired',
};
