import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/presentation/chips/square_icon_chip.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/rounded_checkbox.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

class MapSettingItem extends StatelessWidget {
  final AssetGenImage image;
  final String title;
  final List<String> benefits;
  final List<String> shortComings;

  final bool isActive;
  final bool isSelected;
  final Function()? onPressed;

  const MapSettingItem({
    super.key,
    required this.image,
    required this.title,
    required this.benefits,
    required this.shortComings,
    required this.isActive,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AnimatedScale(
        duration: AnimationDuration.pageStateTransitionDesktop,
        scale: isActive ? 1 : 0.9,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 250),
          opacity: isActive ? 1 : 0.6,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: image.provider(), fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: ColorPalette.neutral99,
                            border: Border.all(
                              color: ColorPalette.primary95,
                            ),
                          ),
                          child: Row(
                            children: [
                              const SquareIconChip(icon: Ionicons.map),
                              const SizedBox(width: 12),
                              Expanded(child: Text(title, style: context.labelLarge)),
                              RoundedCheckbox(isSelected: isSelected)
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(12),
                          padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                          decoration: BoxDecoration(
                            color: ColorPalette.neutralVariant99,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: ColorPalette.neutral90,
                            ),
                          ),
                          child: Column(
                            children: [
                              ...benefits.map((e) => Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Ionicons.checkmark,
                                          color: ColorPalette.semanticgreen60,
                                        ),
                                        const SizedBox(width: 4),
                                        Expanded(
                                          child: Text(
                                            e,
                                            style: context.labelMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              ...shortComings.map(
                                (e) => Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Ionicons.close,
                                        color: ColorPalette.error50,
                                      ),
                                      const SizedBox(width: 4),
                                      Expanded(
                                        child: Text(
                                          e,
                                          style: context.labelMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
