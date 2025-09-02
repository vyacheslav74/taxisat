import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

import '../entities/review_parameter.dart';

class ReviewParameterWidget extends StatelessWidget {
  final String title;
  final bool isGood;
  final bool? isSelected;
  final Function()? onPressed;

  const ReviewParameterWidget({
    super.key,
    required this.title,
    required this.isGood,
    this.isSelected,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Text(
          title,
          style: context.labelMedium?.copyWith(color: textColor),
        ),
      ),
    );
  }

  Color get borderColor {
    if (isSelected == true) {
      return isGood ? ColorPalette.semanticgreen70 : ColorPalette.error50;
    } else if (isSelected == false) {
      return ColorPalette.primary95;
    } else {
      // isSelected == null, an static non-interactive state for demonstration purposes
      return isGood ? ColorPalette.primary30.withValues(alpha: 0.17) : ColorPalette.error80;
    }
  }

  Color get backgroundColor {
    if (isSelected == true) {
      return isGood ? ColorPalette.semanticgreen99 : ColorPalette.error95;
    } else if (isSelected == false) {
      return ColorPalette.neutralVariant99;
    } else {
      // isSelected == null, an static non-interactive state for demonstration purposes
      return Colors.transparent;
    }
  }

  Color get textColor {
    if (isSelected == true) {
      return isGood ? ColorPalette.semanticgreen70 : ColorPalette.error50;
    } else if (isSelected == false) {
      return ColorPalette.primary30;
    } else {
      // isSelected == null, an static non-interactive state for demonstration purposes
      return isGood ? ColorPalette.primary30 : ColorPalette.error80;
    }
  }
}

extension ReviewParameterEntityX on ReviewParameterEntity {
  Widget get widget => ReviewParameterWidget(title: name, isGood: isGood);
}

extension ReviewParameterEntityListX on List<ReviewParameterEntity> {
  List<Widget> get widgets => map((e) => e.widget).toList();
}
