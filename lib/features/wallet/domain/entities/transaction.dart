import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

import '../enums/deduct_transaction_type.dart';
import '../enums/recharge_transaction_type.dart';

part 'transaction.freezed.dart';

@freezed
class WalletTransactionEntity with _$WalletTransactionEntity {
  const factory WalletTransactionEntity({
    required String id,
    required DateTime dateTime,
    required String currency,
    required double amount,
    required WalletRechargeTransactionType? rechargeTransactionType,
    required WalletDeductTransactionType? deductTransactionType,
  }) = _WalletTransactionEntity;
}

extension WalletTransactionEntityX on WalletTransactionEntity {
  String get formattedPrice => NumberFormat.simpleCurrency(name: currency).format(amount);
  String get formattedDatetime => dateTime.formatDateTime;
  String get formattedTime => dateTime.formatTime;
  IconData get icon => deductTransactionType?.icon ?? rechargeTransactionType!.icon;
  String title(BuildContext context) =>
      deductTransactionType?.getTitle(context) ?? rechargeTransactionType!.getTitle(context);
}
