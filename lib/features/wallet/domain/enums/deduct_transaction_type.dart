import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

enum WalletDeductTransactionType { orderFee, parkingFee, cancellationFee, withdraw, correction }

extension WalletDeductTransactionTypeX on WalletDeductTransactionType {
  IconData get icon {
    switch (this) {
      case WalletDeductTransactionType.orderFee:
        return Ionicons.car;
      case WalletDeductTransactionType.parkingFee:
        return Ionicons.car;
      case WalletDeductTransactionType.cancellationFee:
        return Ionicons.close;
      case WalletDeductTransactionType.withdraw:
        return Ionicons.cash;
      case WalletDeductTransactionType.correction:
        return Ionicons.information;
    }
  }

  String getTitle(BuildContext context) {
    switch (this) {
      case WalletDeductTransactionType.orderFee:
        return context.translate.orderFee;
      case WalletDeductTransactionType.parkingFee:
        return context.translate.parkingFee;
      case WalletDeductTransactionType.cancellationFee:
        return context.translate.cancellationFee;
      case WalletDeductTransactionType.withdraw:
        return context.translate.withdraw;
      case WalletDeductTransactionType.correction:
        return context.translate.correction;
    }
  }
}
