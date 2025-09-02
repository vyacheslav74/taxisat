// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletEntityImpl _$$WalletEntityImplFromJson(Map<String, dynamic> json) =>
    _$WalletEntityImpl(
      balance: (json['balance'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$WalletEntityImplToJson(_$WalletEntityImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'currency': instance.currency,
    };
