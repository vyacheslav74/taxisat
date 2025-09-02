import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class ScheduledRidesRepository {
  Future<Either<Failure, List<OrderCompactEntity>>> getUpcomingRides();

  Future<Either<Failure, Unit>> cancelRide(String orderId);
}
