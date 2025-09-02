import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

class RedeemSuccessDialog extends StatelessWidget {
  final double amount;
  final String currency;

  const RedeemSuccessDialog({
    super.key,
    required this.amount,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      header: (
        Ionicons.gift,
        context.translate.redeemSuccessTitle,
        context.translate.redeemSuccessDescription(amount.formatCurrency(currency)),
      ),
      primaryButton: AppPrimaryButton(
        child: Text(context.translate.ok),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      child: Assets.lottie.giftRedeemed.lottie(
        width: double.infinity,
        height: 300,
        repeat: false,
      ),
    );
  }
}
