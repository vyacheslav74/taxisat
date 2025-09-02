import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_list_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_list_item_dropdown.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:rider_flutter/features/home/features/track_order/presentation/dialogs/cancel_ride_reason.dart';
import 'package:rider_flutter/features/redeem_gift_card/presentation/dialogs/redeem_gift_card_dialog.dart';

class RideOptionsSheet extends StatefulWidget {
  final int waitTime;

  const RideOptionsSheet({
    super.key,
    required this.waitTime,
  });

  @override
  State<RideOptionsSheet> createState() => _RideOptionsSheetState();
}

class _RideOptionsSheetState extends State<RideOptionsSheet> {
  late int waitTime;

  @override
  void initState() {
    waitTime = widget.waitTime;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(DialogType.bottomSheet, xl: DialogType.dialog),
      header: (Ionicons.cog, context.translate.rideOptions, null),
      onBackPressed: () => Navigator.of(context).pop(null),
      primaryButton: waitTime == widget.waitTime
          ? null
          : AppPrimaryButton(
              onPressed: () {
                Navigator.of(context).pop(waitTime);
              },
              child: Text(context.translate.apply),
            ),
      secondaryButton: AppBorderedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        title: context.translate.goBackToRide,
      ),
      child: Column(
        children: [
          AppListItemDropdown(
            title: context.translate.waitTime,
            icon: Ionicons.time,
            items: {
              context.translate.noWaitTime: 0,
              context.translate.minutesRange("0-5"): 5,
              context.translate.minutesRange("5-10"): 10,
              context.translate.minutesRange("10-15"): 15,
              context.translate.minutesRange("15-20"): 20,
              context.translate.minutesRange("20-25"): 25,
              context.translate.minutesRange("25-30"): 30,
            },
            selectedItem: waitTime,
            isFiiled: false,
            onChanged: (newValue) {
              setState(() {
                waitTime = newValue;
              });
            },
          ),
          const Divider(
            height: 18,
          ),
          AppListButton(
            icon: Ionicons.ticket,
            title: context.translate.couponCode,
            onPressed: () {},
          ),
          const Divider(
            height: 18,
          ),
          AppListButton(
            icon: Ionicons.gift,
            title: context.translate.giftCardCode,
            onPressed: () {
              showDialog(
                context: context,
                useSafeArea: false,
                builder: (context) => const RedeemGiftCardDialog(),
              );
            },
          ),
          const Divider(
            height: 18,
          ),
          AppListButton(
            icon: Ionicons.close_circle,
            title: context.translate.cancelRide,
            iconColor: ColorPalette.error40,
            onPressed: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                useSafeArea: false,
                builder: (context) {
                  return const CancelRideReasonDialog();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
