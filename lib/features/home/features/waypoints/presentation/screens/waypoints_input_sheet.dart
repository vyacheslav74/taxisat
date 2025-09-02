import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/blocs/place_lookup.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/blocs/settings.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_close_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:rider_flutter/core/presentation/place_lookup_state_view.dart';
import 'package:rider_flutter/core/presentation/place_result_item.dart';
import 'package:flutter_common/core/presentation/waypoints_view/icon_destination.dart';
import 'package:flutter_common/core/presentation/waypoints_view/line_connect_destinations.dart';
import 'package:rider_flutter/features/home/presentation/blocs/destination_suggestions.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';
import 'package:rider_flutter/features/home/presentation/blocs/place_confirm.dart';

import '../blocs/selected_location_field.dart';
import '../components/add_stop_button.dart';
import '../components/location_textfield.dart';

class WaypointsInputSheet extends StatelessWidget {
  final List<PlaceEntity?> waypoints;

  const WaypointsInputSheet({
    super.key,
    required this.waypoints,
  });

  @override
  Widget build(BuildContext context) {
    final placeLookupBloc = locator<PlaceLookupBloc>();
    final homeBloc = locator<HomeCubit>();
    final selectedFieldCubit = locator<SelectedLocationFieldCubit>();

    return Container(
      color: ColorPalette.neutralVariant99,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: placeLookupBloc,
          ),
          BlocProvider.value(
            value: selectedFieldCubit,
          ),
          BlocProvider.value(
            value: locator<DestinationSuggestionsCubit>(),
          )
        ],
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Stack(
                  children: [
                    AppCloseButton(
                      onPressed: () {
                        homeBloc.closeWaypointsInput(waypoints: waypoints);
                        locator<SelectedLocationFieldCubit>().onLocationFieldSelected(null);
                      },
                    ),
                    Center(
                      child: Text(
                        context.translate.selectDestinations,
                        style: context.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocBuilder<SelectedLocationFieldCubit, int?>(
                            builder: (context, selectedLocationFieldState) {
                              return Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: waypoints
                                      .mapIndexed(
                                        (index, waypoint) => Padding(
                                          padding: const EdgeInsets.only(bottom: 16),
                                          child: LocationTextfield(
                                            // key: UniqueKey(),
                                            isFocused: selectedLocationFieldState == index,
                                            onRemoveStop: () => homeBloc.onRemoveStop(index),
                                            index: index,
                                            totalCount: waypoints.length,
                                            initialValue: waypoint,
                                            onFocused: () {
                                              placeLookupBloc.onStarted();
                                              selectedFieldCubit.onLocationFieldSelected(index);
                                            },
                                            onChanged: (value) {
                                              final settingsState = locator<SettingsCubit>().state;
                                              final locationState = locator<LocationCubit>().state;
                                              locator<PlaceLookupBloc>().add(
                                                PlaceLookupEvent.onQueryChanged(
                                                  query: value,
                                                  latLng: locationState.place?.latLng2,
                                                  radius: Env.placeSearchSearchRadius,
                                                  language: settingsState.locale,
                                                  mapProvider: settingsState.mapProviderEnum,
                                                ),
                                              );
                                            },
                                            onMapPressed: (value) {
                                              selectedFieldCubit.onLocationFieldSelected(index);
                                              showConfirmLocation(
                                                waypoints[index] ??
                                                    locator<LocationCubit>().state.place ??
                                                    Constants.defaultLocation,
                                              );
                                            },
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              );
                            },
                          ),
                          const SizedBox(width: 8),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              ...waypoints.mapIndexed((index, e) {
                                return Column(
                                  children: [
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    IconDestination(
                                      isPickupPoint: index == 0,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    if (index != waypoints.length - 1) const LineConnectDestinations(),
                                  ],
                                );
                              }),
                              if (waypoints.length < 3) ...[
                                const DottedLine(
                                  direction: Axis.vertical,
                                  dashColor: ColorPalette.neutral90,
                                  lineThickness: 3,
                                  lineLength: 24,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                AddSpotButton(onPressed: () => homeBloc.onAddStop())
                              ]
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      BlocBuilder<SelectedLocationFieldCubit, int?>(
                        builder: (context, state) {
                          if (state == null) return const SizedBox();
                          return BlocBuilder<PlaceLookupBloc, PlaceLookupState>(
                            builder: (context, state) => PlaceLookupStateView(
                              state: state,
                              initialStateView: BlocBuilder<DestinationSuggestionsCubit, DestinationSuggestionsState>(
                                builder: (context, state) => state.maybeMap(
                                  orElse: () => const SizedBox(),
                                  loaded: (loaded) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      for (var place in loaded.recents)
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            PlaceResultItem(
                                              onPressed: () => showConfirmLocation(place),
                                              title: place.title,
                                              trailing: locator<LocationCubit>().state.distanceTo(
                                                    place.coordinates.latLng,
                                                    context,
                                                  ),
                                              subtitle: place.address,
                                              isRecent: true,
                                            ),
                                          ].separated(
                                            const Divider(
                                              thickness: 0.3,
                                              indent: 48,
                                              height: 16,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              onItemSelected: showConfirmLocation,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: AppPrimaryButton(
                  isDisabled: waypoints.nonNulls.length != waypoints.length,
                  onPressed: () {
                    final isAuthenticated = locator<AuthBloc>().state.isAuthenticated;
                    if (isAuthenticated) {
                      homeBloc.showPreview(
                        waypoints: waypoints.nonNulls.toList(),
                        directions: [],
                      );
                    } else {
                      context.router.push(const AuthRoute());
                    }
                  },
                  child: Text(context.translate.confirm),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showConfirmLocation(PlaceEntity place) {
    final index = locator<SelectedLocationFieldCubit>().state!;
    locator<HomeCubit>().showConfirmLocation(
      waypoints: waypoints,
      selectedLocation: place,
      index: index,
    );
    locator<PlaceConfirmCubit>().onLoaded(place: place);
    locator<SelectedLocationFieldCubit>().onLocationFieldSelected(null);
  }
}
