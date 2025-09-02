import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  // First string is local path, second is url
  final Option<Either<String, String>> avatar;
  final String defaultAvatarPath;
  final double size;

  const AppAvatar({
    super.key,
    required this.avatar,
    required this.defaultAvatarPath,
    this.size = 46,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFF8FAFC),
          width: 8,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: avatar.fold(
        () => Image.asset(
          defaultAvatarPath,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
          isAntiAlias: true,
          width: size,
          height: size,
        ),
        (a) => a.fold(
          (asset) => Image.asset(
            asset,
            width: size,
            height: size,
          ),
          (url) => ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              imageUrl: url,
              width: size,
              height: size,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
