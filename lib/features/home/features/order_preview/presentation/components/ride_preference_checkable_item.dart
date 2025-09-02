import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class RidePreferenceCheckableItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final double? fee;
  final String? currency;
  final bool isSelected;
  final Function(bool) onChanged;

  const RidePreferenceCheckableItem({
    super.key,
    required this.title,
    required this.icon,
    this.fee,
    this.currency,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: () {
        onChanged(!isSelected);
      },
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: backgroundColor,
              border: Border.all(
                color: borderColor,
                width: 2,
              ),
            ),
            child: Icon(
              icon,
              size: 24,
              color: ColorPalette.primary30,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: context.labelLarge,
            ),
          ),
          if (fee != null && currency != null) ...[
            const SizedBox(width: 8),
            Text(
              "+${fee!.formatCurrency(currency!)}",
              style: context.labelSmall,
            ),
            const SizedBox(width: 8),
          ],
          Checkbox(
              value: isSelected,
              onChanged: (_) {
                onChanged(!isSelected);
              })
        ],
      ),
    );
  }

  Color get borderColor => isSelected ? ColorPalette.primary40 : ColorPalette.neutral90;

  Color get backgroundColor => isSelected ? ColorPalette.primary95 : ColorPalette.neutralVariant95;
}
