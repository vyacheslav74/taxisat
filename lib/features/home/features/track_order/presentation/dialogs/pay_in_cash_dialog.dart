import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class PayInCashDialog extends StatelessWidget {
  const PayInCashDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      header: (
        Ionicons.cash,
        context.translate.payInCash,
        context.translate.payInCashDescription,
      ),
      primaryButton: AppPrimaryButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(context.translate.confirm),
      ),
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      child: Container(),
    );
  }
}
