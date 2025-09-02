import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../data/models/wallet_query_response.dart';

abstract class WalletRepository {
  Future<Either<Failure, WalletQueryResponse>> getWalletData();
}
