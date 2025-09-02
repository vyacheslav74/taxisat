import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData? icon;

  const AppIconButton({
    super.key,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: const EdgeInsets.all(0),
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: ColorPalette.neutralVariant95,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: ColorPalette.primary30,
          size: 20,
        ),
      ),
    );
  }
}
