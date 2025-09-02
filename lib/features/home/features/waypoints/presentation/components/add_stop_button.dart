import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class AddSpotButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddSpotButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const ShapeDecoration(
          color: ColorPalette.primary99,
          shape: OvalBorder(
            side: BorderSide(width: 1, color: ColorPalette.primary94),
          ),
        ),
        child: const Icon(
          Ionicons.add,
          color: ColorPalette.neutral70,
          size: 18,
        ),
      ),
    );
  }
}
