import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/features/select_language_dialog/domain/entities/language.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';

import 'language_list.dart';

class SelectLanguageDialog extends StatelessWidget {
  final String? selectedLanguageCode;
  final Function(Language language) onPressed;

  const SelectLanguageDialog({
    super.key,
    this.selectedLanguageCode,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      header: (Ionicons.globe, context.t.language, null),
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      onBackPressed: () => Navigator.pop(context),
      primaryButton: AppPrimaryButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(
          context.t.done,
        ),
      ),
      child: SizedBox(
        height: 400,
        child: LanguageList(
          selectedLanguageCode: selectedLanguageCode,
          onPressed: (Language language) {
            onPressed(language);
          },
        ),
      ),
    );
  }
}
