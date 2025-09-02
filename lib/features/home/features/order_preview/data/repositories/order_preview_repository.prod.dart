import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/create_order.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/dto/new_order_args.dart';
import 'package:rider_flutter/core/dto/new_order_args.prod.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/entities/order.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/order_preview_repository.dart';

@prod
@LazySingleton(as: OrderPreviewRepository)
class OrderPreviewRepositoryImpl implements OrderPreviewRepository {
  final GraphqlDatasource graphQLDatasource;

  OrderPreviewRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, OrderEntity>> submitOrder({
    required NewOrderArgs args,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$CreateOrder(
        variables: Variables$Mutation$CreateOrder(
          input: args.toGql,
        ),
      ),
    );
    return result.map((r) => r.createOrder.toEntity);
  }
}
