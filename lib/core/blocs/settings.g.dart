// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsStateImpl _$$SettingsStateImplFromJson(Map<String, dynamic> json) =>
    _$SettingsStateImpl(
      locale: json['locale'] as String,
      mapProvider:
          $enumDecodeNullable(_$MapProviderEnumEnumMap, json['mapProvider']),
    );

Map<String, dynamic> _$$SettingsStateImplToJson(_$SettingsStateImpl instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'mapProvider': _$MapProviderEnumEnumMap[instance.mapProvider],
    };

const _$MapProviderEnumEnumMap = {
  MapProviderEnum.googleMaps: 'googleMaps',
  MapProviderEnum.openStreetMaps: 'openStreetMaps',
  MapProviderEnum.mapBox: 'mapBox',
};
