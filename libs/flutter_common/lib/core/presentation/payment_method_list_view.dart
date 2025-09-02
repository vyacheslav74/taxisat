import 'package:flutter/material.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

import 'payment_method_list_item.dart';

class PaymentMethodListView extends StatefulWidget {
  final List<PaymentMethodUnion> paymentMethods;
  final PaymentMethodUnion? selectedPaymentMethod;
  final Function(PaymentMethodUnion?) onSelected;

  const PaymentMethodListView({
    super.key,
    required this.paymentMethods,
    required this.selectedPaymentMethod,
    required this.onSelected,
  });

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  PaymentMethodUnion? paymentMethod;

  @override
  void initState() {
    paymentMethod = widget.selectedPaymentMethod;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 8),
        Text(
          context.t.selectPaymentMethod + ":",
          style: context.titleSmall,
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 200,
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final item = widget.paymentMethods[index];
              return PaymentMethodListItem(
                paymentMethod: item,
                isSelected: paymentMethod == item,
                onPressed: () {
                  setState(() => paymentMethod = item);
                  widget.onSelected(paymentMethod);
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                indent: 24,
              );
            },
            itemCount: widget.paymentMethods.length,
          ),
        ),
      ],
    );
  }
}
