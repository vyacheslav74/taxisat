import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/features/profile/presentation/blocs/favorite_drivers.dart';
import 'package:rider_flutter/features/profile/presentation/components/favorite_driver_item.dart';
import 'package:flutter_common/core/presentation/empty_list_state.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

@RoutePage()
class FavoriteDriversScreen extends StatefulWidget {
  const FavoriteDriversScreen({super.key});

  @override
  State<FavoriteDriversScreen> createState() => _FavoriteDriversScreenState();
}

class _FavoriteDriversScreenState extends State<FavoriteDriversScreen> {
  bool editMode = false;

  @override
  void initState() {
    locator<FavoriteDriversCubit>().load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<FavoriteDriversCubit>(),
      child: Container(
        color: ColorPalette.neutralVariant99,
        padding: context.responsive(
          const EdgeInsets.all(16),
          xl: const EdgeInsets.all(16).copyWith(top: 100),
        ),
        child: SafeArea(
            child: Column(
          children: [
            AppTopBar(
              title: context.translate.favoriteDrivers,
              trailing: CupertinoButton(
                minSize: 0,
                padding: EdgeInsets.zero,
                onPressed: () => setState(
                  () => editMode = !editMode,
                ),
                child: const Icon(
                  Ionicons.create,
                  color: ColorPalette.neutral70,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<FavoriteDriversCubit, FavoriteDriversState>(builder: (context, state) {
                return AnimatedSwitcher(
                  duration: AnimationDuration.pageStateTransitionMobile,
                  child: state.map(
                      initial: (_) => const SizedBox(),
                      loading: (_) => Assets.lottie.loading.lottie(
                            width: double.infinity,
                            height: double.infinity,
                          ),
                      empty: (_) => EmptyListState(
                            imagePath: Assets.images.rideHistoryEmptyState.path,
                            title: context.translate.noFavoriteDrivers,
                            subTitle: context.translate.noFavoriteDriversDescription,
                          ),
                      loaded: (loaded) {
                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          itemCount: loaded.drivers.length,
                          itemBuilder: (context, index) {
                            return FavoriteDriverItem(
                              entity: loaded.drivers[index],
                              editMode: editMode,
                              onDeletePressed: () {
                                locator<FavoriteDriversCubit>().delete(loaded.drivers[index]);
                              },
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(height: 16),
                        );
                      },
                      error: (error) => Text(error.message)),
                );
              }),
            )
          ],
        )),
      ),
    );
  }
}
