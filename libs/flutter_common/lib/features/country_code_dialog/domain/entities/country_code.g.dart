// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryCodeImpl _$$CountryCodeImplFromJson(Map<String, dynamic> json) =>
    _$CountryCodeImpl(
      e164CC: json['e164CC'] as String,
      iso2CC: json['iso2CC'] as String,
      e164SC: json['e164SC'] as int,
      geographic: json['geographic'] as bool,
      level: json['level'] as int,
      name: json['name'] as String,
      example: json['example'] as String,
      displayName: json['displayName'] as String,
      fullExampleWithPlusSign: json['fullExampleWithPlusSign'] as String?,
      displayNameNoE164CC: json['displayNameNoE164CC'] as String,
      e164Key: json['e164Key'] as String,
    );

Map<String, dynamic> _$$CountryCodeImplToJson(_$CountryCodeImpl instance) =>
    <String, dynamic>{
      'e164CC': instance.e164CC,
      'iso2CC': instance.iso2CC,
      'e164SC': instance.e164SC,
      'geographic': instance.geographic,
      'level': instance.level,
      'name': instance.name,
      'example': instance.example,
      'displayName': instance.displayName,
      'fullExampleWithPlusSign': instance.fullExampleWithPlusSign,
      'displayNameNoE164CC': instance.displayNameNoE164CC,
      'e164Key': instance.e164Key,
    };
