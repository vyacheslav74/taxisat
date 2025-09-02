import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class IconDestination extends StatelessWidget {
  final bool isPickupPoint;

  const IconDestination({
    super.key,
    this.isPickupPoint = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        size: 20,
        color: ColorPalette.neutralVariant99,
      ),
    );
  }

  Color get backgroundColor => isPickupPoint ? ColorPalette.primary50 : ColorPalette.tertiary60;

  IconData get icon => isPickupPoint ? Ionicons.locate : Ionicons.location;
}
