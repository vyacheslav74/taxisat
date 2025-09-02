import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/country_codes.dart';

part 'country_code.freezed.dart';
part 'country_code.g.dart';

@freezed
class CountryCode with _$CountryCode {
  const factory CountryCode({
    required String e164CC,
    required String iso2CC,
    required int e164SC,
    required bool geographic,
    required int level,
    required String name,
    required String example,
    required String displayName,
    required String? fullExampleWithPlusSign,
    required String displayNameNoE164CC,
    required String e164Key,
  }) = _CountryCode;

  const CountryCode._();

  factory CountryCode.fromJson(Map<String, dynamic> json) => _$CountryCodeFromJson(json);

  static CountryCode parseByIso(String iso) {
    final result = countryCodes.firstWhere((element) => element['iso2CC'].toString().toLowerCase() == iso.toLowerCase());
    return CountryCode.fromJson(result);
  }

  static List<CountryCode> getAll() => countryCodes.map((e) => CountryCode.fromJson(e)).toList();

  String get image {
    return 'assets/countries/${iso2CC.toLowerCase()}.svg.png';
  }
}
