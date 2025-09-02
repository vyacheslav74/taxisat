import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/ride_option.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/entities/service_category.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_back_button.dart';
import 'package:flutter_common/core/presentation/app_card_sheet.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:flutter_common/core/presentation/card_handle.dart';
import 'package:rider_flutter/core/presentation/payment_method_select_field.dart';
import 'package:rider_flutter/features/home/features/apply_coupon/presentation/dialogs/enter_coupon_dialog.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';

import '../blocs/order_preview.dart';
import '../blocs/order_preview_args.dart';
import '../blocs/order_preview_options.dart';
import '../components/service_item.dart';
import '../dialogs/reserve_time_dialog.dart';
import '../dialogs/ride_preferences_dialog.dart';

class ServicesSelectionSheet extends StatefulWidget {
  final List<PaymentMethodUnion> paymentMethods;
  final List<ServiceCategoryEntity> serviceCategories;
  final String currency;

  const ServicesSelectionSheet({
    super.key,
    required this.paymentMethods,
    required this.serviceCategories,
    required this.currency,
  });

  @override
  State<ServicesSelectionSheet> createState() => _ServicesSelectionSheetState();
}

class _ServicesSelectionSheetState extends State<ServicesSelectionSheet> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final optionsCubit = locator<OrderPreviewOptionsCubit>();
    final argsCubit = locator<OrderPreviewArgsCubit>();
    final remoteDataCubit = locator<OrderPreviewCubit>();

    return AppCardSheet(
      child: BlocBuilder<OrderPreviewOptionsCubit, OrderPreviewOptionsState>(
        builder: (context, stateOptions) {
          return SafeArea(
            top: false,
            child: DefaultTabController(
              length: widget.serviceCategories.length,
              initialIndex: stateOptions.selectedServiceCategory == null
                  ? 0
                  : widget.serviceCategories.indexOf(stateOptions.selectedServiceCategory!),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: context.responsive(
                      const CardHandle(),
                      xl: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AppBackButton(
                          onPressed: () => locator<HomeCubit>().initializeWelcome(
                            pickupPoint: locator<LocationCubit>().state.place,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: widget.serviceCategories.length > 1,
                    child: SegmentedButton<ServiceCategoryEntity?>(
                      multiSelectionEnabled: false,
                      onSelectionChanged: (value) => optionsCubit.onServiceCategorySelected(value.first!),
                      segments: widget.serviceCategories
                          .map(
                            (e) => ButtonSegment(
                              value: e,
                              label: Text(e.name),
                            ),
                          )
                          .toList(),
                      selected: {stateOptions.selectedServiceCategory},
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: context.responsive(120),
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: TabController(
                        length: widget.serviceCategories.length,
                        initialIndex: stateOptions.selectedServiceCategory == null
                            ? 0
                            : widget.serviceCategories.indexOf(stateOptions.selectedServiceCategory!),
                        vsync: this,
                      ),
                      children: widget.serviceCategories.mapIndexed(
                        (index, e) {
                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            itemCount: e.services.length,
                            separatorBuilder: (context, index) => const SizedBox(height: 16),
                            itemBuilder: (context, index) {
                              return ServiceItem(
                                currency: widget.currency,
                                entity: e.services[index],
                                isSelected: stateOptions.selectedService?.id == e.services[index].id,
                                onPressed: () {
                                  optionsCubit.onServiceSelected(e.services[index]);
                                },
                              );
                            },
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Container(
                    height: 16,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.02),
                          blurRadius: 10,
                          offset: const Offset(0, -5),
                        )
                      ],
                      color: ColorPalette.neutralVariant99,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PaymentMethodSelectField(
                          paymentMethod: stateOptions.paymentMethod,
                          onPressed: remoteDataCubit.goToPaymentMethodPage,
                        ),
                        const Divider(
                          color: ColorPalette.neutral95,
                          height: 24,
                        ),
                        Row(
                          children: [
                            BlocBuilder<OrderPreviewArgsCubit, OrderPreviewArgsState>(
                              builder: (context, state) {
                                return AppTextButton(
                                    isDense: true,
                                    badge: state.rideOptions.length +
                                        (state.isTwoWay ? 1 : 0) +
                                        (state.waitTime == null ? 0 : 1),
                                    text: context.translate.ridePreferences,
                                    iconData: Ionicons.options,
                                    onPressed: () async {
                                      final dialogResult = await showDialog<(bool, int?, List<RideOptionEntity>)>(
                                        context: context,
                                        useSafeArea: false,
                                        builder: (context) => RidePreferencesDialog(
                                          currency: widget.currency,
                                          selectedRideOptions: argsCubit.state.rideOptions,
                                          rideOptions: optionsCubit.state.selectedService?.rideOptions ?? [],
                                          isTwoWayTrip: argsCubit.state.isTwoWay,
                                          defaultWaitTime: argsCubit.state.waitTime,
                                        ),
                                      );
                                      if (dialogResult != null) {
                                        argsCubit.onRidePreferencesChanged(
                                          isTwoWayTrip: dialogResult.$1,
                                          waitTime: dialogResult.$2,
                                          rideOptions: dialogResult.$3,
                                        );
                                      }
                                    });
                              },
                            ),
                            const Spacer(),
                            AppTextButton(
                              isDense: true,
                              text: context.translate.couponCode,
                              iconData: Ionicons.ticket,
                              onPressed: () async {
                                final dialogResult = await showDialog<String>(
                                  context: context,
                                  useSafeArea: false,
                                  builder: (context) => EnterCouponDialog(
                                    calculateFareArgs: argsCubit.state.calculateFareArgs,
                                  ),
                                );
                                if (dialogResult != null) {
                                  argsCubit.onCouponCodeChanged(dialogResult);
                                }
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        BlocBuilder<OrderPreviewCubit, OrderPreviewState>(
                          builder: (context, state) {
                            return Row(
                              children: [
                                AppPrimaryButton(
                                  isDisabled: stateOptions.canConfirm == false || state.isLoading,
                                  onPressed: () async {
                                    final result = await showDialog<DateTime>(
                                      context: context,
                                      useSafeArea: false,
                                      builder: (context) => const ReserveTimeDialog(),
                                    );
                                    if (result != null) {
                                      remoteDataCubit.confirmRide(
                                        pickupTime: result,
                                        args: argsCubit.state.calculateFareArgs,
                                        selectedPaymentMethod: stateOptions.paymentMethod!,
                                        selectedService: stateOptions.selectedService!,
                                      );
                                    }
                                  },
                                  child: const Icon(
                                    Ionicons.calendar,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: AppPrimaryButton(
                                    isDisabled: stateOptions.canConfirm == false || state.isLoading,
                                    onPressed: () {
                                      remoteDataCubit.confirmRide(
                                        pickupTime: DateTime.now(),
                                        args: argsCubit.state.calculateFareArgs,
                                        selectedPaymentMethod: stateOptions.paymentMethod!,
                                        selectedService: stateOptions.selectedService!,
                                      );
                                    },
                                    child: Text(
                                      context.translate.bookNow,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
