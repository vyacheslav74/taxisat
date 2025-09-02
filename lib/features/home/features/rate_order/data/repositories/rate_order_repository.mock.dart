import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/review_parameter.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/rate_order_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: RateOrderRepository)
class RateOrderRepositoryMock implements RateOrderRepository {
  @override
  Future<Either<Failure, List<ReviewParameterEntity>>> getReviewParameters() async {
    return const Right(
      [
        ReviewParameterEntity(id: "1", name: "Safe", isGood: true),
        ReviewParameterEntity(id: "2", name: "Secure", isGood: true),
        ReviewParameterEntity(id: "3", name: "Punctual", isGood: true),
        ReviewParameterEntity(id: "4", name: "Clean", isGood: true),
        ReviewParameterEntity(id: "5", name: "Unsafe", isGood: false),
        ReviewParameterEntity(id: "6", name: "Insecure", isGood: false),
        ReviewParameterEntity(id: "7", name: "Late", isGood: false),
        ReviewParameterEntity(id: "8", name: "Dirty", isGood: false),
      ],
    );
  }

  @override
  Future<Either<Failure, Unit>> submitReview({
    required String orderId,
    required int rating,
    required bool isFavorite,
    required String? comment,
    required List<int> reviewParameters,
  }) async {
    return const Right(unit);
  }

  @override
  Future<Either<Failure, Unit>> skipReview({required String orderId}) async {
    return const Right(unit);
  }
}
