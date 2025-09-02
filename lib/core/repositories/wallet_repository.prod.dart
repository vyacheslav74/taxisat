import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/enums/intent_result.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/wallet.graphql.dart';
import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/entities/intent_result.prod.dart';
import 'package:rider_flutter/core/enums/payment_mode.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';

import 'wallet_repository.dart';

@prod
@LazySingleton(as: WalletRepository)
class WalletRepositoryImpl implements WalletRepository {
  final GraphqlDatasource graphqlDatasource;

  WalletRepositoryImpl(this.graphqlDatasource);

  @override
  Future<Either<Failure, IntentResult>> topUpWallet({
    required PaymentMode paymentMode,
    required String paymentGatewayId,
    required String currency,
    required double amount,
  }) async {
    final intentResult = await graphqlDatasource.mutate(
      Options$Mutation$TopUpWallet(
        variables: Variables$Mutation$TopUpWallet(
          input: Input$TopUpWalletInput(
            gatewayId: paymentGatewayId,
            amount: amount,
            currency: currency,
            paymentMode: paymentMode.toGql,
          ),
        ),
      ),
    );
    return intentResult.map((r) => r.topUpWallet.toEntity);
  }
}
