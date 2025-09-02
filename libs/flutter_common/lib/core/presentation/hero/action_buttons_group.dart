import 'package:flutter/cupertino.dart';
import 'package:collection/collection.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

import 'header_action_button_item.dart';

class ActionButtonsGroup extends StatelessWidget {
  final List<HeaderActionButtonItem> items;

  const ActionButtonsGroup({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: ColorPalette.neutralVariant99,
        border: Border.all(
          color: ColorPalette.primary95,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1464748B),
            blurRadius: 8,
            offset: Offset(2, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorPalette.primary95,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: items.mapIndexed(
            (index, item) {
              return Container(
                decoration: BoxDecoration(
                  border: (index == items.length - 1)
                      ? null
                      : const Border(
                          right: BorderSide(
                            color: ColorPalette.primary95,
                          ),
                        ),
                ),
                child: item,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
