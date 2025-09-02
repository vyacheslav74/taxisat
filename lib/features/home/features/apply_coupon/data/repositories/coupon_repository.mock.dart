import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/coupon_repository.dart';

@dev
@LazySingleton(as: CouponRepository)
class CouponRepositoryMock implements CouponRepository {
  @override
  Future<Either<Failure, bool>> checkCouponValidity(String code) async {
    return const Right(true);
  }
}
