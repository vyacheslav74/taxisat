import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/core/presentation/app_favorite_location_item.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/desktop_map.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/favorite_locations.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/components/add_favorite_location_button.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

@RoutePage()
class FavoriteLocationsListScreen extends StatefulWidget {
  const FavoriteLocationsListScreen({super.key});

  @override
  State<FavoriteLocationsListScreen> createState() => _FavoriteLocationsListScreenState();
}

class _FavoriteLocationsListScreenState extends State<FavoriteLocationsListScreen> {
  @override
  void initState() {
    locator<FavoriteLocationsCubit>().onStarted();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<FavoriteLocationsCubit>(),
      child: Container(
        padding: context.responsive(
          const EdgeInsets.all(16),
          xl: const EdgeInsets.all(24),
        ),
        color: context.theme.scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTopBar(
              title: context.translate.favoriteLocations,
              subtitle: context.translate.favoriteLocationsSubtitle,
            ),
            const SizedBox(height: 32),
            Expanded(
              child: BlocConsumer<FavoriteLocationsCubit, FavoriteLocationsState>(
                listener: (context, state) {
                  state.mapOrNull(
                    loaded: (loaded) {
                      locator<FavoriteLocationsDesktopMapCubit>().showList(
                        list: loaded.data
                            .map(
                              (e) => e.$2,
                            )
                            .nonNulls
                            .toList(),
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return AnimatedSwitcher(
                    duration: AnimationDuration.pageStateTransitionMobile,
                    child: state.map(
                      initial: (_) => const SizedBox(),
                      loading: (_) => Assets.lottie.loading.lottie(width: double.infinity, height: 300),
                      error: (error) => Text(error.message),
                      loaded: (loaded) => Column(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ...loaded.data.map(
                                  (e) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      AppFavoriteLocationItem(
                                        address: e.$2,
                                        type: e.$1,
                                        showArrow: true,
                                        onPressed: () async {
                                          PageRouteInfo route = AddFavoriteLocationRoute(defaultAddressType: e.$1);
                                          await context.router.push(
                                            e.$2 == null
                                                ? route
                                                : EditFavoriteLocationRoute(
                                                    entity: e.$2!,
                                                  ),
                                          );
                                          locator<FavoriteLocationsCubit>().onStarted();
                                        },
                                      ),
                                      const Divider(
                                        height: 16,
                                        indent: 64,
                                      ),
                                    ],
                                  ),
                                ),
                                AddFavoriteLocationButton(
                                  onPressed: () async {
                                    await context.router.push(
                                      AddFavoriteLocationRoute(
                                        defaultAddressType: null,
                                      ),
                                    );
                                    locator<FavoriteLocationsCubit>().onStarted();
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
