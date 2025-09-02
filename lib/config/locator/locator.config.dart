// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:get_it/get_it.dart' as _i174;
import 'package:graphql/client.dart' as _i763;
import 'package:injectable/injectable.dart' as _i526;
import 'package:rider_flutter/config/locator/locator.dart' as _i918;
import 'package:rider_flutter/config/router/app_router.dart' as _i547;
import 'package:rider_flutter/core/blocs/auth_bloc.dart' as _i714;
import 'package:rider_flutter/core/blocs/location.dart' as _i122;
import 'package:rider_flutter/core/blocs/place_lookup.dart' as _i412;
import 'package:rider_flutter/core/blocs/route.dart' as _i543;
import 'package:rider_flutter/core/blocs/settings.dart' as _i401;
import 'package:rider_flutter/core/datasources/geo_datasource.dart' as _i672;
import 'package:rider_flutter/core/datasources/geo_datasource.mock.dart'
    as _i324;
import 'package:rider_flutter/core/datasources/geo_datasource.prod.dart'
    as _i1039;
import 'package:rider_flutter/core/datasources/graphql_datasource.dart' as _i1;
import 'package:rider_flutter/core/datasources/graphql_datasource.prod.dart'
    as _i668;
import 'package:rider_flutter/core/datasources/location_datasource.dart'
    as _i449;
import 'package:rider_flutter/core/datasources/location_datasource.mock.dart'
    as _i887;
import 'package:rider_flutter/core/datasources/location_datasource.prod.dart'
    as _i470;
import 'package:rider_flutter/core/datasources/upload_datasource.dart' as _i32;
import 'package:rider_flutter/core/datasources/upload_datasource.prod.dart'
    as _i906;
import 'package:rider_flutter/core/repositories/firebase_repository.dart'
    as _i1015;
import 'package:rider_flutter/core/repositories/firebase_repository.mock.dart'
    as _i205;
import 'package:rider_flutter/core/repositories/firebase_repository.prod.dart'
    as _i327;
import 'package:rider_flutter/core/repositories/order_repository.dart' as _i964;
import 'package:rider_flutter/core/repositories/order_repository.mock.dart'
    as _i629;
import 'package:rider_flutter/core/repositories/order_repository.prod.dart'
    as _i97;
import 'package:rider_flutter/core/repositories/profile_repository.dart'
    as _i650;
import 'package:rider_flutter/core/repositories/profile_repository.mock.dart'
    as _i506;
import 'package:rider_flutter/core/repositories/profile_repository.prod.dart'
    as _i346;
import 'package:rider_flutter/core/repositories/wallet_repository.dart'
    as _i913;
import 'package:rider_flutter/core/repositories/wallet_repository.mock.dart'
    as _i981;
import 'package:rider_flutter/core/repositories/wallet_repository.prod.dart'
    as _i540;
import 'package:rider_flutter/features/announcements/data/repositories/announcements_repository.mock.dart'
    as _i59;
import 'package:rider_flutter/features/announcements/data/repositories/announcements_repository.prod.dart'
    as _i206;
import 'package:rider_flutter/features/announcements/domain/repositories/announcements_repository.dart'
    as _i716;
import 'package:rider_flutter/features/announcements/presentation/blocs/announcements.dart'
    as _i192;
import 'package:rider_flutter/features/auth/data/repositories/auth_repository.mock.dart'
    as _i1064;
import 'package:rider_flutter/features/auth/data/repositories/auth_repository.prod.dart'
    as _i522;
import 'package:rider_flutter/features/auth/domain/repositories/auth_repository.dart'
    as _i439;
import 'package:rider_flutter/features/auth/presentation/blocs/login.dart'
    as _i138;
import 'package:rider_flutter/features/auth/presentation/blocs/onboarding_cubit.dart'
    as _i141;
import 'package:rider_flutter/features/favorite_locations/data/repositories/favorite_locations_repository.mock.dart'
    as _i984;
import 'package:rider_flutter/features/favorite_locations/data/repositories/favorite_locations_repository.prod.dart'
    as _i971;
