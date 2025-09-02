import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class AppCloseButton extends StatelessWidget {
  final Function() onPressed;

  const AppCloseButton({
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
        Ionicons.close,
        size: 24,
        color: ColorPalette.neutral50,
      ),
    );
  }
}
