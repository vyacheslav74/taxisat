import 'package:flutter/cupertino.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

class WhereAreYouGoingButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const WhereAreYouGoingButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      minSize: 0,
      padding: const EdgeInsets.all(0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        decoration: BoxDecoration(
          color: context.theme.inputDecorationTheme.fillColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: context.theme.inputDecorationTheme.enabledBorder!.borderSide.color,
          ),
        ),
        child: Row(
          children: [
            Transform.translate(
              offset: const Offset(-20, 0),
              child: Assets.images.car.image(width: 53, height: 53, filterQuality: FilterQuality.high),
            ),
            Expanded(
                child: Text(
              context.translate.whereIsYourDestination,
              style: context.bodyLarge?.copyWith(color: context.theme.colorScheme.onSurfaceVariant),
            )),
            Assets.images.blueArrow.image(width: 28, height: 28),
          ],
        ),
      ),
    );
  }
}
