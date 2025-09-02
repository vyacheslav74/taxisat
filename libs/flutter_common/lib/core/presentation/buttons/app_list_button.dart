import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class AppListButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onPressed;
  final Color? iconColor;

  const AppListButton({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.onPressed,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: ColorPalette.neutral90,
              ),
            ),
            child: Icon(
              icon,
              color: iconColor ?? ColorPalette.primary30,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.labelLarge,
                ),
                if (subtitle != null)
                  Text(
                    subtitle!,
                    style: context.bodyMedium?.copyWith(
                        color: context.theme.colorScheme.onSurfaceVariant),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
