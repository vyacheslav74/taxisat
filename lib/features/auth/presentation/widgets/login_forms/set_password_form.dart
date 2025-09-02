import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/login.dart';

class SetPasswordForm extends StatefulWidget {
  const SetPasswordForm({super.key});

  @override
  State<SetPasswordForm> createState() => _SetPasswordFormState();
}

class _SetPasswordFormState extends State<SetPasswordForm> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    final loginBloc = locator<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return state.loginPage.maybeMap(
          setPassword: (setPassword) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            context.translate.setPassword,
                            style: context.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          onChanged: loginBloc.onNewPasswordChanged,
                          obscureText: !showPassword,
                          decoration: InputDecoration(
                            hintText: context.translate.password,
                            suffixIcon: CupertinoButton(
                                onPressed: () => setState(() => showPassword = !showPassword),
                                child: Icon(
                                  Ionicons.eye,
                                  color: context.theme.inputDecorationTheme.suffixIconColor,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 300),
                              child: setPassword.codeLengthIsSafe
                                  ? const Icon(
                                Ionicons.checkmark,
                                color: ColorPalette.semanticgreen60,
                              )
                                  : const Icon(
                                Ionicons.close,
                                color: ColorPalette.error50,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              context.translate.passwordRuleLength,
                              style: context.bodyMedium?.copyWith(
                                color: context.theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),

                      ],
                    ),
                  ),
                ),
                AppPrimaryButton(

                  onPressed: loginBloc.onNewPasswordSubmitted,
                  child: Text(context.translate.actionContinue),
                )
              ],
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
