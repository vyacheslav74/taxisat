import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/blocs/auth_bloc.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/login.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/onboarding_cubit.dart';
import 'package:rider_flutter/features/auth/presentation/screens/auth_screen.desktop.dart';
import 'package:rider_flutter/features/auth/presentation/screens/auth_screen.mobile.dart';

import 'onboarding_screen.mobile.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingCubit = locator<OnboardingCubit>();
    return PopScope(
      canPop: false,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: locator<OnboardingCubit>(),
          ),
          BlocProvider.value(
            value: locator<LoginBloc>(),
          )
        ],
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.jwtToken != null) {
              locator<AuthBloc>().onLoggedIn(jwtToken: state.jwtToken!, profile: state.profile!);
            }
            state.loginPage.mapOrNull(
              success: (value) {
                locator<LoginBloc>().reset();
                locator<OnboardingCubit>().skip();
                context.router.replaceAll(
                  [
                    const HomeRoute(),
                  ],
                );
              },
            );
          },
          child: context.responsive(
            BlocBuilder<OnboardingCubit, int>(builder: (context, stateOnboarding) {
              return onboardingCubit.isDone ? const AuthScreenMobile() : const OnboardingScreen();
            }),
            xl: const AuthScreenDesktop(),
          ),
        ),
      ),
    );
  }
}
