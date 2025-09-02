// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentGatewayImpl _$$PaymentGatewayImplFromJson(Map<String, dynamic> json) =>
    _$PaymentGatewayImpl(
      paymentGateway: PaymentGatewayEntity.fromJson(
          json['paymentGateway'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaymentGatewayImplToJson(
        _$PaymentGatewayImpl instance) =>
    <String, dynamic>{
      'paymentGateway': instance.paymentGateway,
      'runtimeType': instance.$type,
    };

_$SavedPaymentMethodImpl _$$SavedPaymentMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedPaymentMethodImpl(
      savedPaymentMethod: SavedPaymentMethodEntity.fromJson(
          json['savedPaymentMethod'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SavedPaymentMethodImplToJson(
        _$SavedPaymentMethodImpl instance) =>
    <String, dynamic>{
      'savedPaymentMethod': instance.savedPaymentMethod,
      'runtimeType': instance.$type,
    };

_$CashImpl _$$CashImplFromJson(Map<String, dynamic> json) => _$CashImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CashImplToJson(_$CashImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WalletImpl _$$WalletImplFromJson(Map<String, dynamic> json) => _$WalletImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WalletImplToJson(_$WalletImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
