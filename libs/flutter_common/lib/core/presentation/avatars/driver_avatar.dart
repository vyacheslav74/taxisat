import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class DriverAvatar extends StatelessWidget {
  final String? imageUrl;

  const DriverAvatar({
    super.key,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorPalette.neutral90, width: 2),
      ),
      child: imageUrl == null
          ? placeHolder
          : ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: imageUrl!,
                placeholder: (context, url) => placeHolder,
              ),
            ),
    );
  }

  Widget get placeHolder => const Padding(
        padding: EdgeInsets.all(8),
        child: Icon(
          Ionicons.person,
          color: ColorPalette.primary30,
          size: 32,
        ),
      );
}
