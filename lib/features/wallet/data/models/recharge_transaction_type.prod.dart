import 'package:rider_flutter/config/graphql/schema.gql.dart';

import '../../domain/enums/recharge_transaction_type.dart';

extension WalletRechargeTransactionTypeProdX on Enum$RiderRechargeTransactionType {
  WalletRechargeTransactionType get toEntity {
    switch (this) {
      case Enum$RiderRechargeTransactionType.BankTransfer:
        return WalletRechargeTransactionType.bankTransfer;
      case Enum$RiderRechargeTransactionType.Gift:
        return WalletRechargeTransactionType.gift;
      case Enum$RiderRechargeTransactionType.Correction:
        return WalletRechargeTransactionType.correction;
      case Enum$RiderRechargeTransactionType.InAppPayment:
        return WalletRechargeTransactionType.inAppPayment;
      case Enum$RiderRechargeTransactionType.$unknown:
        throw Exception('$this is not supported');
    }
  }
}
