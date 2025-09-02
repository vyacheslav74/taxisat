// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intent_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessImpl _$$SuccessImplFromJson(Map<String, dynamic> json) =>
    _$SuccessImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SuccessImplToJson(_$SuccessImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$FailureImpl _$$FailureImplFromJson(Map<String, dynamic> json) =>
    _$FailureImpl(
      errorMessage: json['errorMessage'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FailureImplToJson(_$FailureImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'runtimeType': instance.$type,
    };

_$RedirectImpl _$$RedirectImplFromJson(Map<String, dynamic> json) =>
    _$RedirectImpl(
      url: json['url'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RedirectImplToJson(_$RedirectImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'runtimeType': instance.$type,
    };
