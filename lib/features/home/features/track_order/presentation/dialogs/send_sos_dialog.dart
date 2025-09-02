import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

import '../../domain/repositories/track_order_repository.dart';

class SendSOSDialog extends StatelessWidget {
  final String orderId;

  const SendSOSDialog({
    super.key,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      primaryButton: AppBorderedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        title: context.translate.goBackToRide,
      ),
      secondaryButton: AppPrimaryButton(
        color: PrimaryButtonColor.error,
        onPressed: () async {
          final result = await locator<TrackOrderRepository>().sendSOSSignal(orderId: orderId);
          result.fold(
            (l) => context.showSnackBar(message: l.errorMessage),
            (r) {
              context.showSnackBar(message: context.translate.sosSentSuccessfully);
              Navigator.of(context).pop();
            },
          );
        },
        child: Text(context.translate.confirmAndSendSOS),
      ),
      header: (
        Ionicons.shield,
        context.translate.sos,
        context.translate.sendSOSMessage,
      ),
      iconColor: ColorPalette.error40,
      child: const Column(
        children: [],
      ),
    );
  }
}
