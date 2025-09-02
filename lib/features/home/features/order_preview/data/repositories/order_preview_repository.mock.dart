import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/test_data/order.dart';
import 'package:rider_flutter/core/dto/new_order_args.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/order_preview_repository.dart';

@dev
@LazySingleton(as: OrderPreviewRepository)
class OrderPreviewRepositoryMock implements OrderPreviewRepository {
  @override
  Future<Either<Failure, OrderEntity>> submitOrder({
    required NewOrderArgs args,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(
      orderTest,
    );
  }
}
