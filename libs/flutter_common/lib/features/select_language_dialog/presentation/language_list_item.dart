import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_radio_button.dart';

import '../domain/entities/language.dart';

class LanguageListItem extends StatelessWidget {
  final Language language;
  final Function(Language language) onPressed;
  final bool isSelected;

  const LanguageListItem({
    super.key,
    required this.language,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              language.imagePath,
              width: 24,
              height: 24,
              filterQuality: FilterQuality.high,
              isAntiAlias: true,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
              child: Text(
            language.name,
            style: context.labelLarge,
          )),
          AppRadioButton(
            groupValue: isSelected,
            value: true,
            onChanged: (value) => onPressed(language),
          ),
        ],
      ),
      onPressed: () => onPressed(language),
    );
  }
}
