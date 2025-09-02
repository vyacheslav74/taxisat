// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceEntityImpl _$$PlaceEntityImplFromJson(Map<String, dynamic> json) =>
    _$PlaceEntityImpl(
      coordinates:
          LatLngEntity.fromJson(json['coordinates'] as Map<String, dynamic>),
      address: json['address'] as String,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$PlaceEntityImplToJson(_$PlaceEntityImpl instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
      'address': instance.address,
      'title': instance.title,
    };

_$LatLngEntityImpl _$$LatLngEntityImplFromJson(Map<String, dynamic> json) =>
    _$LatLngEntityImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$LatLngEntityImplToJson(_$LatLngEntityImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
