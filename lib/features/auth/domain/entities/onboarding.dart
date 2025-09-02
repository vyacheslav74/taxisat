import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

part 'onboarding.freezed.dart';

@freezed
class OnBoardingItem with _$OnBoardingItem {
  const factory OnBoardingItem({
    required String imagePath,
    required String title,
    required String description,
  }) = _OnBoardItem;
}

List<OnBoardingItem> onboardingItems(BuildContext context) => [
      OnBoardingItem(
        imagePath: dotenv.maybeGet('ONBOARDING_IMAGE_1') ?? Assets.images.onboarding1.path,
        title: dotenv.maybeGet('ONBOARDING_TITLE_1') ?? context.translate.welcomeTitle,
        description: dotenv.maybeGet('ONBOARDING_DESCRIPTION_1') ?? context.translate.welcomeSubtitle,
      ),
      OnBoardingItem(
        imagePath: dotenv.maybeGet('ONBOARDING_IMAGE_2') ?? Assets.images.onboarding2.path,
        title: dotenv.maybeGet('ONBOARDING_TITLE_2') ?? context.translate.onboardingRewardTitle,
        description: dotenv.maybeGet('ONBOARDING_DESCRIPTION_2') ?? context.translate.onboardingRewardSubtitle,
      ),
      OnBoardingItem(
        imagePath: dotenv.maybeGet('ONBOARDING_IMAGE_3') ?? Assets.images.language.path,
        title: context.translate.selectLanguage,
        description: '',
      ),
    ];
