import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/enums/intent_result.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/error/failure.dart';

import 'wallet_repository.dart';

@dev
@LazySingleton(as: WalletRepository)
class WalletRepositoryMock implements WalletRepository {
  @override
  Future<Either<Failure, IntentResult>> topUpWallet({
    required PaymentMode paymentMode,
    required String paymentGatewayId,
    required String currency,
    required double amount,
  }) {
    return Future.delayed(
      const Duration(seconds: 1),
      () => const Right(
        IntentResult.redirect(
          url: "https://www.stripe.com",
        ),
      ),
    );
  }
}
