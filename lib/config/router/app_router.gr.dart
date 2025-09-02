// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddFavoriteLocationScreen]
class AddFavoriteLocationRoute
    extends PageRouteInfo<AddFavoriteLocationRouteArgs> {
  AddFavoriteLocationRoute({
    Key? key,
    AddressType? defaultAddressType,
    List<PageRouteInfo>? children,
  }) : super(
          AddFavoriteLocationRoute.name,
          args: AddFavoriteLocationRouteArgs(
            key: key,
            defaultAddressType: defaultAddressType,
          ),
          initialChildren: children,
        );

  static const String name = 'AddFavoriteLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddFavoriteLocationRouteArgs>(
          orElse: () => const AddFavoriteLocationRouteArgs());
      return AddFavoriteLocationScreen(
        key: args.key,
        defaultAddressType: args.defaultAddressType,
      );
    },
  );
}

class AddFavoriteLocationRouteArgs {
  const AddFavoriteLocationRouteArgs({
    this.key,
    this.defaultAddressType,
  });

  final Key? key;

  final AddressType? defaultAddressType;

  @override
  String toString() {
    return 'AddFavoriteLocationRouteArgs{key: $key, defaultAddressType: $defaultAddressType}';
  }
}

/// generated route for
/// [AnnouncementsScreen]
class AnnouncementsRoute extends PageRouteInfo<void> {
  const AnnouncementsRoute({List<PageRouteInfo>? children})
      : super(
          AnnouncementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnnouncementsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AnnouncementsScreen();
    },
  );
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthScreen();
    },
  );
}

/// generated route for
/// [EditFavoriteLocationScreen]
class EditFavoriteLocationRoute
    extends PageRouteInfo<EditFavoriteLocationRouteArgs> {
  EditFavoriteLocationRoute({
    Key? key,
    required FavoriteLocationEntity entity,
    List<PageRouteInfo>? children,
  }) : super(
          EditFavoriteLocationRoute.name,
          args: EditFavoriteLocationRouteArgs(
            key: key,
            entity: entity,
          ),
          initialChildren: children,
        );

  static const String name = 'EditFavoriteLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditFavoriteLocationRouteArgs>();
      return EditFavoriteLocationScreen(
        key: args.key,
        entity: args.entity,
      );
    },
  );
}

class EditFavoriteLocationRouteArgs {
  const EditFavoriteLocationRouteArgs({
    this.key,
    required this.entity,
  });

  final Key? key;

  final FavoriteLocationEntity entity;

  @override
  String toString() {
    return 'EditFavoriteLocationRouteArgs{key: $key, entity: $entity}';
  }
}

/// generated route for
/// [EditPhoneNumberScreen]
class EditPhoneNumberRoute extends PageRouteInfo<void> {
  const EditPhoneNumberRoute({List<PageRouteInfo>? children})
      : super(
          EditPhoneNumberRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditPhoneNumberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditPhoneNumberScreen();
    },
  );
}

/// generated route for
/// [FavoriteDriversScreen]
class FavoriteDriversRoute extends PageRouteInfo<void> {
  const FavoriteDriversRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteDriversRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteDriversRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoriteDriversScreen();
    },
  );
}

/// generated route for
/// [FavoriteLocationsListScreen]
class FavoriteLocationsListRoute extends PageRouteInfo<void> {
  const FavoriteLocationsListRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteLocationsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteLocationsListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoriteLocationsListScreen();
    },
  );
}

/// generated route for
/// [FavoriteLocationsScreen]
class FavoriteLocationsRoute extends PageRouteInfo<void> {
  const FavoriteLocationsRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteLocationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteLocationsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoriteLocationsScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LanguageSettingsScreen]
class LanguageSettingsRoute extends PageRouteInfo<void> {
  const LanguageSettingsRoute({List<PageRouteInfo>? children})
      : super(
          LanguageSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LanguageSettingsScreen();
    },
  );
}

/// generated route for
/// [LocateFavoriteLocationScreen]
class LocateFavoriteLocationRoute extends PageRouteInfo<void> {
  const LocateFavoriteLocationRoute({List<PageRouteInfo>? children})
      : super(
          LocateFavoriteLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocateFavoriteLocationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LocateFavoriteLocationScreen();
    },
  );
}

