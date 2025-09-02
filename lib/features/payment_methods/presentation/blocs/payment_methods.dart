import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';

import '../../domain/repositories/payment_methods_repository.dart';

part 'payment_methods.state.dart';
part 'payment_methods.freezed.dart';

@lazySingleton
class PaymentMethodsBloc extends Cubit<PaymentMethodsState> {
  final PaymentMethodsRepository _repository;

  PaymentMethodsBloc(this._repository) : super(const PaymentMethodsState.initial());

  void load() async {
    emit(const PaymentMethodsState.loading());
    final result = await _repository.getSavedPaymentMethods();
    result.fold(
      (failure) => emit(PaymentMethodsState.error(failure.errorMessage)),
      (data) => emit(PaymentMethodsState.loaded(data)),
    );
  }

  void markAsDefault({
    required SavedPaymentMethodEntity paymentMethod,
    required bool isDefault,
  }) async {
    final gateways = state.maybeWhen(
      loaded: (data) => data.$2,
      orElse: () => throw Exception("PaymentMethodsBloc.markAsDefault: Payment methods are not loaded yet"),
    );
    final result = await _repository.markAsDefault(paymentMethod: paymentMethod, isDefault: isDefault);
    result.fold(
      (failure) => emit(PaymentMethodsState.error(failure.errorMessage)),
      (data) => emit(PaymentMethodsState.loaded((data, gateways))),
    );
  }
}
