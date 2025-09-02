import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class PaymentMethodsRepository {
  Future<Either<Failure, (List<SavedPaymentMethodEntity>, List<PaymentGatewayEntity>)>> getSavedPaymentMethods();

  Future<Either<Failure, List<SavedPaymentMethodEntity>>> markAsDefault({
    required SavedPaymentMethodEntity paymentMethod,
    required bool isDefault,
  });

  Future<Either<Failure, String>> getExternalUrl({
    required String paymentGatewayId,
  });
}
