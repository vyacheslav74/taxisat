import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/enums/intent_result.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/repositories/wallet_repository.dart' as core_wallet;

part 'top_up_wallet.freezed.dart';
part 'top_up_wallet.state.dart';

@lazySingleton
class TopUpWalletBloc extends Cubit<TopUpWalletState> {
  final core_wallet.WalletRepository _coreWalletRepository;

  TopUpWalletBloc(
    this._coreWalletRepository,
  ) : super(const TopUpWalletState.initial());

  void topUpWallet({
    required PaymentMode paymentMode,
    required String paymentMethodId,
    required String currency,
    required double amount,
  }) async {
    emit(const TopUpWalletState.loading());
    final result = await _coreWalletRepository.topUpWallet(
      paymentGatewayId: paymentMethodId,
      currency: currency,
      amount: amount,
      paymentMode: paymentMode,
    );
    result.fold(
      (failure) => emit(
        TopUpWalletState.loaded(
          IntentResult.failure(
            errorMessage: failure.errorMessage,
          ),
        ),
      ),
      (data) => emit(
        TopUpWalletState.loaded(
          data,
        ),
      ),
    );
  }
}
