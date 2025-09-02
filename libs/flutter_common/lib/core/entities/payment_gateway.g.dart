// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_gateway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentGatewayEntityImpl _$$PaymentGatewayEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentGatewayEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      logoUrl: json['logoUrl'] as String?,
      linkMethod: $enumDecode(_$GatewayLinkMethodEnumMap, json['linkMethod']),
    );

Map<String, dynamic> _$$PaymentGatewayEntityImplToJson(
        _$PaymentGatewayEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoUrl': instance.logoUrl,
      'linkMethod': _$GatewayLinkMethodEnumMap[instance.linkMethod]!,
    };

const _$GatewayLinkMethodEnumMap = {
  GatewayLinkMethod.none: 'none',
  GatewayLinkMethod.redirect: 'redirect',
  GatewayLinkMethod.manual: 'manual',
};
