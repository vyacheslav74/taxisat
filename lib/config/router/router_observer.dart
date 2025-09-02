import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/config/router/nav_item.dart';
import 'package:rider_flutter/core/blocs/route.dart';

class RouterObserver extends AutoRouterObserver {
  final Map<String, NavItem> routeMap = {
    HomeRoute.name: NavItem.home,
    AnnouncementsRoute.name: NavItem.announcements,
    ProfileRoute.name: NavItem.profile,
    WalletRoute.name: NavItem.wallet,
    FavoriteLocationsRoute.name: NavItem.favoriteLocations,
    ScheduledRidesRoute.name: NavItem.reservedRides,
    RideHistoryRoute.name: NavItem.rideHistory,
    RideHistoryDetailsRoute.name: NavItem.rideHistory,
    SettingsRoute.name: NavItem.settings,
  };

  @override
  void didPush(Route route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    final routeName = route.settings.name;
    if (routeName != null && routeMap.keys.where((e) => e.startsWith(routeName)).isNotEmpty) {
      final route = routeMap[routeName];
      locator<RouteCubit>().routeTo(route!);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    final routeName = previousRoute?.settings.name;
    if (routeName != null && routeMap.keys.where((e) => e.startsWith(routeName)).isNotEmpty) {
      final route = routeMap[routeName];
      locator<RouteCubit>().routeTo(route!);
    }
  }
}
