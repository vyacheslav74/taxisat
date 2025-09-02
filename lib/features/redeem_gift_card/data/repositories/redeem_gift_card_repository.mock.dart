import 'package:dartz/dartz.dart';

import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/redeem_gift_card_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: RedeemGiftCardRepository)
class RedeemGiftCardRepositoryMock implements RedeemGiftCardRepository {
  @override
  Future<Either<Failure, (double, String)>> redeemGiftCard({required String code}) async {
    return const Right((100, "USD"));
  }
}
