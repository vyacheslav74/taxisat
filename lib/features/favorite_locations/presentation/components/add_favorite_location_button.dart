import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class AddFavoriteLocationButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddFavoriteLocationButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(0),
      minSize: 0,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              border: Border.all(color: ColorPalette.neutral90),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Ionicons.add,
              size: 22,
              color: ColorPalette.primary30,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            context.translate.addNewLocation,
            style: context.labelLarge,
          )
        ],
      ),
    );
  }
}
