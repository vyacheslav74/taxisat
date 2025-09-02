import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/settings.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:flutter_common/features/select_language_dialog/select_language_dialog.dart';

@RoutePage()
class LanguageSettingsScreen extends StatelessWidget {
  const LanguageSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: context.responsive(16, xl: 24),
        vertical: context.responsive(
          16,
          xl: 24,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.responsive(
              const SizedBox(),
              xl: const SizedBox(
                height: 80,
              ),
            ),
            AppTopBar(title: context.translate.lanugageSettings),
            const SizedBox(
              height: 16,
            ),
            Expanded(child: BlocBuilder<SettingsCubit, SettingsState>(
              builder: (context, state) {
                return LanguageList(
                  selectedLanguageCode: state.locale,
                  onPressed: (language) => locator<SettingsCubit>().changeLanguage(language.code),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
