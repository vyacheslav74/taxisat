import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/presentation/app_card_sheet.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/features/home/features/order_preview/presentation/dialogs/reserve_success_dialog.dart';
import 'package:rider_flutter/features/home/features/order_preview/presentation/screens/service_selection_sheet.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

import '../blocs/order_preview.dart';
import '../blocs/order_preview_args.dart';
import '../blocs/order_preview_options.dart';
import 'select_payment_method_sheet.dart';

class OrderPreviewSheet extends StatefulWidget {
  final List<PlaceEntity> wayPoints;

  const OrderPreviewSheet({
    super.key,
    required this.wayPoints,
  });

  @override
  State<OrderPreviewSheet> createState() => _OrderPreviewSheetState();
}

class _OrderPreviewSheetState extends State<OrderPreviewSheet> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    locator<OrderPreviewCubit>().onStarted(widget.wayPoints);
    locator<OrderPreviewArgsCubit>().onStarted(widget.wayPoints);
  }

  @override
  Widget build(BuildContext context) {
    final optionsCubit = locator<OrderPreviewOptionsCubit>();
    final argsCubit = locator<OrderPreviewArgsCubit>();
    final remoteDataCubit = locator<OrderPreviewCubit>();

    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: locator<OrderPreviewCubit>(),
        ),
        BlocProvider.value(
          value: locator<OrderPreviewArgsCubit>(),
        ),
        BlocProvider.value(
          value: locator<OrderPreviewOptionsCubit>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<OrderPreviewCubit, OrderPreviewState>(
            listener: (context, state) {
              state.mapOrNull(
                loaded: (loaded) {
                  optionsCubit.onServiceCategorySelected(loaded.serviceCategories.first);
                  optionsCubit.onServiceSelected(loaded.serviceCategories.first.services.first);
                  if (optionsCubit.state.paymentMethod == null) {
                    final savedPaymentMethod = loaded.defaultPaymentMethod(optionsCubit.state.selectedService);
                    if (savedPaymentMethod != null) {
                      optionsCubit.onPaymentMethodSelected(savedPaymentMethod);
                    }
                  }
                },
                orderSubmitted: (value) {
                  locator.resetLazySingleton<OrderPreviewCubit>();
                  locator.resetLazySingleton<OrderPreviewOptionsCubit>();
                  locator.resetLazySingleton<OrderPreviewArgsCubit>();
                  if (value.order.status == OrderStatus.booked) {
                    showDialog(
                      context: context,
                      useSafeArea: false,
                      builder: (context) => const ReserveSuccessDialog(),
                    );
                    locator<HomeCubit>().initializeWelcome(pickupPoint: locator<LocationCubit>().state.place);
                  } else {
                    locator<HomeCubit>().showInProgress(
                      order: value.order,
                      driverLocation: value.driverLocation,
                    );
                  }
                },
              );
            },
          ),
          BlocListener<OrderPreviewArgsCubit, OrderPreviewArgsState>(
            listener: (context, state) {
              remoteDataCubit.fetchRidePreview(state.calculateFareArgs);
            },
          ),
        ],
        child: BlocConsumer<OrderPreviewCubit, OrderPreviewState>(
          listener: (context, state) {
            state.mapOrNull(
              loaded: (value) {
                locator<HomeCubit>().showPreview(
                  waypoints: argsCubit.state.waypoints,
                  directions: value.directions,
                );
              },
            );
          },
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: state.map(
                initial: (value) => const SizedBox.shrink(),
                orderSubmitted: (value) => const SizedBox.shrink(),
                error: (value) => Text(value.message),
                loading: (value) => AppCardSheet(
                  child: Assets.lottie.loading.lottie(
                    width: double.infinity,
                    height: 400,
                  ),
                ),
                loaded: (loaded) {
                  return loaded.selectedPage.when(
                    services: () => ServicesSelectionSheet(
                      paymentMethods: loaded.paymentMethods,
                      serviceCategories: loaded.serviceCategories,
                      currency: loaded.currency,
                    ),
                    paymentMethods: () => BlocBuilder<OrderPreviewOptionsCubit, OrderPreviewOptionsState>(
                      builder: (context, statePreview) {
                        return SelectPaymentMethodSheet(
                          isCashPaymentEnabled: statePreview.selectedService?.isCashAllowed ?? false,
                          selectedPaymentMethod: locator<OrderPreviewOptionsCubit>().state.paymentMethod ??
                              loaded.defaultPaymentMethod(statePreview.selectedService),
                          paymentMethods: loaded.paymentMethods,
                          walletCredit: loaded.walletCredit,
                          serviceFee: statePreview.selectedService?.price ?? 0,
                          couponDiscount: statePreview.selectedService?.priceAfterCouponApplied == null
                              ? 0
                              : (statePreview.selectedService?.priceAfterCouponApplied ?? 0) -
                                  (statePreview.selectedService?.price ?? 0),
                          currency: loaded.currency,
                          serviceOptionFee: 0,
                        );
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
