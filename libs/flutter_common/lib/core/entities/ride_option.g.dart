// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RideOptionEntityImpl _$$RideOptionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RideOptionEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: $enumDecode(_$RideOptionIconEnumMap, json['icon']),
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RideOptionEntityImplToJson(
        _$RideOptionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': _$RideOptionIconEnumMap[instance.icon]!,
      'description': instance.description,
      'price': instance.price,
    };

const _$RideOptionIconEnumMap = {
  RideOptionIcon.pet: 'pet',
  RideOptionIcon.twoWay: 'twoWay',
  RideOptionIcon.luggage: 'luggage',
  RideOptionIcon.packageDelivery: 'packageDelivery',
  RideOptionIcon.shopping: 'shopping',
  RideOptionIcon.custom1: 'custom1',
  RideOptionIcon.custom2: 'custom2',
  RideOptionIcon.custom3: 'custom3',
  RideOptionIcon.custom4: 'custom4',
  RideOptionIcon.custom5: 'custom5',
};
