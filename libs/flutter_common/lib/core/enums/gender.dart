import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

enum Gender { male, female, unknown }

extension GenderX on Gender {
  String title(BuildContext context) {
    switch (this) {
      case Gender.male:
        return context.t.genderMale;
      case Gender.female:
        return context.t.genderFemale;
      case Gender.unknown:
        return context.t.genderUnknown;
    }
  }
}
