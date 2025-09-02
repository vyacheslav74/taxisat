import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class AppBorderedButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final Color textColor;
  final bool isPrimary;
  final bool isDisabled;
  final IconData? icon;

  const AppBorderedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.textColor = ColorPalette.primary30,
    this.isPrimary = false,
    this.isDisabled = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ColorPalette.primary95,
        ),
      ),
      child: CupertinoButton(
        padding: const EdgeInsets.all(12),
        onPressed: isDisabled ? null : onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(icon, color: textColor),
              ),
            Text(
              title,
              style: isPrimary
                  ? context.titleSmall?.copyWith(color: textColor)
                  : context.bodyMedium?.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
