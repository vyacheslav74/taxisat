import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_common/core/presentation/empty_list_state.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

class ScheduledRidesEmptyState extends StatelessWidget {
  const ScheduledRidesEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyListState(
      imagePath: Assets.images.rideHistoryEmptyState.path,
      title: context.translate.noRidesYet,
      buttonText: context.translate.orderARide,
      onPressed: () {
        context.router.navigate(const HomeRoute());
      },
    );
  }
}
