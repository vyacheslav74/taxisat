import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/features/chat/chat.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class TrackOrderRepository {
  Future<Either<Failure, bool>> cancelOrder({
    required String orderId,
    required String? cancelReasonId,
    required String? cancelReasonNote,
  });

  Stream<(OrderEntity, DriverLocation?)> listenToOrderUpdates({
    required OrderEntity orderEntity,
  });

  Future<Either<Failure, ChatMessageEntity>> sendMessage({
    required String orderId,
    required String message,
  });

  Future<Either<Failure, List<CancelReasonEntity>>> getCancelReasons();

  Future<Either<Failure, void>> sendSOSSignal({
    required String orderId,
  });

  Future<Either<Failure, List<PaymentMethodUnion>>> getPaymentMethods();

  Future<Either<Failure, void>> updateLastSeenMessages({required String orderId});
}
