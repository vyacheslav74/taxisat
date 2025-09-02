import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/gen/assets.gen.dart';
import 'package:dotted_border/dotted_border.dart';

import 'invoice_item.dart';

class Invoice extends StatelessWidget {
  final String currency;
  final List<(String, double)> items;
  final double total;

  const Invoice({
    Key? key,
    required this.currency,
    required this.items,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12)
                  .copyWith(bottom: 32),
              child: Column(
                children: items
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: InvoiceItem(
                          title: e.$1,
                          currency: currency,
                          value: e.$2,
                        ),
                      ),
                    )
                    .toList(),
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
                    context.t.total,
                    style: context.labelMedium
                        ?.copyWith(color: ColorPalette.neutral99),
                  ),
                  const Spacer(),
                  Text(
                    total.formatCurrency(currency),
                    style: context.headlineMedium
                        ?.copyWith(color: ColorPalette.neutral99),
                  )
                ],
              )),
        )
      ],
    );
  }
}
