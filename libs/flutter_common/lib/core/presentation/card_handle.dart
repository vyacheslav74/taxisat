import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class CardHandle extends StatelessWidget {
  final Function()? onPressed;

  const CardHandle({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return context.responsive(
      CupertinoButton(
        padding: EdgeInsets.zero,
        minSize: 0,
        onPressed: onPressed,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 64,
                height: 4,
                decoration: BoxDecoration(
                  color: ColorPalette.neutralVariant90,
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      xl: const SizedBox(),
    );
  }
}
