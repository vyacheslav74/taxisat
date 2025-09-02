import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/dto/calculate_fare_args.dart';
import 'package:rider_flutter/core/dto/new_order_args.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/entities/service.dart';
import 'package:rider_flutter/core/entities/service_category.dart';
import 'package:rider_flutter/core/repositories/firebase_repository.dart';
import 'package:rider_flutter/core/repositories/order_repository.dart';

import '../../domain/repositories/order_preview_repository.dart';

part 'order_preview.state.dart';
part 'order_preview.freezed.dart';

@lazySingleton
class OrderPreviewCubit extends Cubit<OrderPreviewState> {
  final OrderRepository orderRepository;
  final OrderPreviewRepository orderPreviewRepository;
  final FirebaseRepository firebaseRepository;

  OrderPreviewCubit(this.orderRepository, this.orderPreviewRepository, this.firebaseRepository)
      : super(const OrderPreviewState.initial());

  void onStarted(List<PlaceEntity> waypoints) {
    fetchRidePreview(
      CalculateFareArgs(
        waypoints: waypoints,
        couponCode: null,
        isTwoWay: false,
        waitTime: 0,
        rideOptions: [],
      ),
    );
  }

  void fetchRidePreview(CalculateFareArgs args) async {
    emit(const OrderPreviewState.loading());
    final result = await orderRepository.calculateFare(
      args: args,
    );
    result.fold(
      (l) => emit(OrderPreviewState.error(l.errorMessage)),
      (r) {
        final walletCredit = r.wallets.firstWhereOrNull((element) => element.$1 == r.currency)?.$2 ?? 0;
        final paymentMethods = [
          if (walletCredit > 0) const PaymentMethodUnion.wallet(),
          ...(r.paymentGateways, r.savedPaymentMethods).toPaymentMethodUnion,
          const PaymentMethodUnion.cash(),
        ];
        emit(
          OrderPreviewState.loaded(
            paymentMethods: paymentMethods,
            serviceCategories: r.services,
            currency: r.currency,
            walletCredit: walletCredit,
            directions: r.directions,
          ),
        );
      },
    );
  }

  void goToServicesPage() => _changePage(OrderPreviewPage.services);

  void goToPaymentMethodPage() => _changePage(OrderPreviewPage.paymentMethods);

  void _changePage(OrderPreviewPage page) {
    state.maybeMap(
      orElse: () => throw Exception('Invalid state'),
      loaded: (loaded) => emit(
        loaded.copyWith(
          selectedPage: page,
        ),
      ),
    );
  }

  void confirmRide({
    required CalculateFareArgs args,
    required PaymentMethodUnion selectedPaymentMethod,
    required DateTime pickupTime,
    required ServiceEntity selectedService,
  }) async {
    state.maybeMap(
      orElse: () => {},
      loaded: (loaded) => {
        emit(
          loaded.copyWith(
            isLoading: true,
          ),
        ),
      },
    );
    await firebaseRepository.retrieveAndUpdateFcmToken();
    final result = await orderPreviewRepository.submitOrder(
      args: NewOrderArgs(
        waypoints: args.waypoints,
        couponCode: args.couponCode,
        isTwoWay: args.isTwoWay,
        waitTime: args.waitTime ?? 0,
        rideOptions: args.rideOptions,
        paymentMethod: selectedPaymentMethod,
        dateTime: pickupTime,
        serviceId: selectedService.id,
      ),
    );
    result.fold(
      (l) => emit(OrderPreviewState.error(l.errorMessage)),
      (r) => emit(
        OrderPreviewState.orderSubmitted(
          order: r,
          driverLocation: null,
        ),
      ),
    );
  }
}
