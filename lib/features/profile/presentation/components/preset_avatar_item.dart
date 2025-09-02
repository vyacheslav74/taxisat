import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';

class PresetAvatarItem extends StatelessWidget {
  final int index;
  final Function(int) onPressed;
  final int? selectedIndex;

  const PresetAvatarItem({
    super.key,
    required this.index,
    required this.onPressed,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        minSize: 0,
        padding: const EdgeInsets.all(8),
        child: AnimatedContainer(
          duration: AnimationDuration.pageStateTransitionMobile,
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedIndex == index ? ColorPalette.primary60 : ColorPalette.neutral99,
              width: 6.5,
            ),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/avatars/a$index.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        onPressed: () => onPressed(index));
  }
}
