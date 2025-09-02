import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:flutter_common/features/country_code_dialog/country_code.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/login.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/onboarding_cubit.dart';

class EnterNumberForm extends StatefulWidget {
  const EnterNumberForm({super.key});

  @override
  State<EnterNumberForm> createState() => _EnterNumberFormState();
}

class _EnterNumberFormState extends State<EnterNumberForm> {
  (CountryCode, String) phoneNumber = (Constants.defaultCountry, "");

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.loginPage.mapOrNull(enterNumber: (enterNumber) {
          enterNumber.state.mapOrNull(error: (error) {
            context.showSnackBar(message: error.errorMessage);
          });
        });
      },
      builder: (context, state) => state.loginPage.maybeMap(
        orElse: () => const SizedBox(),
        enterNumber: (enterNumber) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      context.translate.signInSignUp,
                      style: context.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      context.translate.onboardingDescription,
                      style: context.bodyMedium?.copyWith(
                        color: context.theme.colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AppPhoneNumberTextField(
                      initalValue: (Constants.defaultCountry, ""),
                      onChanged: (value) {
                        setState(() {
                          phoneNumber = (value!.$1, value.$2!);
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            AppPrimaryButton(
              isDisabled: enterNumber.state.isLoading || phoneNumber.$2.length < 6,
              onPressed: () {
                locator<LoginBloc>().onNumberVerificationRequested(
                  mobileNumber: phoneNumber.$1.e164CC + phoneNumber.$2,
                  countryCode: phoneNumber.$1.iso2CC,
                );
              },
              child: Text(context.translate.signInSignUp),
            ),
            const SizedBox(
              height: 8,
            ),
            AppTextButton(
              text: context.translate.skipForNow,
              onPressed: () {
                locator<OnboardingCubit>().skip();
                locator<LoginBloc>().onVerificationSkipped();
              },
            )
          ],
        ),
      ),
    );
  }
}
