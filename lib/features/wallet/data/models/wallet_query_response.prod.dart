import 'package:collection/collection.dart';
import 'package:rider_flutter/config/graphql/documents/wallet.graphql.dart';
import 'package:rider_flutter/core/entities/payment_gateway.prod.dart';
import 'package:rider_flutter/core/entities/saved_payment_method.prod.dart';

import 'wallet_query_response.dart';
import 'transaction.prod.dart';

extension WalletQueryResponseProdX on Query$Wallet {
  WalletQueryResponse get toEntity => WalletQueryResponse(
        firstName: rider.firstName,
        lastName: rider.lastName,
        currency: rider.wallets.sorted((a, b) => a.balance.compareTo(b.balance)).firstOrNull?.currency ?? "USD",
        balance: rider.wallets.sorted((a, b) => a.balance.compareTo(b.balance)).firstOrNull?.balance ?? 0,
        transactions: rider.transactions.nodes.map((e) => e.toEntity).toList(),
        paymentGateways: paymentGateways.map((e) => e.toEntity).toList(),
        savedPaymentMethods: savedPaymentMethods.map((e) => e.toEntity).toList(),
      );
}
