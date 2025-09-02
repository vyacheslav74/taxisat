import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class AppPrimaryButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final bool isDisabled;
  final PrimaryButtonColor color;

  const AppPrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.isDisabled = false,
    this.color = PrimaryButtonColor.primary,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          const EdgeInsets.all(16),
        ),
        backgroundColor:
            color == PrimaryButtonColor.primary ? primaryButtonBackground(context) : errorButtonBackground(context),
      ),
      child: child,
    );
  }

  WidgetStateProperty<Color> primaryButtonBackground(BuildContext context) => WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return context.theme.colorScheme.onSurface.withOpacity(0.12);
          } else if (states.contains(WidgetState.hovered)) {
            return context.colorScheme.primary;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorPalette.primary40;
          } else {
            return context.colorScheme.primary;
          }
        },
      );

  WidgetStateProperty<Color> errorButtonBackground(BuildContext context) => WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.disabled)) {
            return context.theme.colorScheme.onSurface.withOpacity(0.12);
          } else if (states.contains(WidgetState.hovered)) {
            return ColorPalette.error50;
          } else if (states.contains(WidgetState.pressed)) {
            return ColorPalette.error30;
          } else {
            return ColorPalette.error40;
          }
        },
      );
}

enum PrimaryButtonColor { primary, error }
