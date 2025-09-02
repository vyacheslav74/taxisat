// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationStateLoadingImpl _$$LocationStateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationStateLoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationStateLoadingImplToJson(
        _$LocationStateLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      error: $enumDecode(_$LocationErrorEnumMap, json['error']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'error': _$LocationErrorEnumMap[instance.error]!,
      'runtimeType': instance.$type,
    };

const _$LocationErrorEnumMap = {
  LocationError.permissionDenied: 'permissionDenied',
  LocationError.serviceDisabled: 'serviceDisabled',
  LocationError.unknown: 'unknown',
};

_$LocationStateDeterminedImpl _$$LocationStateDeterminedImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationStateDeterminedImpl(
      place: PlaceEntity.fromJson(json['place'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocationStateDeterminedImplToJson(
        _$LocationStateDeterminedImpl instance) =>
    <String, dynamic>{
      'place': instance.place,
      'runtimeType': instance.$type,
    };
