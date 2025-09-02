import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class AppAvatarCompact extends StatelessWidget {
  // First string is local path, second is url
  final Option<Either<String, String>> avatar;
  final String defaultAvatarPath;

  const AppAvatarCompact({
    super.key,
    required this.avatar,
    required this.defaultAvatarPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: const EdgeInsets.all(6),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorPalette.neutral95,
      ),
      child: ClipOval(
        child: avatar.fold(
          () => Image.asset(
            defaultAvatarPath,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
          ),
          (a) => a.fold(
            (l) => Image.asset(
              l,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              isAntiAlias: true,
            ),
            (r) => CachedNetworkImage(
              imageUrl: r,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              width: 48,
              height: 48,
            ),
          ),
        ),
      ),
    );
  }
}
