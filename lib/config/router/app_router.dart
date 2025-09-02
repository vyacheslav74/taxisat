import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:rider_flutter/core/enums/address_type.dart';
import 'package:rider_flutter/features/announcements/presentation/screens/announcements_screen.dart';
import 'package:rider_flutter/features/auth/presentation/screens/auth_screen.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/screens/add_screen.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/screens/edit_screen.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/screens/list_screen.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/screens/favorite_locations_screen.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/screens/locate_screen.dart';
import 'package:rider_flutter/features/home/presentation/screens/home_screen.dart';
import 'package:rider_flutter/features/navigation/presentation/screens/navigation_screen.dart';
import 'package:rider_flutter/features/payment_methods/presentation/screens/payment_methods_screen.dart';
import 'package:rider_flutter/features/profile/presentation/screens/edit_phone_number_screen.dart';
import 'package:rider_flutter/features/profile/presentation/screens/favorite_drivers_screen.dart';
import 'package:rider_flutter/features/profile/presentation/screens/profile_info_screen.dart';
import 'package:rider_flutter/features/profile/presentation/screens/profile_parent_screen.dart';
import 'package:rider_flutter/features/profile/presentation/screens/profile_screen.dart';
import 'package:rider_flutter/features/ride_history/presentation/screens/ride_history_details_screen.dart';
import 'package:rider_flutter/features/ride_history/presentation/screens/ride_history_screen.dart';
import 'package:rider_flutter/features/scheduled_rides/presentation/screens/scheduled_ride_details_screen.dart';
import 'package:rider_flutter/features/scheduled_rides/presentation/screens/scheduled_rides_screen.dart';
import 'package:rider_flutter/features/settings/presentation/screens/language_settings_screen.dart';
import 'package:rider_flutter/features/settings/presentation/screens/map_settings_screen.dart';
import 'package:rider_flutter/features/settings/presentation/screens/settings_parent_screen.dart';
import 'package:rider_flutter/features/settings/presentation/screens/settings_screen.dart';
import 'package:rider_flutter/features/wallet/presentation/screens/wallet_parent_screen.dart';
import 'package:rider_flutter/features/wallet/presentation/screens/wallet_screen.dart';

import 'onboarding_guard.dart';

part 'app_router.gr.dart';

@Singleton()
@AutoRouterConfig(replaceInRouteName: 'Screen|Dialog|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, path: '/auth'),
        AutoRoute(
          path: '/',
          page: NavigationRoute.page,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: 'home',
              initial: true,

            ),
            AutoRoute(
              page: ProfileParentRoute.page,
              path: 'profile',
              children: [
                AutoRoute(
                  page: ProfileRoute.page,
                  path: '',
                  initial: true,
                ),
                AutoRoute(
                  page: ProfileInfoRoute.page,
                  path: 'info',
                ),
                AutoRoute(
                  page: EditPhoneNumberRoute.page,
                  path: 'edit-phone-number',
                ),
                AutoRoute(
                  page: FavoriteDriversRoute.page,
                  path: 'favorite-drivers',
                ),
              ],
            ),
            AutoRoute(
              page: AnnouncementsRoute.page,
              path: 'announcements',
            ),
            AutoRoute(
              page: WalletParentRoute.page,
              path: 'wallet',
              children: [
                AutoRoute(
                  page: WalletRoute.page,
                  path: '',
                  initial: true,
                ),
                AutoRoute(
                  page: PaymentMethodsRoute.page,
                  path: 'payment-methods',
                ),
              ],
            ),
            AutoRoute(
              page: FavoriteLocationsRoute.page,
              path: 'favorite-locations',
              children: [
                AutoRoute(page: FavoriteLocationsListRoute.page, path: '', initial: true),
                AutoRoute(page: AddFavoriteLocationRoute.page, path: 'add'),
                AutoRoute(page: EditFavoriteLocationRoute.page, path: 'edit'),
                AutoRoute(page: LocateFavoriteLocationRoute.page, path: 'locate'),
              ],
            ),
            AutoRoute(
              page: ScheduledRidesRoute.page,
              path: 'scheduled-rides',
            ),
            AutoRoute(
              page: ScheduledRideDetailsRoute.page,
              path: 'scheduled-rides/details',
            ),
            AutoRoute(
              page: RideHistoryRoute.page,
              path: 'ride-history',
            ),
            AutoRoute(
              page: RideHistoryDetailsRoute.page,
              path: 'ride-history/details',
            ),
            AutoRoute(page: SettingsParentRoute.page, path: 'settings', children: [
              AutoRoute(
                page: SettingsRoute.page,
                path: '',
                initial: true,
              ),
              AutoRoute(
                page: MapSettingsRoute.page,
                path: 'map',
              ),
              AutoRoute(
                page: LanguageSettingsRoute.page,
                path: 'language',
              ),
            ])
          ],
        ),
      ];
}
