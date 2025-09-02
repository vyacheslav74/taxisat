import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class AppDialogHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final Color iconColor;

  const AppDialogHeader({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.iconColor = ColorPalette.primary30,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 24,
        ),
        Icon(
          icon,
          color: iconColor,
          size: 24,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: context.headlineSmall,
        ),
        const SizedBox(
          height: 12,
        ),
        if (subtitle != null) ...[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              subtitle!,
              style: context.bodyMedium?.copyWith(
                color: context.theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
        ]
      ],
    );
  }
}
