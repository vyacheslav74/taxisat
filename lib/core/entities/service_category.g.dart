// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceCategoryEntityImpl _$$ServiceCategoryEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceCategoryEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServiceCategoryEntityImplToJson(
        _$ServiceCategoryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'services': instance.services,
    };
