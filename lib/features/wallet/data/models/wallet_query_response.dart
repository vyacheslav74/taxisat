import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';
import 'package:collection/collection.dart';

import '../../domain/entities/transaction.dart';

part 'wallet_query_response.freezed.dart';

@freezed
class WalletQueryResponse with _$WalletQueryResponse {
  const factory WalletQueryResponse({
    required String? firstName,
    required String? lastName,
    required String currency,
    required double balance,
    required List<WalletTransactionEntity> transactions,
    required List<PaymentGatewayEntity> paymentGateways,
    required List<SavedPaymentMethodEntity> savedPaymentMethods,
  }) = _WalletQueryResponse;
}

extension WalletQueryDTOX on WalletQueryResponse {
  String get fullName => '$firstName $lastName';
  String get formattedBalance => NumberFormat.simpleCurrency(name: currency).format(balance);

  String? defaultPaymentMethod(BuildContext context) =>
      savedPaymentMethods.firstWhereOrNull((e) => e.isDefault)?.cardType.name;
}
