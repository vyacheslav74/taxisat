// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ionicons/ionicons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

enum NavItem {
  home,
  profile,
  announcements,
  wallet,
  favoriteLocations,
  reservedRides,
  rideHistory,
  signIn,
  settings,
  about,
  logout,
}

const signedInNavItems = [
  NavItem.profile,
  NavItem.announcements,
  NavItem.wallet,
  NavItem.favoriteLocations,
  NavItem.reservedRides,
  NavItem.rideHistory,
  NavItem.settings,
  NavItem.about,
];

const signedOutNavItems = [
  NavItem.signIn,
  NavItem.settings,
  NavItem.about,
];

extension NavItemX on NavItem {
  String name(BuildContext context) {
    switch (this) {
      case NavItem.home:
        return context.translate.home;
      case NavItem.profile:
        return context.translate.profile;
      case NavItem.announcements:
        return context.translate.announcements;
      case NavItem.wallet:
        return context.translate.wallet;
      case NavItem.favoriteLocations:
        return context.translate.favoriteLocations;
      case NavItem.reservedRides:
        return context.translate.scheduledRides;
      case NavItem.rideHistory:
        return context.translate.rideHistory;
      case NavItem.signIn:
        return context.translate.signInSignUp;
      case NavItem.settings:
        return context.translate.settings;
      case NavItem.about:
        return context.translate.about;
      case NavItem.logout:
        return context.translate.logout;
    }
  }

  IconData get icon {
    switch (this) {
      case NavItem.home:
        return Ionicons.home;
      case NavItem.profile:
        return Ionicons.person;
      case NavItem.announcements:
        return Ionicons.megaphone;
      case NavItem.wallet:
        return Ionicons.wallet;
      case NavItem.favoriteLocations:
        return Ionicons.heart;
      case NavItem.reservedRides:
        return Ionicons.calendar;
      case NavItem.rideHistory:
        return Ionicons.time;
      case NavItem.signIn:
        return Ionicons.log_in;
      case NavItem.settings:
        return Ionicons.settings;
      case NavItem.about:
        return Ionicons.information_circle;
      case NavItem.logout:
        return Ionicons.log_out;
    }
  }

  PageRouteInfo get route {
    switch (this) {
      case NavItem.signIn:
        return const AuthRoute();

      case NavItem.profile:
        return const ProfileParentRoute();

      case NavItem.announcements:
        return const AnnouncementsRoute();

      case NavItem.wallet:
        return const WalletParentRoute();

      case NavItem.favoriteLocations:
        return const FavoriteLocationsRoute();

      case NavItem.reservedRides:
        return const ScheduledRidesRoute();

      case NavItem.rideHistory:
        return const RideHistoryRoute();

      case NavItem.settings:
        return const SettingsParentRoute();

      default:
        return const HomeRoute();
    }
  }

  onPressed(BuildContext context) async {
    switch (this) {
      case NavItem.signIn:
        context.router.push(route);
        break;

      case NavItem.about:
        final platform = await PackageInfo.fromPlatform();
        showAboutDialog(
          context: context,
          applicationIcon: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              dotenv.maybeGet('LOGO') ?? Assets.images.logo.path,
              width: 100,
              height: 100,
            ),
          ),
          applicationVersion: "${platform.version} (Build ${platform.buildNumber})",
          applicationName: Env.appName,
        
        );
        break;

      case NavItem.logout:
        locator<AuthBloc>().onLoggedOut();
        context.router.replaceAll([const AuthRoute()]);
        break;
      default:
        context.router.push(route);
    }
  }
}
