import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/place_lookup.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/screens/locate_screen.desktop.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/screens/locate_screen.mobile.dart';

@RoutePage()
class LocateFavoriteLocationScreen extends StatelessWidget {
  const LocateFavoriteLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<PlaceLookupBloc>(),
      child: context.responsive(
        const LocateFavoriteLocationScreenMobile(),
        xl: const LocateFavoriteLocationScreenDesktop(),
      ),
    );
  }
}
