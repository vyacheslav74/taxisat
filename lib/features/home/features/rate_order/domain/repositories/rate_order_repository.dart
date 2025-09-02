import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/review_parameter.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class RateOrderRepository {
  Future<Either<Failure, List<ReviewParameterEntity>>> getReviewParameters();

  Future<Either<Failure, Unit>> submitReview({
    required String orderId,
    required int rating,
    required bool isFavorite,
    required String? comment,
    required List<int> reviewParameters,
  });

  Future<Either<Failure, Unit>> skipReview({
    required String orderId,
  });
}
