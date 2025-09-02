import 'package:flutter/material.dart';
import 'package:rider_flutter/features/home/presentation/components/home_info_panel.dart';
import 'package:rider_flutter/features/home/presentation/components/home_map.dart';
import 'package:rider_flutter/features/home/presentation/components/my_location_button.dart';
import 'package:rider_flutter/features/home/presentation/screens/desktop_layout_delegate.dart';

class HomeScreenDesktop extends StatefulWidget {
  const HomeScreenDesktop({super.key});

  @override
  State<HomeScreenDesktop> createState() => _HomeScreenDesktopState();
}

class _HomeScreenDesktopState extends State<HomeScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: DesktopLayoutDelegate(),
      children: [
        LayoutId(
          id: DesktopLayoutDelegate.mapLayoutId,
          child: const HomeMap(),
        ),
        LayoutId(
          id: DesktopLayoutDelegate.cardLayoutId,
          child: const HomeInfoPanel(),
        ),
        LayoutId(
          id: DesktopLayoutDelegate.myLocationButtonId,
          child: const AppMyLocationButton(),
        ),
      ],
    );
  }
}
