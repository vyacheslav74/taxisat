// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitialImpl _$$InitialImplFromJson(Map<String, dynamic> json) =>
    _$InitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialImplToJson(_$InitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OrderInProgressImpl _$$OrderInProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderInProgressImpl(
      order: OrderEntity.fromJson(json['order'] as Map<String, dynamic>),
      driverLocation: json['driverLocation'] == null
          ? null
          : DriverLocation.fromJson(
              json['driverLocation'] as Map<String, dynamic>),
      page: TrackOrderPage.fromJson(json['page'] as Map<String, dynamic>),
      error: json['error'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OrderInProgressImplToJson(
        _$OrderInProgressImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'driverLocation': instance.driverLocation,
      'page': instance.page,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$DoneImpl _$$DoneImplFromJson(Map<String, dynamic> json) => _$DoneImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DoneImplToJson(_$DoneImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OverviewImpl _$$OverviewImplFromJson(Map<String, dynamic> json) =>
    _$OverviewImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OverviewImplToJson(_$OverviewImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
