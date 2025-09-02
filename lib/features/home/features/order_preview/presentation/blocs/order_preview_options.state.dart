part of 'order_preview_options.dart';

@freezed
class OrderPreviewOptionsState with _$OrderPreviewOptionsState {
  const factory OrderPreviewOptionsState({
    required ServiceCategoryEntity? selectedServiceCategory,
    required ServiceEntity? selectedService,
    required PaymentMethodUnion? paymentMethod,
  }) = _OrderPreviewOptionsState;

  factory OrderPreviewOptionsState.initial() => const OrderPreviewOptionsState(
        selectedServiceCategory: null,
        selectedService: null,
        paymentMethod: null,
      );

  const OrderPreviewOptionsState._();

  bool get canConfirm => paymentMethod != null && selectedService != null;
}
