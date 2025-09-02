import 'package:flutter/cupertino.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/login.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/login_forms/enter_name_form.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/login_forms/enter_number_form.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/login_forms/enter_otp_form.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/login_forms/enter_password_form.dart';
import 'package:rider_flutter/features/auth/presentation/widgets/login_forms/set_password_form.dart';

class LoginFormBuilder {
  final LoginPage loginPage;

  LoginFormBuilder({
    required this.loginPage,
  });

  Widget get header {
    return SizedBox();
    // return switch (loginPage) {
    //   EnterNumber() => Assets.images.signIn1.image(height: 150),
    //   EnterOtp() => Padding(
    //       padding: const EdgeInsets.all(16),
    //       child: Assets.images.signInOtp.image(height: 150),
    //     ),
    //   EnterPassword() => Padding(
    //       padding: const EdgeInsets.all(16),
    //       child: Assets.images.signInPassword.image(height: 100),
    //     ),
    //   EnterName() => Padding(
    //       padding: const EdgeInsets.only(bottom: 16),
    //       child: Assets.images.signInName.image(height: 100),
    //     ),
    //   SetPassword() => Padding(
    //       padding: const EdgeInsets.only(bottom: 16),
    //       child: Assets.images.signInPassword.image(height: 100),
    //     ),
    //   Success() => const SizedBox()
    // };
  }

  Widget get footer {
    return switch (loginPage) {
      EnterNumber() => const EnterNumberForm(),
      EnterOtp() => const EnterOtpForm(),
      EnterPassword() => const EnterPasswordForm(),
      EnterName() => const EnterNameForm(),
      SetPassword() => const SetPasswordForm(),
      Success() => const SizedBox()
    };
  }
}
