import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/scheduled_rides.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/entities/order.prod.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/scheduled_rides_repository.dart';

@prod
@LazySingleton(as: ScheduledRidesRepository)
class ScheduledRidesRepositoryImpl implements ScheduledRidesRepository {
  final GraphqlDatasource graphQLDatasource;

  ScheduledRidesRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, List<OrderCompactEntity>>> getUpcomingRides() async {
    final result = await graphQLDatasource.query(Options$Query$ScheduledRides());
    return result.map((r) => r.orders.edges.map((e) => e.node.toCompactEntity).toList());
  }

  @override
  Future<Either<Failure, Unit>> cancelRide(String orderId) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$CancelBooking(
        variables: Variables$Mutation$CancelBooking(orderId: orderId),
      ),
    );
    return result.map((r) => unit);
  }
}
