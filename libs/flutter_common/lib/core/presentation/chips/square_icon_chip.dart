import 'package:flutter/widgets.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class SquareIconChip extends StatelessWidget {
  final IconData icon;

  const SquareIconChip({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorPalette.neutral90,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        icon,
        color: ColorPalette.primary30,
      ),
    );
  }
}
