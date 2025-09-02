import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ionicons/ionicons.dart';

import '../enums/payment_mode.dart';
import 'payment_gateway.dart';
import 'saved_payment_method.dart';

part 'payment_method_union.freezed.dart';
part 'payment_method_union.g.dart';

@Freezed(fromJson: true)
class PaymentMethodUnion with _$PaymentMethodUnion {
  const factory PaymentMethodUnion.paymentGateway({
    required PaymentGatewayEntity paymentGateway,
  }) = _PaymentGateway;

  const factory PaymentMethodUnion.savedPaymentMethod({
    required SavedPaymentMethodEntity savedPaymentMethod,
  }) = _SavedPaymentMethod;

  const factory PaymentMethodUnion.cash() = _Cash;

  const factory PaymentMethodUnion.wallet() = _Wallet;

  factory PaymentMethodUnion.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodUnionFromJson(json);
}

extension PaymentMethodUnionX on PaymentMethodUnion {
  Widget icon({
    Color? color,
  }) {
    return map(paymentGateway: (paymentGateway) {
      return paymentGateway.paymentGateway.logoUrl != null
          ? CachedNetworkImage(
              imageUrl: paymentGateway.paymentGateway.logoUrl!,
              width: 24,
              height: 24,
            )
          : const SizedBox();
    }, savedPaymentMethod: (savedPaymentMethod) {
      return Icon(
        Ionicons.card,
        size: 24,
        color: color,
      );
    }, cash: (_) {
      return Icon(
        Ionicons.cash,
        size: 24,
        color: color,
      );
    }, wallet: (wallet) {
      return Icon(
        Ionicons.wallet,
        size: 24,
        color: color,
      );
    });
  }

  String name(BuildContext context) {
    return map(
      paymentGateway: (paymentGateway) => paymentGateway.paymentGateway.name,
      savedPaymentMethod: (savedPaymentMethod) =>
          '**** **** **** ${savedPaymentMethod.savedPaymentMethod.last4Digits}',
      cash: (_) => context.t.cash,
      wallet: (_) => context.t.wallet,
    );
  }

  PaymentMode get paymentMode {
    return map(
      paymentGateway: (_) => PaymentMode.paymentGateway,
      savedPaymentMethod: (_) => PaymentMode.savedPaymentMethod,
      cash: (_) => PaymentMode.cash,
      wallet: (_) => PaymentMode.wallet,
    );
  }

  String? get id {
    return mapOrNull(
      savedPaymentMethod: (saved) => saved.savedPaymentMethod.id,
      paymentGateway: (gateway) => gateway.paymentGateway.id,
    );
  }
}

extension PaymentMethodRecordX on (
  List<PaymentGatewayEntity>,
  List<SavedPaymentMethodEntity>
) {
  List<PaymentMethodUnion> get toPaymentMethodUnion {
    final list = [
      ...this.$1.toPaymentMethodUnion,
      ...this.$2.toPaymentMethodUnion,
    ];
    return list;
  }
}

extension PaymentMethodBuilderX on (
  PaymentMode?,
  PaymentGatewayEntity?,
  SavedPaymentMethodEntity?
) {
  PaymentMethodUnion get toUnion {
    switch ($1) {
      case PaymentMode.paymentGateway:
        return PaymentMethodUnion.paymentGateway(paymentGateway: $2!);
      case PaymentMode.savedPaymentMethod:
        return PaymentMethodUnion.savedPaymentMethod(savedPaymentMethod: $3!);
      case PaymentMode.cash:
        return const PaymentMethodUnion.cash();
      case PaymentMode.wallet:
        return const PaymentMethodUnion.wallet();
      case null:
        if ($2 != null) {
          return PaymentMethodUnion.paymentGateway(paymentGateway: $2!);
        }
        if ($3 != null) {
          return PaymentMethodUnion.savedPaymentMethod(savedPaymentMethod: $3!);
        }
        return const PaymentMethodUnion.cash();
    }
  }
}
