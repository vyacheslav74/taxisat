// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavedPaymentMethodEntityImpl _$$SavedPaymentMethodEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedPaymentMethodEntityImpl(
      id: json['id'] as String,
      cardType: $enumDecode(_$CardTypeEnumMap, json['cardType']),
      last4Digits: json['last4Digits'] as String,
      cardHolderName: json['cardHolderName'] as String?,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      isDefault: json['isDefault'] as bool,
      isEnabled: json['isEnabled'] as bool,
    );

Map<String, dynamic> _$$SavedPaymentMethodEntityImplToJson(
        _$SavedPaymentMethodEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardType': _$CardTypeEnumMap[instance.cardType]!,
      'last4Digits': instance.last4Digits,
      'cardHolderName': instance.cardHolderName,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'isDefault': instance.isDefault,
      'isEnabled': instance.isEnabled,
    };

const _$CardTypeEnumMap = {
  CardType.visa: 'visa',
  CardType.mastercard: 'mastercard',
  CardType.amex: 'amex',
  CardType.discover: 'discover',
  CardType.jcb: 'jcb',
  CardType.diners: 'diners',
  CardType.maestro: 'maestro',
  CardType.unionpay: 'unionpay',
  CardType.elo: 'elo',
  CardType.hipercard: 'hipercard',
  CardType.hiper: 'hiper',
  CardType.unknown: 'unknown',
};
