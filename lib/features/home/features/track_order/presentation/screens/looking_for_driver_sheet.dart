import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_dialog_header.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/app_card_sheet.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

import '../blocs/track_order.dart';

class LookingForDriverSheet extends StatelessWidget {
  const LookingForDriverSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCardSheet(
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppDialogHeader(
              icon: Ionicons.car_sport,
              title: context.translate.rideRequested,
              subtitle: context.translate.searchingForAnOnlineDriver,
            ),
            Assets.lottie.looking.lottie(
              height: 350,
              width: 350,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                onPressed: () {
                  locator<TrackOrderBloc>().cancelRide(cancelReasonId: null, cancelReasonNote: null);
                },
                child: Text(context.translate.cancelRide),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
