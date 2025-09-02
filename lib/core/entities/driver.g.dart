// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverEntityImpl _$$DriverEntityImplFromJson(Map<String, dynamic> json) =>
    _$DriverEntityImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      mobileNumber: json['mobileNumber'] as String,
      imageUrl: json['imageUrl'] as String?,
      vehiclePlateNumber: json['vehiclePlateNumber'] as String?,
      vehicleModel: json['vehicleModel'] as String?,
      vehicleColor: json['vehicleColor'] as String?,
      rating: json['rating'] as int?,
      ratingCount: json['ratingCount'] as int,
    );

Map<String, dynamic> _$$DriverEntityImplToJson(_$DriverEntityImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'mobileNumber': instance.mobileNumber,
      'imageUrl': instance.imageUrl,
      'vehiclePlateNumber': instance.vehiclePlateNumber,
      'vehicleModel': instance.vehicleModel,
      'vehicleColor': instance.vehicleColor,
      'rating': instance.rating,
      'ratingCount': instance.ratingCount,
    };