import 'package:rider_flutter/features/favorite_locations/domain/repositories/favorite_locations_repository.dart'
    as _i918;
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/add.dart'
    as _i891;
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/desktop_map.dart'
    as _i1073;
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/edit.dart'
    as _i276;
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/favorite_locations.dart'
    as _i725;
import 'package:rider_flutter/features/home/data/home_repository.mock.dart'
    as _i333;
import 'package:rider_flutter/features/home/data/home_repository.prod.dart'
    as _i96;
import 'package:rider_flutter/features/home/domain/repositories/home_repository.dart'
    as _i691;
import 'package:rider_flutter/features/home/features/apply_coupon/data/repositories/coupon_repository.mock.dart'
    as _i828;
import 'package:rider_flutter/features/home/features/apply_coupon/data/repositories/coupon_repository.prod.dart'
    as _i747;
import 'package:rider_flutter/features/home/features/apply_coupon/domain/repositories/coupon_repository.dart'
    as _i677;
import 'package:rider_flutter/features/home/features/order_preview/data/repositories/order_preview_repository.mock.dart'
    as _i563;
import 'package:rider_flutter/features/home/features/order_preview/data/repositories/order_preview_repository.prod.dart'
    as _i966;
import 'package:rider_flutter/features/home/features/order_preview/domain/repositories/order_preview_repository.dart'
    as _i262;
import 'package:rider_flutter/features/home/features/order_preview/presentation/blocs/order_preview.dart'
    as _i26;
import 'package:rider_flutter/features/home/features/order_preview/presentation/blocs/order_preview_args.dart'
    as _i477;
import 'package:rider_flutter/features/home/features/order_preview/presentation/blocs/order_preview_options.dart'
    as _i749;
import 'package:rider_flutter/features/home/features/rate_order/data/repositories/rate_order_repository.mock.dart'
    as _i55;
import 'package:rider_flutter/features/home/features/rate_order/data/repositories/rate_order_repository.prod.dart'
    as _i735;
import 'package:rider_flutter/features/home/features/rate_order/domain/repositories/rate_order_repository.dart'
    as _i171;
import 'package:rider_flutter/features/home/features/rate_order/presentation/blocs/rate_order.dart'
    as _i135;
import 'package:rider_flutter/features/home/features/track_order/data/repositories/track_order_repository.mock.dart'
    as _i101;
import 'package:rider_flutter/features/home/features/track_order/data/repositories/track_order_repository.prod.dart'
    as _i881;
import 'package:rider_flutter/features/home/features/track_order/domain/repositories/track_order_repository.dart'
    as _i1037;
import 'package:rider_flutter/features/home/features/track_order/presentation/blocs/cancel_reason.dart'
    as _i183;
import 'package:rider_flutter/features/home/features/track_order/presentation/blocs/pay_for_ride.dart'
    as _i51;
import 'package:rider_flutter/features/home/features/track_order/presentation/blocs/track_order.dart'
    as _i797;
import 'package:rider_flutter/features/home/features/waypoints/presentation/blocs/selected_location_field.dart'
    as _i999;
import 'package:rider_flutter/features/home/features/welcome/data/repositories/new_order_repository.mock.dart'
    as _i911;
import 'package:rider_flutter/features/home/features/welcome/data/repositories/new_order_repository.prod.dart'
    as _i535;
import 'package:rider_flutter/features/home/features/welcome/domain/repositories/new_order_repository.dart'
    as _i890;
import 'package:rider_flutter/features/home/presentation/blocs/destination_suggestions.dart'
    as _i773;
import 'package:rider_flutter/features/home/presentation/blocs/home.dart'
    as _i830;
import 'package:rider_flutter/features/home/presentation/blocs/place_confirm.dart'
    as _i315;
import 'package:rider_flutter/features/payment_methods/data/repositories/payment_methods_repository.mock.dart'
    as _i240;
import 'package:rider_flutter/features/payment_methods/data/repositories/payment_methods_repository.prod.dart'
    as _i179;
import 'package:rider_flutter/features/payment_methods/domain/repositories/payment_methods_repository.dart'
    as _i490;
