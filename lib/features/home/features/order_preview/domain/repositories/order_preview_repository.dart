import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/dto/new_order_args.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class OrderPreviewRepository {
  Future<Either<Failure, OrderEntity>> submitOrder({
    required NewOrderArgs args,
  });
}
