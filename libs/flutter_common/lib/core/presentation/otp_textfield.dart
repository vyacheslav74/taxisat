import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:pinput/pinput.dart';

class OtpTextField extends StatelessWidget {
  final int length;
  final Function(String)? onChanged;
  final Function(String)? onCompleted;

  const OtpTextField({
    required this.length,
    this.onChanged,
    super.key,
    this.onCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      autofocus: true,
      defaultPinTheme: PinTheme(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 16),
        decoration: BoxDecoration(
          color: context.theme.inputDecorationTheme.fillColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: context.theme.inputDecorationTheme.border!.borderSide.color,
          ),
        ),
      ),
      focusedPinTheme: PinTheme(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 16),
        decoration: BoxDecoration(
          color: context.theme.inputDecorationTheme.fillColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: context
                .theme.inputDecorationTheme.focusedBorder!.borderSide.color,
          ),
        ),
      ),
      onCompleted: onCompleted,
      onChanged: onChanged,
    );
  }
}
