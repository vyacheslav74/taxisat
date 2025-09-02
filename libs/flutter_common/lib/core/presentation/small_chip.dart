import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

import '../color_palette/color_palette.dart';

class SmallChip extends StatelessWidget {
  final String text;
  final Widget icon;

  const SmallChip({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ColorPalette.primary95,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: context.labelMedium,
          ),
          const SizedBox(width: 8),
          icon
        ],
      ),
    );
  }
}
