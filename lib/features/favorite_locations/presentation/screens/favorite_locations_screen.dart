import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

import 'favorite_locations_screen.desktop.dart';
import 'favorite_locations_screen.mobile.dart';

@RoutePage()
class FavoriteLocationsScreen extends StatelessWidget {
  const FavoriteLocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: ColorPalette.neutralVariant99,
        child: context.responsive(
          FavoriteLocationsScreenMobile(
            child: autoRouter,
          ),
          xl: FavoriteLocationsScreenDesktop(
            child: autoRouter,
          ),
        ),
      ),
    );
  }

  AutoRouter get autoRouter => const AutoRouter();
}
