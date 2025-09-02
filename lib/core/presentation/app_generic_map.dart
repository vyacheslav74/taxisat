import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/enums/map_provider_enum.prod.dart';
import 'package:generic_map/generic_map.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/core/blocs/settings.dart';

class AppGenericMap extends StatelessWidget {
  final MapViewMode mode;
  final CenterMarker Function(
    BuildContext context,
    GlobalKey key,
    String? address,
  )? centerMarkerBuilder;
  final AddressResolver? addressResolver;
  final bool interactive;
  final Function(MapViewController)? onControllerReady;
  final Function(Place?)? onMapMoved;
  final Place initialLocation;
  final List<PolyLineLayer> polylines;
  final List<CustomMarker> markers;
  final List<CircleMarker> circleMarkers;
  final EdgeInsets padding;

  const AppGenericMap({
    super.key,
    required this.initialLocation,
    this.mode = MapViewMode.static,
    this.onControllerReady,
    this.polylines = const [],
    this.onMapMoved,
    this.interactive = false,
    this.padding = EdgeInsets.zero,
    this.markers = const <CustomMarker>[],
    this.centerMarkerBuilder,
    this.addressResolver,
    this.circleMarkers = const [],
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      buildWhen: (previous, current) => previous.provider != current.provider,
      builder: (context, state) {
        return GenericMap(
          provider: provider(state.mapProviderEnum),
          mode: mode,
          centerMarkerBuilder: centerMarkerBuilder,
          addressResolver: addressResolver,
          interactive: interactive,
          onControllerReady: onControllerReady,
          onMapMoved: onMapMoved,
          initialLocation: initialLocation,
          polylines: polylines,
          markers: markers,
          circleMarkers: circleMarkers,
          padding: padding,
        );
      },
    );
  }

  MapProvider provider(MapProviderEnum settingsProvider) {
    if (Env.isDemoMode) {
      return settingsProvider.providerObject;
    } else {
      return Constants.defaultMapProvider.providerObject;
    }
  }
}
