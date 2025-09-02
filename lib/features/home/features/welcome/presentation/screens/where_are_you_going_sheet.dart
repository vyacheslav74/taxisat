import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/app_card_sheet.dart';
import 'package:rider_flutter/core/presentation/app_favorite_location_item.dart';
import 'package:flutter_common/core/presentation/card_handle.dart';
import 'package:rider_flutter/core/presentation/place_result_item.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

import '../../../../presentation/blocs/destination_suggestions.dart';
import '../components/where_are_you_going_button.dart';

class WhereAreYouGoingSheet extends StatefulWidget {
  final List<PlaceEntity?> waypoints;

  const WhereAreYouGoingSheet({
    super.key,
    required this.waypoints,
  });

  @override
  State<WhereAreYouGoingSheet> createState() => _WhereAreYouGoingSheetState();
}

class _WhereAreYouGoingSheetState extends State<WhereAreYouGoingSheet> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return AppCardSheet(
      child: BlocProvider.value(
        value: locator<DestinationSuggestionsCubit>(),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.mapOrNull(
              authenticated: (authenticated) => locator<DestinationSuggestionsCubit>().onStarted(),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                CardHandle(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                ),

                const SizedBox(height: 16),
                WhereAreYouGoingButton(
                  onPressed: _handleButtonPress
                ),
                const SizedBox(height: 16),
                AnimatedCrossFade(
                  duration: AnimationDuration.pageStateTransitionMobile,
                  crossFadeState: isExpanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                  secondChild: const SizedBox.shrink(),
                  firstChild: BlocBuilder<DestinationSuggestionsCubit, DestinationSuggestionsState>(
                    builder: (context, state) => AnimatedSwitcher(
                      duration: AnimationDuration.pageStateTransitionMobile,
                      child: state.maybeMap(
                        orElse: () => const SizedBox.shrink(),
                        loading: (value) => Center(child: Assets.lottie.loading.lottie(width: 100, height: 100)),
                        error: (value) => Text(value.message),
                        loaded: (value) => Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxHeight: 100),
                              child: ListView.separated(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  final item = value.recents[index];
                                  return PlaceResultItem(
                                      subtitle: item.address,
                                      title: item.title,
                                      isRecent: true,
                                      onPressed: () {
                                        locator<HomeCubit>().pauseDriverUpdates();
                                        final pickupLocation =
                                            widget.waypoints.firstOrNull ?? locator<LocationCubit>().state.place;
                                        if (pickupLocation == null) {
                                          context.showSnackBar(
                                            message: context.translate.pickupLocationNotFound,
                                          );
                                          return;
                                        }
                                        locator<HomeCubit>().showPreview(
                                          waypoints: [
                                            pickupLocation,
                                            item,
                                          ],
                                          directions: [],
                                        );
                                      }
                                      );
                                },
                                separatorBuilder: (context, index) => const Divider(indent: 42),
                                itemCount: value.recents.length,
                              ),
                            ),
                            if (value.favorites.isNotEmpty) ...[
                              const SizedBox(height: 12),
                              Text(
                                context.translate.favoriteLocations,
                                style: context.titleMedium,
                              ),
                              const SizedBox(height: 12),
                              SizedBox(
                                height: 130,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  dragStartBehavior: DragStartBehavior.down,
                                  itemBuilder: (context, index) {
                                    final item = value.favorites[index];
                                    return AppFavoriteLocationItem(
                                      type: item.type,
                                      address: item,
                                      onPressed: () {
                                        final pickupLocation =
                                            widget.waypoints.firstOrNull ?? locator<LocationCubit>().state.place;
                                        if (pickupLocation == null) {
                                          context.showSnackBar(
                                            message: context.translate.pickupLocationNotFound,
                                          );
                                          return;
                                        }
                                        locator<HomeCubit>().showPreview(
                                          waypoints: [
                                            pickupLocation,
                                            item.place,
                                          ],
                                          directions: [],
                                        );
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) => const Divider(indent: 42),
                                  itemCount: value.favorites.length,
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleButtonPress() {
    locator<HomeCubit>().pauseDriverUpdates(); // Приостанавливаем обновления на время действия
    locator<HomeCubit>().showWaypoints(waypoints: widget.waypoints);
  }

}
