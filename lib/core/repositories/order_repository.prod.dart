import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/calculate_fare.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/dto/calculate_fare_args.dart';
import 'package:rider_flutter/core/dto/calculate_fare_response.dart';
import 'package:rider_flutter/core/dto/calculate_fare_response.prod.dart';
import 'package:rider_flutter/core/entities/place.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/core/repositories/order_repository.dart';

@prod
@LazySingleton(as: OrderRepository)
class OrderRepositoryImpl implements OrderRepository {
  final GraphqlDatasource graphqlDatasource;

  OrderRepositoryImpl(this.graphqlDatasource);

  @override
  Future<Either<Failure, CalculateFareResponse>> calculateFare({
    required CalculateFareArgs args,
  }) async {
    final result = await graphqlDatasource.query(
      Options$Query$CalculateFare(
        variables: Variables$Query$CalculateFare(
          points: args.waypoints.map((e) => e.coordinates.toGql).toList(),
          couponCode: args.couponCode,
          selectedOptionIds: args.rideOptions.map((e) => e.id).toList(),
          twoWay: args.isTwoWay,
          waitTime: args.waitTime,
        ),
      ),
    );
    return result.map((r) => r.toEntity);
  }
}
