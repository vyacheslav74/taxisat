import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:ionicons/ionicons.dart';

class MyLocationButton extends StatelessWidget {
  final Function()? onPressed;

  const MyLocationButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: ColorPalette.neutral99,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0x1464748B),
              blurRadius: 8,
              offset: Offset(2, 4),
            )
          ],
        ),
        child: Icon(
          Ionicons.compass,
          color: ColorPalette.neutral70,
        ),
      ),
    );
  }
}
