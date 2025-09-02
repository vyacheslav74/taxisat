import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/dto/calculate_fare_args.dart';
import 'package:rider_flutter/core/dto/calculate_fare_response.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class OrderRepository {
  Future<Either<Failure, CalculateFareResponse>> calculateFare({
    required CalculateFareArgs args,
  });
}
