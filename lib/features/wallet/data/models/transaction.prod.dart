import 'package:rider_flutter/config/graphql/documents/wallet.graphql.dart';

import '../../domain/entities/transaction.dart';
import './deduct_transaction_type.prod.dart';
import './recharge_transaction_type.prod.dart';

extension WalletTransactionEntityProdX on Query$Wallet$rider$transactions$nodes {
  WalletTransactionEntity get toEntity => WalletTransactionEntity(
        id: id,
        amount: amount,
        dateTime: createdAt,
        currency: currency,
        deductTransactionType: deductType?.toEntity,
        rechargeTransactionType: rechargeType?.toEntity,
      );
}
