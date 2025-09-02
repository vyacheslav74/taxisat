part of 'order_preview.dart';

@freezed
class OrderPreviewState with _$OrderPreviewState {
  const factory OrderPreviewState.initial() = _Initial;

  const factory OrderPreviewState.loading() = _Loading;

  const factory OrderPreviewState.loaded({
    required List<PaymentMethodUnion> paymentMethods,
    required List<ServiceCategoryEntity> serviceCategories,
    required String currency,
    required List<LatLngEntity> directions,
    required double walletCredit,
    @Default(false) bool isLoading,
    @Default(OrderPreviewPage.services) OrderPreviewPage selectedPage,
  }) = OrderPreviewLoadedState;

  const factory OrderPreviewState.orderSubmitted({
    required OrderEntity order,
    required DriverLocation? driverLocation,
  }) = _OrderSubmitted;

  const factory OrderPreviewState.error(String message) = _Error;

  const OrderPreviewState._();

  bool get isLoading => maybeMap(
        orElse: () => false,
        loading: (_) => true,
        loaded: (loaded) => loaded.isLoading,
      );
}

enum OrderPreviewPage { services, paymentMethods }

extension OrderPreviewPageX on OrderPreviewPage {
  // when method
  R when<R>({
    required R Function() services,
    required R Function() paymentMethods,
  }) {
    switch (this) {
      case OrderPreviewPage.services:
        return services();
      case OrderPreviewPage.paymentMethods:
        return paymentMethods();
    }
  }
}

extension OrderPreviewLoadedStateX on OrderPreviewLoadedState {
  PaymentMethodUnion? defaultPaymentMethod(ServiceEntity? service) {
    if (service != null && walletCredit > service.price) {
      return const PaymentMethodUnion.wallet();
    }
    final defaultSavedPaymentMethod = paymentMethods.firstWhereOrNull(
      (element) => element.maybeMap(
        orElse: () => false,
        savedPaymentMethod: (savedPaymentMethod) => savedPaymentMethod.savedPaymentMethod.isDefault,
      ),
    );
    return defaultSavedPaymentMethod;
  }
}
