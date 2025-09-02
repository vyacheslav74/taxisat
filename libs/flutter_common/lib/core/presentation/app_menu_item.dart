import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class AppMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onPressed;

  const AppMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: const EdgeInsets.all(0),
      onPressed: onPressed,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: ColorPalette.neutralVariant99,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: ColorPalette.neutral90,
              ),
            ),
            child: Icon(
              icon,
              color: ColorPalette.primary30,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.labelLarge,
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle!,
                    style: context.labelLarge,
                  ),
                ]
              ],
            ),
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
    );
  }
}
