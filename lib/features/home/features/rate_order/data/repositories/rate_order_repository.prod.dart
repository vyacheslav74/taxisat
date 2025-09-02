import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/rate_ride.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/entities/review_parameter.dart';
import 'package:rider_flutter/core/entities/review_parameter.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/rate_order_repository.dart';

@prod
@LazySingleton(as: RateOrderRepository)
class RateOrderRepositoryImpl implements RateOrderRepository {
  final GraphqlDatasource graphQLDatasource;

  RateOrderRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, List<ReviewParameterEntity>>> getReviewParameters() async {
    final result = await graphQLDatasource.query(Options$Query$ReviewParameters());
    return result.map((r) => r.feedbackParameters.map((e) => e.toEntity).toList());
  }

  @override
  Future<Either<Failure, Unit>> submitReview({
    required String orderId,
    required int rating,
    required bool isFavorite,
    required String? comment,
    required List<int> reviewParameters,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$SubmitReview(
        variables: Variables$Mutation$SubmitReview(
            requestId: orderId,
            score: rating,
            feedback: comment,
            parameterIds: reviewParameters.map((e) => e.toString()).toList(),
            addToFavorite: isFavorite),
      ),
    );
    return result.map((r) => unit);
  }

  @override
  Future<Either<Failure, Unit>> skipReview({required String orderId}) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$SkipReview(),
    );
    return result.map((r) => unit);
  }
}
