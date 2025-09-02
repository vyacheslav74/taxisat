import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/app_menu_item.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: context.responsive(16, xl: 24),
        vertical: context.responsive(
          16,
          xl: 24,
        ),
      ),
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          context.responsive(const SizedBox(), xl: const SizedBox(height: 80)),
          AppTopBar(title: context.translate.settings),
          const SizedBox(
            height: 24,
          ),
          if (Env.isDemoMode) ...[
            AppMenuItem(
              icon: Ionicons.map,
              title: context.translate.mapSettings,
              onPressed: () {
                context.router.push(const MapSettingsRoute());
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
          AppMenuItem(
            icon: Ionicons.globe,
            title: context.translate.lanugageSettings,
            onPressed: () {
              context.router.push(const LanguageSettingsRoute());
            },
          ),
        ],
      )),
    );
  }
}
