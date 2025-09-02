import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/core/repositories/wallet_repository.dart';
import 'package:rider_flutter/features/home/features/track_order/domain/repositories/track_order_repository.dart';

part 'pay_for_ride.state.dart';
part 'pay_for_ride.freezed.dart';

@lazySingleton
class PayForRideCubit extends Cubit<PayForRideState> {
  final TrackOrderRepository _repository;
  final WalletRepository _walletRepository;

  PayForRideCubit(this._repository, this._walletRepository) : super(const PayForRideInitial());

  void load({
    required PaymentMethodUnion? selectedPaymentMethod,
    required bool cashEnabled,
    required bool walletCreditSufficient,
  }) async {
    final paymentMethods = await _repository.getPaymentMethods();
    paymentMethods.fold(
      (failure) => emit(PayForRideState.error(failure: failure)),
      (paymentMethods) => emit(
        PayForRideState.loaded(
          selectedPaymentMethod: selectedPaymentMethod ??
              (walletCreditSufficient ? const PaymentMethodUnion.wallet() : const PaymentMethodUnion.cash()),
          paymentMethods: [
            if (walletCreditSufficient) const PaymentMethodUnion.wallet(),
            ...paymentMethods,
            if (cashEnabled) const PaymentMethodUnion.cash(),
          ],
        ),
      ),
    );
  }

  void changePaymentMethod({
    required PaymentMethodUnion selectedPaymentMethod,
  }) {
    emit(
      state.maybeMap(
        orElse: () => throw Exception('Invalid State'),
        loaded: (value) => value.copyWith(
          selectedPaymentMethod: selectedPaymentMethod,
        ),
      ),
    );
  }

  void pay({
    required String currency,
    required double amount,
  }) async {
    final loadedState = state.maybeMap(
      orElse: () => throw Exception('Invalid State'),
      loaded: (value) => value,
    );
    final paymentMode = loadedState.selectedPaymentMethod.paymentMode;
    if (paymentMode == PaymentMode.cash || paymentMode == PaymentMode.wallet) {
      emit(
        loadedState.copyWith(
          paymentStatus: const PayForRidePaymentStatus.success(),
        ),
      );
      return;
    }
    final topUpWallet = await _walletRepository.topUpWallet(
      paymentMode: paymentMode,
      paymentGatewayId: loadedState.selectedPaymentMethod.id ?? "0",
      currency: currency,
      amount: amount,
    );
    topUpWallet.fold(
      (l) => emit(
        loadedState.copyWith(
          paymentStatus: PayForRidePaymentStatus.error(
            failure: l,
          ),
        ),
      ),
      (r) {
        PayForRidePaymentStatus status = r.map(
          redirect: (value) => PayForRidePaymentStatus.redirect(
            url: value.url,
          ),
          success: (_) => const PayForRidePaymentStatus.success(),
          failure: (failure) => PayForRidePaymentStatus.error(
            failure: Failure(message: failure.errorMessage),
          ),
        );
        emit(
          loadedState.copyWith(
            paymentStatus: status,
          ),
        );
      },
    );
  }
}
