import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';

class AppListItemDropdown<T> extends StatelessWidget {
  final String title;
  final IconData icon;
  final Map<String, T> items;
  final T? selectedItem;
  final Function(T) onChanged;
  final bool isFiiled;

  const AppListItemDropdown({
    super.key,
    required this.title,
    required this.icon,
    required this.items,
    required this.selectedItem,
    required this.onChanged,
    this.isFiiled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isFiiled ? backgroundColor : Colors.transparent,
            border: Border.all(
              color: borderColor,
            ),
          ),
          child: Icon(
            icon,
            size: 24,
            color: ColorPalette.primary30,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            title,
            style: context.labelLarge,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: ColorPalette.primary95,
            ),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              isDense: true,
              hint: const Text(""),
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              icon: const Icon(
                Ionicons.chevron_down,
                color: ColorPalette.neutral70,
              ),
              elevation: 16,
              style: context.labelLarge,
              value: this.selectedItem,
              onChanged: (value) {
                onChanged(value as T);
              },
              items: items.entries
                  .map(
                    (e) => DropdownMenuItem(
                      value: e.value,
                      child: Text(e.key),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  bool get isSelected =>
      (selectedItem != null || (selectedItem is int && selectedItem == 0));

  Color get borderColor =>
      isSelected ? ColorPalette.primary40 : ColorPalette.neutral90;

  Color get backgroundColor =>
      isSelected ? ColorPalette.primary95 : ColorPalette.neutralVariant95;
}
