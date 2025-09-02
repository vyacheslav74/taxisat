import 'package:rider_flutter/config/graphql/schema.gql.dart';

import '../../domain/enums/deduct_transaction_type.dart';

extension DeductTransactionTypeProdX on Enum$RiderDeductTransactionType {
  WalletDeductTransactionType get toEntity {
    switch (this) {
      case Enum$RiderDeductTransactionType.OrderFee:
        return WalletDeductTransactionType.orderFee;
      case Enum$RiderDeductTransactionType.CancellationFee:
        return WalletDeductTransactionType.cancellationFee;
      case Enum$RiderDeductTransactionType.ParkingFee:
        return WalletDeductTransactionType.parkingFee;

      case Enum$RiderDeductTransactionType.Withdraw:
        return WalletDeductTransactionType.withdraw;
      case Enum$RiderDeductTransactionType.Correction:
        return WalletDeductTransactionType.correction;
      case Enum$RiderDeductTransactionType.$unknown:
        throw Exception('$this is not supported');
    }
  }
}
