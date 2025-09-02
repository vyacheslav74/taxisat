import 'package:flutter/material.dart';
import 'package:flutter_common/config/localization/languages.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

import '../domain/entities/language.dart';
import 'language_list_item.dart';

class LanguageList extends StatefulWidget {
  final String? selectedLanguageCode;
  final Function(Language language) onPressed;
  final IconData icon;

  const LanguageList({
    super.key,
    required this.selectedLanguageCode,
    required this.onPressed,
    this.icon = Icons.search,
  });

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  late List<Language> languageList;
  Language? selectedLanguge;

  @override
  void initState() {
    languageList = languages;
    selectedLanguge = languages.firstWhere((element) => element.code == widget.selectedLanguageCode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (newValue) {
            setState(
              () {
                languageList = languages
                    .where(
                      (element) => element.name.toLowerCase().contains(
                            newValue.toLowerCase(),
                          ),
                    )
                    .toList();
              },
            );
          },
          decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            hintText: context.t.searchForLanguage,
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
              return LanguageListItem(
                language: languageList[index],
                isSelected: selectedLanguge?.code == languageList[index].code,
                onPressed: (newValue) {
                  widget.onPressed(newValue);
                  setState(() {
                    selectedLanguge = newValue;
                  });
                },
              );
            },
            separatorBuilder: (context, index) => const Divider(
              height: 8,
              indent: 20,
            ),
            itemCount: languageList.length,
          ),
        ),
      ],
    );
  }
}
