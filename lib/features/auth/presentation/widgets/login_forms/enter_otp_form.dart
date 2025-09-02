import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:flutter_common/core/presentation/otp_textfield.dart';
import 'package:rider_flutter/features/auth/presentation/blocs/login.dart';

class EnterOtpForm extends StatefulWidget {
  const EnterOtpForm({super.key});

  @override
  State<EnterOtpForm> createState() => _EnterOtpFormState();
}

class _EnterOtpFormState extends State<EnterOtpForm> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) => state.loginPage.maybeMap(
        orElse: () => const SizedBox(),
        enterOtp: (enterOtp) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.translate.enterCode,
              style: context.titleLarge,
              textAlign: TextAlign.center,
            ),
            Image.network(
              height: 76,
              'https://taxi-voyazh.ru/1111.png',
              alignment: Alignment.center,
            ),


            const SizedBox(
              height: 16,
            ),
            Center(
                child: OtpTextField(
                  length: 4,
                  onChanged: (p0) {
                    setState(() {
                      code = p0;
                    });
                  },
                )),
            if (Env.isDemoMode) ...[
              const SizedBox(
                height: 16,
              ),
              Text(
                "In demo mode, use 123456 as OTP",
                style: context.bodyMedium?.copyWith(
                  color: context.theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(
              height: 32,
            ),
            AppTextButton(
              isDisabled: enterOtp.state.isLoading,
              text: context.translate.resendOtp,
              onPressed: () => locator<LoginBloc>().onCodeResendRequested(),
            ),
            const Spacer(),
            AppPrimaryButton(
              isDisabled: enterOtp.state.isLoading || code.length < 4,
              onPressed: () {
                locator<LoginBloc>().onOtpVerificationRequested(code);
              },
              child: Text(
                context.translate.actionContinue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
