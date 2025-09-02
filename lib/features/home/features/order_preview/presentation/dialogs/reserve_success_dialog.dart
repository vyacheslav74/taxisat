import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class ReserveSuccessDialog extends StatelessWidget {
  const ReserveSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      primaryButton: AppPrimaryButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(context.translate.ok)),
      header: (
        Ionicons.checkmark_circle,
        context.translate.reserveRide,
        context.translate.reserveRideMessageSuccess,
      ),
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      child: const SizedBox.shrink(),
    );
  }
}
