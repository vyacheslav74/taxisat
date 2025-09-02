import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';

class ReportIssueSuccessDialog extends StatelessWidget {
  const ReportIssueSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      header: (
        Ionicons.document_text,
        context.translate.reportSubmitted,
        context.translate.reportSubmittedDescription,
      ),
      primaryButton: AppPrimaryButton(
        child: Text(context.translate.ok),
        onPressed: () => context.router.maybePop(),
      ),
      type: context.responsive(DialogType.bottomSheet, xl: DialogType.dialog),
      child: const SizedBox(height: 100),
    );
  }
}
