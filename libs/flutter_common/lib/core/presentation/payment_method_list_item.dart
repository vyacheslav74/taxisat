import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/rounded_checkbox.dart';

class PaymentMethodListItem extends StatelessWidget {
  final PaymentMethodUnion paymentMethod;
  final bool isSelected;
  final Function() onPressed;

  const PaymentMethodListItem({
    super.key,
    required this.paymentMethod,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      minSize: 0,
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        children: [
          paymentMethod.icon(),
          const SizedBox(width: 12),
          Text(paymentMethod.name(context), style: context.labelLarge),
          const Spacer(),
          RoundedCheckbox(isSelected: isSelected)
        ],
      ),
    );
  }
}
