// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverLocationImpl _$$DriverLocationImplFromJson(Map<String, dynamic> json) =>
    _$DriverLocationImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      rotation: json['rotation'] as int?,
    
    );

Map<String, dynamic> _$$DriverLocationImplToJson(
        _$DriverLocationImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'rotation': instance.rotation,
     
    };
