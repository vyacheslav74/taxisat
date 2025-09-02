import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class DriverRating extends StatelessWidget {
  final int? rating;
  final String? textSuffix;

  const DriverRating({
    super.key,
    required this.rating,
    this.textSuffix,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Ionicons.star,
          color: ColorPalette.secondary80,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text(
          rating == null ? "-" : "${(rating! / 20).toStringAsFixed(1)} ${textSuffix ?? ''}",
          style: context.bodySmall?.copyWith(color: context.theme.colorScheme.onSurfaceVariant),
        ),
      ],
    );
  }
}
