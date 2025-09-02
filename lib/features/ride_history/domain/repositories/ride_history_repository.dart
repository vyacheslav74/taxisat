import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class RideHistoryRepository {
  Future<Either<Failure, List<OrderCompactEntity>>> getRideHistory();

  Future<Either<Failure, bool>> reportIssue({
    required String orderId,
    required String subject,
    required String issue,
  });
}
