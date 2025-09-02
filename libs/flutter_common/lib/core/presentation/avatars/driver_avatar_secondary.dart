import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class DriverAvatarSecondary extends StatelessWidget {
  final String? imageUrl;

  const DriverAvatarSecondary({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ColorPalette.neutral90,
        ),
        image: imageUrl == null
            ? null
            : DecorationImage(
                image: CachedNetworkImageProvider(imageUrl!), fit: BoxFit.cover, filterQuality: FilterQuality.high),
      ),
      child: imageUrl == null
          ? Icon(
              Ionicons.person_circle,
              color: ColorPalette.primary30.withOpacity(0.4),
            )
          : const SizedBox(
              width: 24,
              height: 24,
            ),
    );
  }
}
