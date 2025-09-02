import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
// import 'package:phosphor_flutter/phosphor_flutter.dart';

enum WalletRechargeTransactionType { bankTransfer, gift, correction, inAppPayment }

extension WalletRechargeTransactionTypeX on WalletRechargeTransactionType {
  IconData get icon {
    switch (this) {
      case WalletRechargeTransactionType.bankTransfer:
        return Ionicons.business;
      case WalletRechargeTransactionType.gift:
        return Ionicons.gift;
      case WalletRechargeTransactionType.correction:
        return Ionicons.information;
      case WalletRechargeTransactionType.inAppPayment:
        return Ionicons.card;
    }
  }

  String getTitle(BuildContext context) {
    switch (this) {
      case WalletRechargeTransactionType.bankTransfer:
        return context.translate.bankTransfer;
      case WalletRechargeTransactionType.gift:
        return context.translate.gift;
      case WalletRechargeTransactionType.correction:
        return context.translate.correction;
      case WalletRechargeTransactionType.inAppPayment:
        return context.translate.inappPayment;
    }
  }
}
