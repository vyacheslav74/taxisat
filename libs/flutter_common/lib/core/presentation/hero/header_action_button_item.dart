import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:ionicons/ionicons.dart';

class HeaderActionButtonItem extends StatelessWidget {
  final String title;
  final String subtilte;
  final IconData icon;
  final VoidCallback? onPressed;
  final Color iconColor;

  const HeaderActionButtonItem({
    super.key,
    required this.title,
    required this.subtilte,
    required this.icon,
    this.onPressed,
    this.iconColor = ColorPalette.primary80,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: const EdgeInsets.all(0),
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 12),
        child: Column(
          children: [
            Text(
              title,
              style: context.bodySmall
                  ?.copyWith(color: ColorPalette.neutralVariant50),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  icon,
                  color: iconColor,
                ),
                const SizedBox(width: 8),
                Text(
                  subtilte,
                  style: context.labelLarge,
                ),
                if (onPressed != null) ...[
                  const SizedBox(width: 4),
                  const Icon(
                    Ionicons.chevron_forward,
                    color: ColorPalette.neutral70,
                    size: 16,
                  ),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }
}
