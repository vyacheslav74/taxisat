part of 'payment_methods.dart';

@freezed
class PaymentMethodsState with _$PaymentMethodsState {
  const factory PaymentMethodsState.initial() = _Initial;
  const factory PaymentMethodsState.loading() = _Loading;
  const factory PaymentMethodsState.loaded((List<SavedPaymentMethodEntity>, List<PaymentGatewayEntity>) data) = _Loaded;
  const factory PaymentMethodsState.error(String message) = _Error;
}
