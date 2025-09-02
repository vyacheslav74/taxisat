import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/hero/hero.dart';

class ActionButtons extends StatelessWidget {
  final int totalRides;
  final int totalDistanceTraveled;
  final int favoriteDrivers;

  const ActionButtons({
    super.key,
    required this.totalRides,
    required this.totalDistanceTraveled,
    required this.favoriteDrivers,
  });

  @override
  Widget build(BuildContext context) {
    return ActionButtonsGroup(
      items: [
        HeaderActionButtonItem(
          title: context.translate.totalRides,
          subtilte: totalRides.toString(),
          icon: Ionicons.car,
        ),
        HeaderActionButtonItem(
          title: context.translate.distanceTraveled,
          subtilte: totalDistanceTraveled.toFormattedDistance(context),
          icon: Ionicons.map,
        ),
        HeaderActionButtonItem(
          title: context.translate.favoriteDrivers,
          subtilte: favoriteDrivers.toString(),
          icon: Ionicons.person_circle,
          onPressed: () {
            context.router.push(
              const FavoriteDriversRoute(),
            );
          },
        )
      ],
    );
  }
}
