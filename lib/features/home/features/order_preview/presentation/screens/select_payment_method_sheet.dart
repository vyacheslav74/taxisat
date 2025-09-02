import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_close_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/payment_method_list_view.dart';
import 'package:rider_flutter/features/home/features/order_preview/presentation/blocs/order_preview.dart';
import 'package:rider_flutter/features/home/features/order_preview/presentation/blocs/order_preview_options.dart';

import 'package:rider_flutter/gen/assets.gen.dart';
import 'package:dotted_border/dotted_border.dart';

class SelectPaymentMethodSheet extends StatefulWidget {
  final List<PaymentMethodUnion> paymentMethods;
  final bool isCashPaymentEnabled;
  final String currency;
  final double serviceFee;
  final double serviceOptionFee;
  final double couponDiscount;
  final double walletCredit;
  final PaymentMethodUnion? selectedPaymentMethod;

  const SelectPaymentMethodSheet({
    super.key,
    required this.paymentMethods,
    required this.selectedPaymentMethod,
    required this.currency,
    required this.serviceFee,
    required this.serviceOptionFee,
    required this.couponDiscount,
    required this.walletCredit,
    required this.isCashPaymentEnabled,
  });

  @override
  State<SelectPaymentMethodSheet> createState() => _SelectPaymentMethodSheetState();
}

class _SelectPaymentMethodSheetState extends State<SelectPaymentMethodSheet> {
  PaymentMethodUnion? paymentMethod;

  @override
  void initState() {
    paymentMethod = widget.selectedPaymentMethod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          image: DecorationImage(
            image: Assets.images.backgroundDotted.provider(),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          )),
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
                        AppCloseButton(
                          onPressed: () {
                            locator<OrderPreviewCubit>().goToServicesPage();
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
                                    widget.serviceFee,
                                    widget.currency,
                                  ),
                                  const SizedBox(height: 8),
                                  invoiceItem(
                                    context.translate.serviceOptionFee,
                                    widget.serviceOptionFee,
                                    widget.currency,
                                  ),
                                  const SizedBox(height: 8),
                                  invoiceItem(
                                    context.translate.couponDiscount,
                                    widget.couponDiscount,
                                    widget.currency,
                                  ),
                                  const Divider(
                                    color: ColorPalette.neutral90,
                                    indent: 4,
                                    endIndent: 4,
                                  ),
                                  const SizedBox(height: 8),
                                  invoiceItem(
                                    context.translate.walletCreit,
                                    widget.walletCredit,
                                    widget.currency,
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
                                    style: context.labelMedium?.copyWith(
                                      color: ColorPalette.neutral99,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    total.formatCurrency(widget.currency),
                                    style: context.headlineMedium?.copyWith(
                                      color: ColorPalette.neutral99,
                                    ),
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
                  PaymentMethodListView(
                    paymentMethods: widget.paymentMethods
                        .whereNot((element) => element.paymentMode == PaymentMode.wallet && total > widget.walletCredit)
                        .whereNot(
                            (element) => element.paymentMode == PaymentMode.cash && widget.isCashPaymentEnabled == false)
                        .toList(),
                    selectedPaymentMethod: paymentMethod,
                    onSelected: (paymentMethod) {
                      setState(() => this.paymentMethod = paymentMethod);
                    },
                  ),
                  SafeArea(
                    top: false,
                    child: AppPrimaryButton(
                      isDisabled: paymentMethod == null,
                      onPressed: () {
                        locator<OrderPreviewOptionsCubit>().onPaymentMethodSelected(paymentMethod!);
                        locator<OrderPreviewCubit>().goToServicesPage();
                      },
                      child: Text(
                        context.translate.confirm,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
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

  double get total => (widget.serviceFee + widget.serviceOptionFee + widget.couponDiscount);
}
