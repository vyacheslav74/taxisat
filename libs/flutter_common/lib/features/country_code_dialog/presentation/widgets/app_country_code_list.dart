import 'package:flutter/material.dart';

import '../../country_code.dart';
import 'app_country_code_list_item.dart';

class AppCountryCodeList extends StatefulWidget {
  final Function(CountryCode) onChanged;

  const AppCountryCodeList({
    super.key,
    required this.onChanged,
  });

  @override
  State<AppCountryCodeList> createState() => _AppCountryCodeListState();
}

class _AppCountryCodeListState extends State<AppCountryCodeList> {
  late List<CountryCode> fullCountryCodes;
  List<CountryCode> countryCodes = [];
  CountryCode? selectedCountryCode;

  @override
  void initState() {
    fullCountryCodes = CountryCode.getAll();
    countryCodes = fullCountryCodes;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (newValue) {
            setState(() {
              countryCodes = fullCountryCodes
                  .where(
                    (element) => element.name.toLowerCase().contains(
                          newValue.toLowerCase(),
                        ),
                  )
                  .toList();
            });
          },
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Seach country name",
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final item = countryCodes[index];
              return AppCountryCodeListItem(
                countryCode: item,
                isSelected: selectedCountryCode == item,
                onPressed: (newValue) {
                  setState(() {
                    selectedCountryCode = newValue;
                  });
                  widget.onChanged(newValue);
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(
              height: 8,
              indent: 20,
            ),
            itemCount: countryCodes.length,
          ),
        ),
      ],
    );
  }
}
