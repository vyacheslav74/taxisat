import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/presentation/my_location_button.dart' as button;
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/blocs/settings.dart';
import 'package:rider_flutter/core/datasources/geo_datasource.dart';

import '../blocs/home.dart';

class AppMyLocationButton extends StatelessWidget {
  const AppMyLocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          welcome: (_) => button.MyLocationButton(
            onPressed: () async {
              final settingsState = locator<SettingsCubit>().state;
              final location = await locator<GeoDatasource>().getCurrentLocation(
                language: settingsState.locale,
                mapProvider: settingsState.mapProviderEnum,
              );
              location.fold((l) {
                final myLocation = locator<LocationCubit>().state.place;
                if (myLocation != null) {
                  locator<HomeCubit>().onMapMoved(selectedLocation: myLocation);
                }
              }, (r) {
                locator<HomeCubit>().onMapMoved(selectedLocation: r);
              });
            },
          ),
        );
      },
    );
  }
}
