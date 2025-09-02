import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class SegmentedAmountField extends StatelessWidget {
  final List<double> amounts;
  final String currency;
  final Function(double) onAmountChanged;
  final Function(double) onSaved;

  const SegmentedAmountField({
    super.key,
    required this.amounts,
    required this.currency,
    required this.onAmountChanged,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<(int, double)>(
      validator: (value) => value == null ? context.t.pleaseSelectAmount : null,
      onSaved: (value) => onSaved(value!.$2),
      builder: (state) => Wrap(
        children: [
          ...amounts.mapIndexed(
            (index, e) => PresetItem(
              amount: e,
              currency: currency,
              roundedStart: index == 0,
              isSelected: state.value?.$1 == index,
              onPressed: () {
                state.didChange((index, e));
              },
            ),
          ),
          CupertinoButton(
            minSize: 0,
            padding: EdgeInsets.zero,
            onPressed: () {
              state.didChange((3, 0));
            },
            child: AnimatedContainer(
                width: 130,
                duration: AnimationDuration.pageStateTransitionMobile,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.horizontal(right: Radius.circular(12)),
                  border: Border.all(color: ColorPalette.primary95),
                  color: (state.value?.$1 == 3)
                      ? ColorPalette.primary95
                      : ColorPalette.neutralVariant99,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    state.didChange((3, double.tryParse(value) ?? 0));
                  },
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    filled: false,
                    hintText: context.t.enterAmount,
                    hintStyle: context.bodyMedium?.copyWith(
                      color: ColorPalette.neutralVariant50,
                    ),
                    border: InputBorder.none,
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class PresetItem extends StatelessWidget {
  final double amount;
  final String currency;
  final bool roundedStart;
  final bool isSelected;
  final VoidCallback onPressed;

  const PresetItem({
    super.key,
    required this.amount,
    required this.currency,
    this.roundedStart = false,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AnimatedContainer(
        duration: AnimationDuration.pageStateTransitionMobile,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(roundedStart ? 12 : 0)),
          border: Border.all(color: ColorPalette.primary95),
          color: backgroundColor,
        ),
        child: Text(
          amount.formatCurrency(currency),
          style: context.bodyMedium?.copyWith(
            color: isSelected
                ? ColorPalette.primary30
                : ColorPalette.neutralVariant50,
          ),
        ),
      ),
    );
  }

  Color get backgroundColor =>
      isSelected ? ColorPalette.primary95 : ColorPalette.neutralVariant99;
}
