import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import '../error/failure.dart';
import 'graphql_datasource.dart';

@LazySingleton(as: GraphqlDatasource)
class GraphqlDatasourceImpl implements GraphqlDatasource {
  final GraphQLClient client;
  final Connectivity connectivity;

  GraphqlDatasourceImpl({
    required this.client,
    required this.connectivity,
  });

  @override
  Future<Either<Failure, TParsed>> mutate<TParsed>(MutationOptions<TParsed> options) async {
    if ((await connectivity.checkConnectivity()).contains(ConnectivityResult.none)) {
      return const Left(Failure.connection());
    }
    final result = await client.mutate(options);
    if (result.hasException) {
      return Left(Failure.parseOperationException(result.exception!));
    }
    return Right(result.parsedData as TParsed);
  }

  @override
  Future<Either<Failure, TParsed>> query<TParsed>(QueryOptions<TParsed> options) async {
    if ((await connectivity.checkConnectivity()).contains(ConnectivityResult.none)) {
      return const Left(Failure.connection());
    }
    final result = await client.query(options);
    if (result.hasException) {
      if (kDebugMode) print(result.exception);
      return Left(Failure.parseOperationException(result.exception!));
    }
    return Right(result.parsedData as TParsed);
  }

  @override
  ObservableQuery<TParsed> watchQuery<TParsed>(WatchQueryOptions<TParsed> options) {
    final result = client.watchQuery(options);
    if (result.lifecycle == QueryLifecycle.unexecuted) {
      result.fetchResults();
    }
    return result;
  }

  @override
  Stream<TParsed> subscribe<TParsed>(SubscriptionOptions<TParsed> options) {
    final result = client.subscribe(options);
    return result.map(
      (event) {
        if (event.hasException) {
          throw Stream.error(Failure.parseOperationException(event.exception!));
        }
        return event.parsedData as TParsed;
      },
    ).asBroadcastStream();
  }
}
