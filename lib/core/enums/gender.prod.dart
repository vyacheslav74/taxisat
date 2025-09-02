import 'package:flutter_common/core/enums/gender.dart';
import 'package:rider_flutter/config/graphql/schema.gql.dart';

extension GenderGqlX on Enum$Gender {
  Gender get toEntity {
    switch (this) {
      case Enum$Gender.Male:
        return Gender.male;
      case Enum$Gender.Female:
        return Gender.female;
      case Enum$Gender.Unknown:
        return Gender.unknown;
      case Enum$Gender.$unknown:
        return Gender.unknown;
    }
  }
}

extension GenderX on Gender {
  Enum$Gender get toGql => switch (this) {
        Gender.male => Enum$Gender.Male,
        Gender.female => Enum$Gender.Female,
        Gender.unknown => Enum$Gender.Unknown,
      };
}
