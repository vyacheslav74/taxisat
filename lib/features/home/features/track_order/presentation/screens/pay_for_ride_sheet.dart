import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:flutter_common/core/presentation/buttons/app_close_button.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/payment_method_list_view.dart';
import 'package:rider_flutter/features/home/features/track_order/presentation/blocs/track_order.dart';
import 'package:rider_flutter/features/home/features/track_order/presentation/dialogs/pay_in_cash_dialog.dart';

import 'package:rider_flutter/gen/assets.gen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../blocs/pay_for_ride.dart';
import '../dialogs/cancel_ride_reason.dart';

class PayForRideSheet extends StatefulWidget {
  final OrderEntity order;

  const PayForRideSheet({
    super.key,
    required this.order,
  });

  @override
  State<PayForRideSheet> createState() => _SelectPaymentMethodSheetState();
}

class _SelectPaymentMethodSheetState extends State<PayForRideSheet> {
  double customCredit = 0;

  @override
  void initState() {
    locator<PayForRideCubit>().load(
      selectedPaymentMethod: widget.order.paymentMethod,
      walletCreditSufficient: widget.order.isWalletCreditSufficient,
      cashEnabled: widget.order.cashPaymentAllowed,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<PayForRideCubit>(),
      child: Container(
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          image: DecorationImage(
            image: Assets.images.backgroundDotted.provider(),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          if (widget.order.status != OrderStatus.waitingForPostPay)
                            AppCloseButton(
                              onPressed: () {
                                if (widget.order.status == OrderStatus.waitingForPrePay) {
                                  showDialog(
                                    context: context,
                                    useSafeArea: false,
                                    builder: (context) => const CancelRideReasonDialog(),
                                  );
                                } else {
                                  locator<TrackOrderBloc>().showOverview();
                                }
                              },
                            ),
                          Center(
                            child: Text(
                              context.translate.payment,
                              style: context.titleMedium,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 32),
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              strokeWidth: 2,
                              dashPattern: const [8, 4],
                              radius: const Radius.circular(12),
                              color: ColorPalette.primary40,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: ColorPalette.primary99,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                child: Column(
                                  children: [
                                    invoiceItem(
                                      context.translate.serviceFee,
                                      widget.order.cost,
                                      widget.order.currency,
                                    ),
                                    const SizedBox(height: 8),
                                    invoiceItem(
                                      context.translate.serviceOptionFee,
                                      0,
                                      widget.order.currency,
                                    ),
                                    const SizedBox(height: 8),
                                    invoiceItem(
                                      context.translate.couponDiscount,
                                      widget.order.couponDiscount,
                                      widget.order.currency,
                                    ),
                                    const Divider(
                                      color: ColorPalette.neutral90,
                                      indent: 4,
                                      endIndent: 4,
                                    ),
                                    const SizedBox(height: 8),
                                    invoiceItem(
                                      context.translate.walletCreit,
                                      widget.order.walletCredit,
                                      widget.order.currency,
                                    ),
                                    const SizedBox(height: 8),
                                    BlocBuilder<PayForRideCubit, PayForRideState>(
                                      builder: (context, state) {
                                        final isCashOrWallet = state.maybeMap(
                                          orElse: () => false,
                                          loaded: (loaded) =>
                                              loaded.selectedPaymentMethod.paymentMode == PaymentMode.cash ||
                                              loaded.selectedPaymentMethod.paymentMode == PaymentMode.wallet,
                                        );
                                        if (isCashOrWallet) return const SizedBox.shrink();
                                        return Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                color: ColorPalette.neutral99,
                                                borderRadius: BorderRadius.circular(12),
                                                border: Border.all(color: ColorPalette.neutral90),
                                              ),
                                              child: const Icon(
                                                Ionicons.wallet,
                                                color: ColorPalette.primary40,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 12,
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  context.translate.walletBalance,
                                                  style: context.labelSmall,
                                                ),
                                                Text(
                                                  context.translate.addCustomCredit,
                                                  style: context.labelMedium,
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              width: 80,
                                              child: TextField(
                                                inputFormatters: [
                                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                                ],
                                                onChanged: (value) => setState(
                                                  () => customCredit = double.tryParse(value) ?? 0,
                                                ),
                                                decoration: InputDecoration(
                                                  contentPadding: const EdgeInsets.all(8),
                                                  fillColor: ColorPalette.neutral99,
                                                  hintText: context.translate.custom,
                                                  border: InputBorder.none,
                                                  isCollapsed: true,
                                                ),
                                                style: context.bodyMedium,
                                                keyboardType: TextInputType.number,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                    const SizedBox(height: 32),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 64,
                            right: 64,
                            child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: Assets.images.gradientTotal.provider(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      context.translate.totalPrice,
                                      style: context.labelMedium?.copyWith(color: ColorPalette.neutral99),
                                    ),
                                    const Spacer(),
                                    Text(
                                      (widget.order.costAfterCoupon)
                                          .formatCurrency(widget.order.currency),
                                      style: context.headlineMedium?.copyWith(color: ColorPalette.neutral99),
                                    )
                                  ],
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
                  color: ColorPalette.neutralVariant99,
                  boxShadow: [
                    BoxShadow(
                      color: ColorPalette.primary20.withValues(alpha: 0.08),
                      blurRadius: 20,
                      offset: const Offset(2, 5),
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 8),
                    BlocBuilder<PayForRideCubit, PayForRideState>(
                      builder: (context, state) {
                        return state.map(
                          initial: (value) => const SizedBox.shrink(),
                          loading: (value) => Assets.lottie.loading.lottie(
                            width: 100,
                            height: 100,
                          ),
                          error: (value) => Center(
                            child: Text(value.failure.errorMessage),
                          ),
                          loaded: (value) => PaymentMethodListView(
                            paymentMethods: value.paymentMethods
                                .whereNot((element) =>
                                    element.paymentMode == PaymentMode.cash && widget.order.cashPaymentAllowed == false)
                                .toList(),
                            selectedPaymentMethod: value.selectedPaymentMethod,
                            onSelected: (method) {
                              locator<PayForRideCubit>().changePaymentMethod(
                                selectedPaymentMethod: method!,
                              );
                              if (method.paymentMode == PaymentMode.cash || method.paymentMode == PaymentMode.wallet) {
                                setState(() {
                                  customCredit = 0;
                                });
                              }
                            },
                          ),
                        );
                      },
                    ),
                    SafeArea(
                      top: false,
                      child: BlocConsumer<PayForRideCubit, PayForRideState>(
                        listener: (context, state) {
                          state.mapOrNull(
                            loaded: (loaded) {
                              loaded.paymentStatus.mapOrNull(
                                success: (success) {
                                  if (loaded.selectedPaymentMethod.paymentMode == PaymentMode.cash ||
                                      loaded.selectedPaymentMethod.paymentMode == PaymentMode.wallet) {
                                    locator<TrackOrderBloc>().showOverview();
                                    return;
                                  }
                                  context.showSnackBar(
                                    message: context.translate.topUpSuccess,
                                  );
                                  locator<TrackOrderBloc>().showOverview();
                                },
                                error: (failure) {
                                  context.showSnackBar(
                                    message: failure.failure.errorMessage,
                                  );
                                },
                                redirect: (redirect) {
                                  launchUrlString(
                                    redirect.url,
                                    mode: LaunchMode.externalApplication,
                                  );
                                },
                              );
                            },
                          );
                        },
                        builder: (context, state) {
                          return AppPrimaryButton(
                            isDisabled: state.maybeMap(
                              orElse: () => false,
                              loading: (_) => true,
                            ),
                            onPressed: () {
                              state.mapOrNull(
                                loaded: (loaded) {
                                  if (loaded.selectedPaymentMethod.paymentMode == PaymentMode.cash) {
                                    showDialog(
                                      context: context,
                                      useSafeArea: false,
                                      builder: (context) => const PayInCashDialog(),
                                    );
                                    return;
                                  }
                                },
                              );
                              locator<PayForRideCubit>().pay(
                                currency: widget.order.currency,
                                amount: widget.order.total,
                              );
                            },
                            child: Text(
                              context.translate.confirmPay,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget invoiceItem(String title, double value, String currency) {
    return Row(
      children: [
        Text(title),
        const Spacer(),
        Text(value.formatCurrency(currency)),
      ],
    );
  }
}
