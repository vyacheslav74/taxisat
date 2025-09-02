import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class AppBackButton extends StatelessWidget {
  final Function() onPressed;

  const AppBackButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      minSize: 0,
      padding: const EdgeInsets.all(0),
      child: const Icon(
        Icons.arrow_back,
        color: ColorPalette.neutral50,
      ),
    );
  }
}
