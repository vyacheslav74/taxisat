import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';

extension RideOptionGqlX on Enum$ServiceOptionIcon {
  RideOptionIcon get toEntity {
    switch (this) {
      case Enum$ServiceOptionIcon.Pet:
        return RideOptionIcon.pet;
      case Enum$ServiceOptionIcon.Luggage:
        return RideOptionIcon.luggage;
      case Enum$ServiceOptionIcon.TwoWay:
        return RideOptionIcon.twoWay;
      case Enum$ServiceOptionIcon.PackageDelivery:
        return RideOptionIcon.packageDelivery;
      case Enum$ServiceOptionIcon.Shopping:
        return RideOptionIcon.shopping;
      case Enum$ServiceOptionIcon.Custom1:
        return RideOptionIcon.custom1;
      case Enum$ServiceOptionIcon.Custom2:
        return RideOptionIcon.custom2;
      case Enum$ServiceOptionIcon.Custom3:
        return RideOptionIcon.custom3;
      case Enum$ServiceOptionIcon.Custom4:
        return RideOptionIcon.custom4;
      case Enum$ServiceOptionIcon.Custom5:
        return RideOptionIcon.custom5;
      case Enum$ServiceOptionIcon.$unknown:
        throw Exception("Unknown enum value: $this");
    }
  }
}

extension RideOptionIconGqlX on RideOptionIcon {
  Enum$ServiceOptionIcon get toGql {
    switch (this) {
      case RideOptionIcon.pet:
        return Enum$ServiceOptionIcon.Pet;
      case RideOptionIcon.luggage:
        return Enum$ServiceOptionIcon.Luggage;
      case RideOptionIcon.twoWay:
        return Enum$ServiceOptionIcon.TwoWay;
      case RideOptionIcon.packageDelivery:
        return Enum$ServiceOptionIcon.PackageDelivery;
      case RideOptionIcon.shopping:
        return Enum$ServiceOptionIcon.Shopping;
      case RideOptionIcon.custom1:
        return Enum$ServiceOptionIcon.Custom1;
      case RideOptionIcon.custom2:
        return Enum$ServiceOptionIcon.Custom2;
      case RideOptionIcon.custom3:
        return Enum$ServiceOptionIcon.Custom3;
      case RideOptionIcon.custom4:
        return Enum$ServiceOptionIcon.Custom4;
      case RideOptionIcon.custom5:
        return Enum$ServiceOptionIcon.Custom5;
    }
  }
}
