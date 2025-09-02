import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

class CouponAppliedDialog extends StatelessWidget {
  const CouponAppliedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      primaryButton: AppPrimaryButton(
        onPressed: () {
          context.router.maybePop();
        },
        child: Text(
          context.translate.done,
        ),
      ),
      header: (
        Ionicons.ticket,
        context.translate.couponApplied,
        context.translate.couponAppliedDescription,
      ),
      child: Assets.lottie.coupon.lottie(
        width: double.infinity,
        height: 250,
      ),
    );
  }
}
