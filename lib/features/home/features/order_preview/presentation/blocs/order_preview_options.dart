import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/core/entities/service.dart';
import 'package:rider_flutter/core/entities/service_category.dart';

part 'order_preview_options.state.dart';
part 'order_preview_options.freezed.dart';

@lazySingleton
class OrderPreviewOptionsCubit extends Cubit<OrderPreviewOptionsState> {
  OrderPreviewOptionsCubit() : super(OrderPreviewOptionsState.initial());

  void onPaymentMethodSelected(PaymentMethodUnion paymentMethod) {
    emit(state.copyWith(
      paymentMethod: paymentMethod,
    ));
  }

  void onServiceSelected(ServiceEntity service) {
    emit(
      state.copyWith(
        selectedService: service,
      ),
    );
  }

  void onServiceCategorySelected(ServiceCategoryEntity serviceCategory) {
    emit(
      state.copyWith(
        selectedServiceCategory: serviceCategory,
      ),
    );
  }
}