/// generated route for
/// [MapSettingsScreen]
class MapSettingsRoute extends PageRouteInfo<void> {
  const MapSettingsRoute({List<PageRouteInfo>? children})
      : super(
          MapSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MapSettingsScreen();
    },
  );
}

/// generated route for
/// [NavigationScreen]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NavigationScreen();
    },
  );
}

/// generated route for
/// [PaymentMethodsScreen]
class PaymentMethodsRoute extends PageRouteInfo<void> {
  const PaymentMethodsRoute({List<PageRouteInfo>? children})
      : super(
          PaymentMethodsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentMethodsScreen();
    },
  );
}

/// generated route for
/// [ProfileInfoScreen]
class ProfileInfoRoute extends PageRouteInfo<void> {
  const ProfileInfoRoute({List<PageRouteInfo>? children})
      : super(
          ProfileInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileInfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileInfoScreen();
    },
  );
}

/// generated route for
/// [ProfileParentScreen]
class ProfileParentRoute extends PageRouteInfo<void> {
  const ProfileParentRoute({List<PageRouteInfo>? children})
      : super(
          ProfileParentRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileParentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileParentScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [RideHistoryDetailsScreen]
class RideHistoryDetailsRoute
    extends PageRouteInfo<RideHistoryDetailsRouteArgs> {
  RideHistoryDetailsRoute({
    Key? key,
    required OrderCompactEntity entity,
    List<PageRouteInfo>? children,
  }) : super(
          RideHistoryDetailsRoute.name,
          args: RideHistoryDetailsRouteArgs(
            key: key,
            entity: entity,
          ),
          initialChildren: children,
        );

  static const String name = 'RideHistoryDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RideHistoryDetailsRouteArgs>();
      return RideHistoryDetailsScreen(
        key: args.key,
        entity: args.entity,
      );
    },
  );
}

class RideHistoryDetailsRouteArgs {
  const RideHistoryDetailsRouteArgs({
    this.key,
    required this.entity,
  });

  final Key? key;

  final OrderCompactEntity entity;

  @override
  String toString() {
    return 'RideHistoryDetailsRouteArgs{key: $key, entity: $entity}';
  }
}

/// generated route for
/// [RideHistoryScreen]
class RideHistoryRoute extends PageRouteInfo<void> {
  const RideHistoryRoute({List<PageRouteInfo>? children})
      : super(
          RideHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'RideHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RideHistoryScreen();
    },
  );
}

/// generated route for
/// [ScheduledRideDetailsScreen]
class ScheduledRideDetailsRoute
    extends PageRouteInfo<ScheduledRideDetailsRouteArgs> {
  ScheduledRideDetailsRoute({
    Key? key,
    required OrderCompactEntity entity,
    List<PageRouteInfo>? children,
  }) : super(
          ScheduledRideDetailsRoute.name,
          args: ScheduledRideDetailsRouteArgs(
            key: key,
            entity: entity,
          ),
          initialChildren: children,
        );

  static const String name = 'ScheduledRideDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ScheduledRideDetailsRouteArgs>();
      return ScheduledRideDetailsScreen(
        key: args.key,
        entity: args.entity,
      );
    },
  );
}

class ScheduledRideDetailsRouteArgs {
  const ScheduledRideDetailsRouteArgs({
    this.key,
    required this.entity,
  });

  final Key? key;

  final OrderCompactEntity entity;

  @override
  String toString() {
    return 'ScheduledRideDetailsRouteArgs{key: $key, entity: $entity}';
  }
}

/// generated route for
/// [ScheduledRidesScreen]
class ScheduledRidesRoute extends PageRouteInfo<void> {
  const ScheduledRidesRoute({List<PageRouteInfo>? children})
      : super(
          ScheduledRidesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScheduledRidesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ScheduledRidesScreen();
    },
  );
}

/// generated route for
/// [SettingsParentScreen]
class SettingsParentRoute extends PageRouteInfo<void> {
  const SettingsParentRoute({List<PageRouteInfo>? children})
      : super(
          SettingsParentRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsParentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsParentScreen();
    },
  );
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}

/// generated route for
/// [WalletParentScreen]
class WalletParentRoute extends PageRouteInfo<void> {
  const WalletParentRoute({List<PageRouteInfo>? children})
      : super(
          WalletParentRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletParentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalletParentScreen();
    },
  );
}

/// generated route for
/// [WalletScreen]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute({List<PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WalletScreen();
    },
  );
}
