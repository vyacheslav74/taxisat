import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/avatars/driver_avatar_secondary.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/core/entities/favorite_driver.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class FavoriteDriverItem extends StatelessWidget {
  final FavoriteDriverEntity entity;
  final bool editMode;
  final Function() onDeletePressed;

  const FavoriteDriverItem({
    super.key,
    required this.entity,
    this.editMode = false,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AnimationDuration.pageStateTransitionMobile,
      decoration: BoxDecoration(
        color: ColorPalette.neutral99,
        border: Border.all(
          color: ColorPalette.primary95,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              DriverAvatarSecondary(
                imageUrl: entity.avatarUrl,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entity.fullName,
                      style: context.labelLarge,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Ionicons.star,
                          color: ColorPalette.secondary80,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          entity.ratingText,
                          style: context.bodySmall?.copyWith(
                            color: ColorPalette.neutralVariant50,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    entity.carModel ?? "",
                    style: context.labelLarge,
                  ),
                  Text(
                    "${entity.carColor ?? ""}-${entity.carPlateNumber}",
                    style: context.bodySmall?.copyWith(
                      color: ColorPalette.neutralVariant50,
                    ),
                  ),
                ],
              )
            ]),
          ),
          const Divider(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 8,
              runSpacing: 8,
              children: entity.services
                  .map(
                    (e) => Container(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                      decoration: BoxDecoration(
                        color: ColorPalette.neutralVariant99,
                        border: Border.all(color: ColorPalette.primary95),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Ionicons.checkmark,
                            color: ColorPalette.semanticgreen60,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            e,
                            style: context.bodySmall?.copyWith(
                              color: ColorPalette.neutralVariant50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          if (editMode)
            SizedBox(
              width: double.infinity,
              child: AppTextButton(
                type: AppTextButtonType.destructive,
                text: context.translate.delete,
                iconData: Ionicons.trash,
                onPressed: onDeletePressed,
              ),
            )
        ],
      ),
    );
  }
}
