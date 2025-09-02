import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';

class ReserveTimeDialog extends StatefulWidget {
  const ReserveTimeDialog({super.key});

  @override
  State<ReserveTimeDialog> createState() => _ReserveTimeDialogState();
}

class _ReserveTimeDialogState extends State<ReserveTimeDialog> {
  DateTime selectedDate = DateTime.now().add(const Duration(minutes: 10));
  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(DialogType.bottomSheet, xl: DialogType.dialog),
      header: (
        Ionicons.calendar,
        context.translate.reserveRide,
        context.translate.reserveRideMessage,
      ),
      primaryButton: AppPrimaryButton(
        onPressed: () {
          context.router.maybePop(selectedDate);
        },
        child: Text(context.translate.confirmResrve),
      ),
      secondaryButton: CupertinoButton(
        onPressed: () => context.router.maybePop(),
        child: Text(context.translate.cancel),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: CupertinoDatePicker(
              initialDateTime: selectedDate,
              minimumDate: DateTime.now().add(const Duration(minutes: 5)),
              onDateTimeChanged: (date) {
                setState(
                  () {
                    selectedDate = date;
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
