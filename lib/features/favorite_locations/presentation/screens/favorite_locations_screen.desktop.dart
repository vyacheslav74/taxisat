import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:generic_map/generic_map.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/settings.dart';
import 'package:rider_flutter/core/datasources/geo_datasource.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_address.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/core/presentation/app_generic_map.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/desktop_map.dart';

class FavoriteLocationsScreenDesktop extends StatefulWidget {
  final Widget child;

  const FavoriteLocationsScreenDesktop({
    super.key,
    required this.child,
  });

  @override
  State<FavoriteLocationsScreenDesktop> createState() => _FavoriteLocationsScreenDesktopState();
}

class _FavoriteLocationsScreenDesktopState extends State<FavoriteLocationsScreenDesktop> {
  MapViewController? mapController;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<FavoriteLocationsDesktopMapCubit>(),
      child: Row(
        children: [
          Expanded(
            child: BlocConsumer<FavoriteLocationsDesktopMapCubit, FavoriteLocationsDesktopMapState>(
              listener: (context, state) {
                state.mapOrNull(
                  list: (list) {
                    mapController?.fitBounds(
                      list.locations.map((e) => e.place.latLng2).toList(),
                    );
                  },
                  viewOne: (viewOne) {
                    mapController?.moveCamera(
                      viewOne.location.latLng2,
                      16,
                    );
                  },
                  locate: (locate) {
                    if (locate.centerLocation == null) return;
                    mapController?.moveCamera(
                      locate.centerLocation!.latLng2,
                      16,
                    );
                  },
                );
              },
              builder: (context, state) {
                return AppGenericMap(
                  initialLocation: Constants.defaultLocation.toGenericMapPlace,
                  mode: state.maybeMap(
                    orElse: () => MapViewMode.static,
                  ),
                  markers: state.markers,
                  interactive: true,
                  padding: const EdgeInsets.all(148),
                  onControllerReady: (controller) {
                    mapController = controller;
                    locator<FavoriteLocationsDesktopMapCubit>().onStarted();
                  },
                  addressResolver: (provider, latlng) async {
                    final settingsState = locator<SettingsCubit>().state;
                    final result = await locator<GeoDatasource>().getAddressForLocation(
                      latLng: latlng,
                      language: settingsState.locale,
                      mapProvider: settingsState.mapProviderEnum,
                    );
                    return result.fold(
                      (l) => PlaceEntity(coordinates: latlng.toLatLngEntity, address: "").toGenericMapPlace,
                      (r) => r.toGenericMapPlace,
                    );
                  },
                  centerMarkerBuilder: (context, key, address) {
                    return AppMarkerAddresss(
                      key: key,
                      title: context.translate.dragToSelect,
                      address: state.maybeMap(
                        orElse: () => "",
                        locate: (locate) => locate.centerLocation?.address ?? "",
                      ),
                    ).centerMarker;
                  },
                  onMapMoved: (place) {
                    locator<FavoriteLocationsDesktopMapCubit>().locate(
                      centerLocation: place?.toPlaceEntity,
                    );
                  },
                );
              },
            ),
          ),
          Container(
            width: 420,
            padding: const EdgeInsets.only(
              top: 96,
            ),
            child: widget.child,
          )
        ],
      ),
    );
  }
}
