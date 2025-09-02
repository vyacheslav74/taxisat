import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_close_button.dart';

class AppDialogHeaderExpanded extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final Color iconColor;
  final Function()? onBackPressed;

  const AppDialogHeaderExpanded({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.iconColor,
    required this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorPalette.neutral90,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 27,
                ),
              ),
              const Spacer(),
              if (onBackPressed != null) AppCloseButton(onPressed: onBackPressed!),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            title,
            style: context.headlineSmall?.copyWith(
              color: context.theme.colorScheme.onSurface,
            ),
          ),
          if (subtitle != null) ...[
            const SizedBox(
              height: 4,
            ),
            Text(
              subtitle!,
              style: context.bodyMedium?.copyWith(
                color: context.theme.colorScheme.onSurface,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
