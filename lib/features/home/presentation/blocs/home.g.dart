// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoadingImpl _$$LoadingImplFromJson(Map<String, dynamic> json) =>
    _$LoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingImplToJson(_$LoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WelcomeStateImpl _$$WelcomeStateImplFromJson(Map<String, dynamic> json) =>
    _$WelcomeStateImpl(
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      driversAround: (json['driversAround'] as List<dynamic>)
          .map((e) => DriverLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WelcomeStateImplToJson(_$WelcomeStateImpl instance) =>
    <String, dynamic>{
      'waypoints': instance.waypoints,
      'driversAround': instance.driversAround,
      'runtimeType': instance.$type,
    };

_$InputWaypointsStateImpl _$$InputWaypointsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$InputWaypointsStateImpl(
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InputWaypointsStateImplToJson(
        _$InputWaypointsStateImpl instance) =>
    <String, dynamic>{
      'waypoints': instance.waypoints,
      'runtimeType': instance.$type,
    };

_$ConfirmLocationStateImpl _$$ConfirmLocationStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ConfirmLocationStateImpl(
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      index: json['index'] as int,
      selectedLocation: PlaceEntity.fromJson(
          json['selectedLocation'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConfirmLocationStateImplToJson(
        _$ConfirmLocationStateImpl instance) =>
    <String, dynamic>{
      'waypoints': instance.waypoints,
      'index': instance.index,
      'selectedLocation': instance.selectedLocation,
      'runtimeType': instance.$type,
    };

_$RidePreviewStateImpl _$$RidePreviewStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RidePreviewStateImpl(
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      directions: (json['directions'] as List<dynamic>?)
              ?.map((e) => LatLngEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RidePreviewStateImplToJson(
        _$RidePreviewStateImpl instance) =>
    <String, dynamic>{
      'waypoints': instance.waypoints,
      'directions': instance.directions,
      'runtimeType': instance.$type,
    };

_$RideInProgressStateImpl _$$RideInProgressStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RideInProgressStateImpl(
      order: OrderEntity.fromJson(json['order'] as Map<String, dynamic>),
      driverLocation: json['driverLocation'] == null
          ? null
          : DriverLocation.fromJson(
              json['driverLocation'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RideInProgressStateImplToJson(
        _$RideInProgressStateImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'driverLocation': instance.driverLocation,
      'runtimeType': instance.$type,
    };

_$RateDriverStateImpl _$$RateDriverStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RateDriverStateImpl(
      order: OrderEntity.fromJson(json['order'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RateDriverStateImplToJson(
        _$RateDriverStateImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      error: json['error'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
