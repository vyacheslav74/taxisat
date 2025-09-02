import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_back_button.dart';
import 'package:auto_route/auto_route.dart';

class AppTopBar extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? trailing;

  const AppTopBar({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppBackButton(
              onPressed: () => context.router.maybePop(),
            ),
            if (trailing != null) ...[
              const Spacer(),
              trailing!,
            ],
          ],
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: context.headlineSmall,
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 8),
          Text(
            subtitle!,
            style: context.bodyLarge,
          ),
        ]
      ],
    );
  }
}
