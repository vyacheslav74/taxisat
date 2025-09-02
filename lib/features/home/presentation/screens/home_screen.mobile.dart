import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/presentation/app_drawer.dart';
import 'package:rider_flutter/features/home/presentation/components/home_info_panel.dart';
import 'package:rider_flutter/features/home/presentation/components/home_map.dart';
import 'package:rider_flutter/features/home/presentation/components/my_location_button.dart';
import 'package:rider_flutter/features/home/presentation/screens/mobile_layout_delegate.dart';

import '../blocs/home.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  State<HomeScreenMobile> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      body: CustomMultiChildLayout(
        delegate: MobileLayoutDelegate(),
        children: [
          LayoutId(
            id: MobileLayoutDelegate.mapLayoutId,
            child: const HomeMap(),
          ),
          LayoutId(
            id: MobileLayoutDelegate.actionButtonId,
            child: SafeArea(
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const SizedBox.shrink(),
                    welcome: (_) => menuButton,
                    ridePreview: (_) => backButton,
                    confirmLocation: (_) => backButton,
                  );
                },
              ),
            ),
          ),
          LayoutId(
            id: MobileLayoutDelegate.cardLayoutId,
            child: const HomeInfoPanel(),
          ),
          LayoutId(
            id: MobileLayoutDelegate.myLocationButtonId,
            child: const AppMyLocationButton(),
          ),
        ],
      ),
    );
  }

  Widget get menuButton => FloatingActionButton.small(
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        child: const Icon(Ionicons.menu),
      );

  Widget get backButton => FloatingActionButton.small(
        onPressed: () {
          locator<HomeCubit>().state.maybeMap(
                orElse: () => throw Exception('Это действие можно вызвать только из состояния предварительного просмотра поездки'),
                ridePreview: (value) {
                  locator<HomeCubit>().initializeWelcome(
                    pickupPoint: locator<LocationCubit>().state.place,
                  );
                },
                confirmLocation: (value) {
                  locator<HomeCubit>().showWaypoints(
                    waypoints: value.waypoints,
                  );
                },
              );
        },
        child: const Icon(Ionicons.arrow_back),
      );
}
