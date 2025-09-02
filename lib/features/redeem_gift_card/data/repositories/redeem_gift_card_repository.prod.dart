import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/wallet.graphql.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../../../core/datasources/graphql_datasource.dart';
import '../../domain/repositories/redeem_gift_card_repository.dart';

@prod
@LazySingleton(as: RedeemGiftCardRepository)
class RedeemGiftCardRepositoryImpl implements RedeemGiftCardRepository {
  final GraphqlDatasource graphQLDatasource;

  RedeemGiftCardRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, (double, String)>> redeemGiftCard({required String code}) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$RedeemGiftCard(
        variables: Variables$Mutation$RedeemGiftCard(
          code: code,
        ),
      ),
    );
    return result.map((r) => (r.redeemGiftCard.amount, r.redeemGiftCard.currency));
  }
}
