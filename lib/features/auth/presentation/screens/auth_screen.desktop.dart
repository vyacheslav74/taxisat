import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/presentation/app_step_slider.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/login.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/onboarding_cubit.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/language_button.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/login_form_builder.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/onboarding_form_builder.dart';

class AuthScreenDesktop extends StatelessWidget {
  const AuthScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primary99,
        padding: const EdgeInsets.all(80),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LanguageButton(),
                  Expanded(
                    child: BlocBuilder<OnboardingCubit, int>(
                      builder: (context, state) {
                        final currentStep = state < 2 ? state : 1;
                        return Column(
                          children: [
                            Expanded(
                              child: AnimatedSwitcher(
                                  duration: AnimationDuration.pageStateTransitionDesktop,
                                  child: OnboardingFormBuilder(onboardingItemIndex: currentStep).buildHeader(context)),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            AnimatedSwitcher(
                              duration: AnimationDuration.pageStateTransitionDesktop,
                              child: OnboardingFormBuilder(onboardingItemIndex: currentStep).buildFooter(context),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CupertinoButton(
                                    onPressed: currentStep == 0
                                        ? null
                                        : () {
                                            context.read<OnboardingCubit>().previousPage();
                                          },
                                    child: const Icon(Ionicons.arrow_back)),
                                SizedBox(
                                  width: 92,
                                  child: AppStepSlider(
                                    count: 2,
                                    currentStep: currentStep,
                                  ),
                                ),
                                CupertinoButton(
                                    onPressed: currentStep == 1
                                        ? null
                                        : () {
                                            context.read<OnboardingCubit>().nextPage();
                                          },
                                    child: const Icon(Ionicons.arrow_forward)),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorPalette.neutralVariant99,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return Container(
                        height: 450,
                        constraints: const BoxConstraints(maxWidth: 600),
                        padding: const EdgeInsets.all(64),
                        child: LoginFormBuilder(loginPage: state.loginPage).footer,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
