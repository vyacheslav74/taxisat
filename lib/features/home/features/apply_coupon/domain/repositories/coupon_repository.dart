import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class CouponRepository {
  Future<Either<Failure, bool>> checkCouponValidity(String code);
}
