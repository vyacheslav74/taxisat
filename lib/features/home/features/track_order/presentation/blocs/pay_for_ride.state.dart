part of 'pay_for_ride.dart';

@Freezed(copyWith: true)
sealed class PayForRideState with _$PayForRideState {
  const factory PayForRideState.initial() = PayForRideInitial;

  const factory PayForRideState.loading() = PayForRideLoading;

  const factory PayForRideState.loaded({
    required PaymentMethodUnion selectedPaymentMethod,
    required List<PaymentMethodUnion> paymentMethods,
    @Default(PayForRidePaymentStatus.initial()) PayForRidePaymentStatus paymentStatus,
  }) = PayForRideLoaded;

  const factory PayForRideState.error({
    required Failure failure,
  }) = PayForRideError;
}

@freezed
sealed class PayForRidePaymentStatus with _$PayForRidePaymentStatus {
  const factory PayForRidePaymentStatus.initial() = PayForRidePaymentStatusInitial;

  const factory PayForRidePaymentStatus.loading() = PayForRidePaymentStatusLoading;

  const factory PayForRidePaymentStatus.error({
    required Failure failure,
  }) = PayForRidePaymentStatusError;

  const factory PayForRidePaymentStatus.redirect({
    required String url,
  }) = PayForRidePaymentStatusRedirect;

  const factory PayForRidePaymentStatus.success() = PayForRidePaymentStatusSuccess;
}