import 'package:rider_flutter/features/payment_methods/presentation/blocs/payment_methods.dart'
    as _i292;
import 'package:rider_flutter/features/profile/data/repositories/profile_repository.mock.dart'
    as _i723;
import 'package:rider_flutter/features/profile/data/repositories/profile_repository.prod.dart'
    as _i816;
import 'package:rider_flutter/features/profile/domain/repositories/profile_repository.dart'
    as _i194;
import 'package:rider_flutter/features/profile/presentation/blocs/favorite_drivers.dart'
    as _i924;
import 'package:rider_flutter/features/profile/presentation/blocs/profile.dart'
    as _i22;
import 'package:rider_flutter/features/redeem_gift_card/data/repositories/redeem_gift_card_repository.mock.dart'
    as _i409;
import 'package:rider_flutter/features/redeem_gift_card/data/repositories/redeem_gift_card_repository.prod.dart'
    as _i249;
import 'package:rider_flutter/features/redeem_gift_card/domain/repositories/redeem_gift_card_repository.dart'
    as _i483;
import 'package:rider_flutter/features/redeem_gift_card/presentation/blocs/redeem_gift_card.dart'
    as _i413;
import 'package:rider_flutter/features/ride_history/data/repositories/ride_history_repository.mock.dart'
    as _i525;
import 'package:rider_flutter/features/ride_history/data/repositories/ride_history_repository.prod.dart'
    as _i693;
import 'package:rider_flutter/features/ride_history/domain/repositories/ride_history_repository.dart'
    as _i874;
import 'package:rider_flutter/features/ride_history/presentation/blocs/report_issue.dart'
    as _i121;
import 'package:rider_flutter/features/ride_history/presentation/blocs/ride_history.dart'
    as _i457;
import 'package:rider_flutter/features/scheduled_rides/data/repositories/scheduled_rides_repository.mock.dart'
    as _i589;
import 'package:rider_flutter/features/scheduled_rides/data/repositories/scheduled_rides_repository.prod.dart'
    as _i984;
import 'package:rider_flutter/features/scheduled_rides/domain/repositories/scheduled_rides_repository.dart'
    as _i1029;
import 'package:rider_flutter/features/scheduled_rides/presentation/blocs/scheduled_rides.dart'
    as _i478;
import 'package:rider_flutter/features/wallet/data/repositories/wallet_repository.mock.dart'
    as _i1066;
import 'package:rider_flutter/features/wallet/data/repositories/wallet_repository.prod.dart'
    as _i404;
import 'package:rider_flutter/features/wallet/domain/repositories/wallet_repository.dart'
    as _i322;
import 'package:rider_flutter/features/wallet/presentation/blocs/top_up_wallet.dart'
    as _i778;
