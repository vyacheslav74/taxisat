import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';

@freezed
class Language with _$Language {
  const factory Language({
    required String imagePath,
    required String name,
    required String code,
  }) = _Language;

  const Language._();
}

extension LanguageListX on List<Language> {
  Language getLanguageByCode(String code) {
    return firstWhere((element) => element.code == code);
  }
}
