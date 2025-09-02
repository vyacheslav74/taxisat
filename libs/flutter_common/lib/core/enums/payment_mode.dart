enum PaymentMode {
  paymentGateway,
  savedPaymentMethod,
  cash,
  wallet,
}

extension PaymentModeX on PaymentMode {
  bool get isPaid =>
      (this != PaymentMode.cash && this != PaymentMode.paymentGateway);
}
