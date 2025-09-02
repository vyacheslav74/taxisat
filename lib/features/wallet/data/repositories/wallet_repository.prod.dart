import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/wallet.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/wallet_repository.dart';
import '../models/wallet_query_response.prod.dart';
import '../models/wallet_query_response.dart';

@prod
@LazySingleton(as: WalletRepository)
class WalletRepositoryImpl implements WalletRepository {
  final GraphqlDatasource graphqlDatasource;

  WalletRepositoryImpl(this.graphqlDatasource);

  @override
  Future<Either<Failure, WalletQueryResponse>> getWalletData() async {
    final result = await graphqlDatasource.query(Options$Query$Wallet(
      fetchPolicy: FetchPolicy.noCache,
    ));
    return result.map((r) => r.toEntity);
  }
}
