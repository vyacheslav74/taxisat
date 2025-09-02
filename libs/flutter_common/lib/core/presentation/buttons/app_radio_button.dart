import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/presentation/rounded_checkbox.dart';

class AppRadioButton<T> extends StatelessWidget {
  final T groupValue;
  final T value;
  final Function(T value) onChanged;

  const AppRadioButton({
    super.key,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        minSize: 0,
        padding: EdgeInsets.zero,
        child: RoundedCheckbox(isSelected: groupValue == value),
        onPressed: () => onChanged(value));
  }
}
