import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class InvoiceItem extends StatelessWidget {
  final String title;
  final String currency;
  final double value;

  const InvoiceItem({
    super.key,
    required this.title,
    required this.currency,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        const Spacer(),
        Text(value.formatCurrency(currency)),
      ],
    );
  }
}
