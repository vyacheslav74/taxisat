import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/app_step_slider.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/onboarding_cubit.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/onboarding_form_builder.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingCubit = locator<OnboardingCubit>();
    return Scaffold(
      backgroundColor: context.theme.colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: ColorPalette.primary99,
              child: SafeArea(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: CupertinoButton(
                          child: Text(context.translate.skip),
                          onPressed: () {
                            onboardingCubit.skip();
                          }),
                    ),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: BlocBuilder<OnboardingCubit, int>(
                          builder: (context, state) =>
                              OnboardingFormBuilder(onboardingItemIndex: state).buildHeader(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: SafeArea(
              top: false,
              child: Column(
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: BlocBuilder<OnboardingCubit, int>(
                      builder: (context, state) {
                        return OnboardingFormBuilder(onboardingItemIndex: state).buildFooter(context);
                      },
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 185,
                        child: BlocBuilder<OnboardingCubit, int>(
                          builder: (context, state) {
                            return AppStepSlider(
                              count: 4,
                              currentStep: state,
                            );
                          },
                        ),
                      ),
                      const Spacer(),
                      AppPrimaryButton(
                          onPressed: () {
                            onboardingCubit.nextPage();
                          },
                          child: Row(
                            children: [
                              Text(context.translate.next),
                              const SizedBox(width: 8),
                              const Icon(Ionicons.arrow_forward, size: 16),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
