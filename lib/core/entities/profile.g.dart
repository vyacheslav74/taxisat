// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileEntityImpl _$$ProfileEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProfileEntityImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      countryCode: json['countryCode'] as String?,
      email: json['email'] as String?,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      profileImage: json['profileImage'] == null
          ? null
          : MediaEntity.fromJson(json['profileImage'] as Map<String, dynamic>),
      presetProfileImage: json['presetProfileImage'] as int?,
      number: json['number'] as String,
    );

Map<String, dynamic> _$$ProfileEntityImplToJson(_$ProfileEntityImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'countryCode': instance.countryCode,
      'email': instance.email,
      'gender': _$GenderEnumMap[instance.gender],
      'profileImage': instance.profileImage,
      'presetProfileImage': instance.presetProfileImage,
      'number': instance.number,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.unknown: 'unknown',
};
