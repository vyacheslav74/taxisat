import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/features/select_language_dialog/select_language_dialog.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/settings.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Ionicons.globe,
            color: ColorPalette.neutral70,
          ),
          const SizedBox(width: 8),
          Text(context.translate.language, style: context.labelLarge),
        ],
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return SelectLanguageDialog(
                selectedLanguageCode: state.locale,
                onPressed: (Language language) => locator<SettingsCubit>().changeLanguage(language.code),
              );
            },
          ),
        );
      },
    );
  }
}
