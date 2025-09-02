import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_radio_button.dart';
import 'package:flutter_common/features/country_code_dialog/country_code.dart';

class AppCountryCodeListItem extends StatelessWidget {
  final CountryCode countryCode;
  final Function(CountryCode countryCode) onPressed;
  final bool isSelected;

  const AppCountryCodeListItem({
    super.key,
    required this.countryCode,
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
              countryCode.image,
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
              countryCode.name,
              style: context.labelLarge,
            ),
          ),
          Text(
            "+${countryCode.e164CC}",
            style: context.labelSmall,
          ),
          const SizedBox(
            width: 12,
          ),
          AppRadioButton(
            groupValue: isSelected,
            value: true,
            onChanged: (value) => onPressed(countryCode),
          ),
        ],
      ),
      onPressed: () => onPressed(countryCode),
    );
  }
}
