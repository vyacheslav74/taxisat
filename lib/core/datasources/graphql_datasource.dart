import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';

import '../error/failure.dart';

abstract class GraphqlDatasource {
  Future<Either<Failure, TParsed>> query<TParsed>(QueryOptions<TParsed> options);
  Future<Either<Failure, TParsed>> mutate<TParsed>(MutationOptions<TParsed> options);
  ObservableQuery<TParsed> watchQuery<TParsed>(WatchQueryOptions<TParsed> options);
  Stream<TParsed> subscribe<TParsed>(SubscriptionOptions<TParsed> options);
}
