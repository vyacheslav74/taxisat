import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/blocs/settings.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';
import 'package:rider_flutter/features/home/presentation/blocs/place_confirm.dart';

import '../blocs/destination_suggestions.dart';
import 'home_screen.desktop.dart';
import 'home_screen.mobile.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final AppLifecycleListener _listener;
  late final LocationCubit _locationCubit;
  late final HomeCubit _homeCubit;
  late final AuthBloc _authBloc;
  late final SettingsCubit _settingsCubit;

  @override
  void initState() {
    super.initState();
    _initializeDependencies();
    _setupLifecycleListener();
    _fetchInitialData();
  }

  void _initializeDependencies() {
    _locationCubit = locator<LocationCubit>();
    _homeCubit = locator<HomeCubit>();
    _authBloc = locator<AuthBloc>();
    _settingsCubit = locator<SettingsCubit>();
  }

  void _setupLifecycleListener() {
    _listener = AppLifecycleListener(onStateChange: _onStateChanged);
  }

  void _fetchInitialData() {
    _locationCubit.fetchCurrentLocation(
      language: _settingsCubit.state.locale,
      mapProvider: _settingsCubit.state.mapProviderEnum,
    );

    _initializeAppState();

    if (_authBloc.state.isAuthenticated) {
      _authBloc.requestUserInfo();
      locator<DestinationSuggestionsCubit>().onStarted();
    }
  }

  void _initializeAppState() {
    _homeCubit.onStarted(
      authenticated: _authBloc.state.isAuthenticated,
      currentLocationPlace: _locationCubit.state.place,
    );
  }

  void _onStateChanged(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _initializeAppState();
    }
  }

  @override
  void dispose() {
    _listener.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _locationCubit),
        BlocProvider.value(value: _homeCubit),
        BlocProvider.value(value: locator<PlaceConfirmCubit>()),
      ],
      child: _AppStateListener(
        child: context.responsive(
          const HomeScreenMobile(),
          xl: const HomeScreenDesktop(),
        ),
      ),
    );
  }
}

class _AppStateListener extends StatelessWidget {
  final Widget child;

  const _AppStateListener({required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            final homeCubit = context.read<HomeCubit>();
            final locationCubit = context.read<LocationCubit>();

            homeCubit.onStarted(
              authenticated: state.isAuthenticated,
              currentLocationPlace: locationCubit.state.place,
            );

            if (state.isAuthenticated) {
              locator<DestinationSuggestionsCubit>().onStarted();
            }
          },
        ),
        BlocListener<LocationCubit, LocationState>(
          listenWhen: (previous, current) =>
          previous is LocationStateLoading &&
              current is LocationStateDetermined,
          listener: (context, state) {
            final homeCubit = context.read<HomeCubit>();

            if (_shouldShowWelcome(homeCubit.state)) {
              homeCubit.initializeWelcome(pickupPoint: state.place);
            }
          },
        ),
      ],
      child: child,
    );
  }

  bool _shouldShowWelcome(HomeState state) {
    return state.maybeMap(
      orElse: () => true,
      rideInProgress: (_) => false,
      rateDriver: (_) => false,
      ridePreview: (_) => false,
    );
  }
}