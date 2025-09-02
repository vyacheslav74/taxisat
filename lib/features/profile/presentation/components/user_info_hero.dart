import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/avatars/app_avatar.dart';

class UserInfoHero extends StatelessWidget {
  final String name;
  final Option<Either<String, String>> avatar;
  final String phoneNumber;

  const UserInfoHero({
    super.key,
    required this.name,
    required this.avatar,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    name,
                    style: context.titleMedium?.copyWith(
                      color: ColorPalette.primary30,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    phoneNumber,
                    style: context.bodyMedium?.copyWith(
                      color: ColorPalette.neutralVariant50,
                    ),
                  ),
                ],
              )),
        ),
        Center(
          child: AppAvatar(
            avatar: avatar,
            defaultAvatarPath: Env.defaultAvatar,
          ),
        )
      ],
    );
  }
}
