import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class PaymentMethodSelectField extends StatelessWidget {
  final PaymentMethodUnion? paymentMethod;
  final Function() onPressed;

  const PaymentMethodSelectField({
    super.key,
    required this.paymentMethod,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            icon(context),
            const SizedBox(width: 8),
            Expanded(
              child: Row(
                children: [
                  AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: paymentMethod == null
                          ? Text(
                              "Выберите способ оплаты",
                              style: context.labelMedium?.copyWith(
                                color: textColor,
                              ),
                            )
                          : Text(
                              paymentMethod!.name(context),
                              style: context.labelMedium?.copyWith(
                                color: textColor,
                              ),
                            )),
                ],
              ),
            ),
            Icon(
              Ionicons.chevron_forward,
              color: chevronColor,
              size: 16,
            )
          ],
        ),
      ),
    );
  }

  Color get borderColor => paymentMethod != null ? ColorPalette.primary95 : ColorPalette.secondary90;
  Color get backgroundColor => paymentMethod != null ? Colors.transparent : ColorPalette.secondary99;

  Color get textColor => paymentMethod != null ? ColorPalette.neutral10 : ColorPalette.secondary20;

  Color get chevronColor => paymentMethod != null ? ColorPalette.neutral70 : ColorPalette.secondary40;

  Color get iconColor => paymentMethod != null ? ColorPalette.primary30 : ColorPalette.secondary40;

  Widget icon(BuildContext context) => paymentMethod != null
      ? paymentMethod!.icon()
      : Icon(
          Ionicons.card,
          size: 24,
          color: iconColor,
        );
}
