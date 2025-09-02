import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class PaymentMethodView extends StatelessWidget {
  final PaymentMethodUnion paymentMethod;

  const PaymentMethodView({
    super.key,
    required this.paymentMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: ColorPalette.neutralVariant99,
        border: Border.all(
          width: 2,
          color: ColorPalette.primary95,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          paymentMethod.icon(color: ColorPalette.primary30),
          const SizedBox(width: 12),
          Text(
            paymentMethod.name(context),
            style: context.labelLarge,
          ),
        ],
      ),
    );
  }
}