import 'package:rider_flutter/features/wallet/presentation/blocs/wallet.dart'
    as _i1039;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.factory<_i763.GraphQLClient>(() => serviceModule.create());
    gh.singleton<_i401.SettingsCubit>(() => _i401.SettingsCubit());
    gh.singleton<_i547.AppRouter>(() => _i547.AppRouter());
    gh.singleton<_i141.OnboardingCubit>(() => _i141.OnboardingCubit());
    gh.lazySingleton<_i543.RouteCubit>(() => _i543.RouteCubit());
    gh.lazySingleton<_i895.Connectivity>(() => serviceModule.connectivity);
    gh.lazySingleton<_i999.SelectedLocationFieldCubit>(
        () => _i999.SelectedLocationFieldCubit());
    gh.lazySingleton<_i477.OrderPreviewArgsCubit>(
        () => _i477.OrderPreviewArgsCubit());
    gh.lazySingleton<_i749.OrderPreviewOptionsCubit>(
        () => _i749.OrderPreviewOptionsCubit());
    gh.lazySingleton<_i1073.FavoriteLocationsDesktopMapCubit>(
        () => _i1073.FavoriteLocationsDesktopMapCubit());
    gh.lazySingleton<_i171.RateOrderRepository>(
      () => _i55.RateOrderRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i1037.TrackOrderRepository>(
      () => _i101.TrackOrderRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i490.PaymentMethodsRepository>(
      () => _i240.PaymentMethodsRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i716.AnnouncementsRepository>(
      () => _i59.AnnouncementsRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i262.OrderPreviewRepository>(
      () => _i563.OrderPreviewRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i1029.ScheduledRidesRepository>(
      () => _i589.ScheduledRidesRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i1015.FirebaseRepository>(
      () => _i205.FirebaseRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i650.ProfileRepository>(
      () => _i506.ProfileRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i194.ProfileRepository>(
      () => _i723.ProfileRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i449.LocationDatasource>(
      () => _i887.LocationDatasourceImpl(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i913.WalletRepository>(
      () => _i981.WalletRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i677.CouponRepository>(
      () => _i828.CouponRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i714.AuthBloc>(
        () => _i714.AuthBloc(gh<_i650.ProfileRepository>()));
    gh.lazySingleton<_i918.FavoriteLocationsRepository>(
      () => _i984.FavoriteLocationsRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i292.PaymentMethodsBloc>(
        () => _i292.PaymentMethodsBloc(gh<_i490.PaymentMethodsRepository>()));
    gh.lazySingleton<_i964.OrderRepository>(
      () => _i629.OrderRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i725.FavoriteLocationsCubit>(() =>
        _i725.FavoriteLocationsCubit(gh<_i918.FavoriteLocationsRepository>()));
    gh.lazySingleton<_i891.AddFavoriteLocationCubit>(() =>
        _i891.AddFavoriteLocationCubit(
            gh<_i918.FavoriteLocationsRepository>()));
    gh.lazySingleton<_i276.EditFavoriteLocationCubit>(() =>
        _i276.EditFavoriteLocationCubit(
            gh<_i918.FavoriteLocationsRepository>()));
    gh.lazySingleton<_i322.WalletRepository>(
      () => _i1066.WalletRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i483.RedeemGiftCardRepository>(
      () => _i409.RedeemGiftCardRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i890.NewOrderRepository>(
      () => _i911.NewOrderRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i691.HomeRepository>(
      () => _i333.HomeRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i439.AuthRepository>(
      () => _i1064.AuthRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i32.UploadDatasource>(() => _i906.UploadDatasourceImpl());
    gh.lazySingleton<_i797.TrackOrderBloc>(
      () => _i797.TrackOrderBloc(gh<_i1037.TrackOrderRepository>()),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i874.RideHistoryRepository>(
      () => _i525.RideHistoryRepositoryMock(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i1039.WalletBloc>(
        () => _i1039.WalletBloc(gh<_i322.WalletRepository>()));
    gh.lazySingleton<_i924.FavoriteDriversCubit>(
        () => _i924.FavoriteDriversCubit(gh<_i194.ProfileRepository>()));
    gh.lazySingleton<_i22.ProfileBloc>(
        () => _i22.ProfileBloc(gh<_i194.ProfileRepository>()));
    gh.lazySingleton<_i773.DestinationSuggestionsCubit>(() =>
        _i773.DestinationSuggestionsCubit(gh<_i890.NewOrderRepository>()));
    gh.lazySingleton<_i26.OrderPreviewCubit>(() => _i26.OrderPreviewCubit(
          gh<_i964.OrderRepository>(),
          gh<_i262.OrderPreviewRepository>(),
          gh<_i1015.FirebaseRepository>(),
        ));
    gh.lazySingleton<_i449.LocationDatasource>(
      () => _i470.LocationDatasourceImpl(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i778.TopUpWalletBloc>(
        () => _i778.TopUpWalletBloc(gh<_i913.WalletRepository>()));
    gh.lazySingleton<_i51.PayForRideCubit>(() => _i51.PayForRideCubit(
          gh<_i1037.TrackOrderRepository>(),
          gh<_i913.WalletRepository>(),
        ));
    gh.lazySingleton<_i138.LoginBloc>(
        () => _i138.LoginBloc(gh<_i439.AuthRepository>()));
    gh.lazySingleton<_i478.ScheduledRidesBloc>(
        () => _i478.ScheduledRidesBloc(gh<_i1029.ScheduledRidesRepository>()));
    gh.lazySingleton<_i192.AnnouncementsBloc>(
        () => _i192.AnnouncementsBloc(gh<_i716.AnnouncementsRepository>()));
    gh.lazySingleton<_i135.RateOrderBloc>(
        () => _i135.RateOrderBloc(gh<_i171.RateOrderRepository>()));
    gh.lazySingleton<_i183.CancelReasonCubit>(
        () => _i183.CancelReasonCubit(gh<_i1037.TrackOrderRepository>()));
    gh.lazySingleton<_i121.ReportIssueCubit>(
        () => _i121.ReportIssueCubit(gh<_i874.RideHistoryRepository>()));
    gh.lazySingleton<_i672.GeoDatasource>(
      () => _i324.GeoDatasourceImpl(gh<_i449.LocationDatasource>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i412.PlaceLookupBloc>(
        () => _i412.PlaceLookupBloc(gh<_i672.GeoDatasource>()));
    gh.lazySingleton<_i315.PlaceConfirmCubit>(
        () => _i315.PlaceConfirmCubit(gh<_i672.GeoDatasource>()));
    gh.lazySingleton<_i1.GraphqlDatasource>(() => _i668.GraphqlDatasourceImpl(
          client: gh<_i763.GraphQLClient>(),
          connectivity: gh<_i895.Connectivity>(),
        ));
    gh.lazySingleton<_i1029.ScheduledRidesRepository>(
      () => _i984.ScheduledRidesRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i483.RedeemGiftCardRepository>(
      () => _i249.RedeemGiftCardRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i874.RideHistoryRepository>(
      () => _i693.RideHistoryRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i457.RideHistoryBloc>(
        () => _i457.RideHistoryBloc(gh<_i874.RideHistoryRepository>()));
    gh.lazySingleton<_i122.LocationCubit>(() => _i122.LocationCubit(
          gh<_i449.LocationDatasource>(),
          gh<_i672.GeoDatasource>(),
        ));
    gh.lazySingleton<_i1015.FirebaseRepository>(
      () => _i327.FirebaseRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i830.HomeCubit>(() => _i830.HomeCubit(
          gh<_i691.HomeRepository>(),
          gh<_i672.GeoDatasource>(),
        ));
    gh.lazySingleton<_i413.RedeemGiftCardBloc>(
        () => _i413.RedeemGiftCardBloc(gh<_i483.RedeemGiftCardRepository>()));
    gh.lazySingleton<_i672.GeoDatasource>(
      () => _i1039.GeoDatasourceImpl(
        gh<_i1.GraphqlDatasource>(),
        gh<_i449.LocationDatasource>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i322.WalletRepository>(
      () => _i404.WalletRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i262.OrderPreviewRepository>(
      () => _i966.OrderPreviewRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i1037.TrackOrderRepository>(
      () => _i881.TrackOrderRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i439.AuthRepository>(
      () => _i522.LoginRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i964.OrderRepository>(
      () => _i97.OrderRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i691.HomeRepository>(
      () => _i96.HomeRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i716.AnnouncementsRepository>(
      () => _i206.AnnouncementsRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i171.RateOrderRepository>(
      () => _i735.RateOrderRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i490.PaymentMethodsRepository>(
      () => _i179.PaymentMethodsRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i194.ProfileRepository>(
      () => _i816.ProfileRepositoryProd(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i677.CouponRepository>(
      () => _i747.CouponRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i650.ProfileRepository>(
      () => _i346.ProfileRepositoryProd(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i890.NewOrderRepository>(
      () => _i535.NewOrderRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i918.FavoriteLocationsRepository>(
      () => _i971.FavoriteLocationsRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i913.WalletRepository>(
      () => _i540.WalletRepositoryImpl(gh<_i1.GraphqlDatasource>()),
      registerFor: {_prod},
    );
    return this;
  }
}

class _$ServiceModule extends _i918.ServiceModule {}
