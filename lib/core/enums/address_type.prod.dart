import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:rider_flutter/core/enums/address_type.dart';

extension AddressTypeProdX on AddressType {
  Enum$RiderAddressType get toGql {
    switch (this) {
      case AddressType.home:
        return Enum$RiderAddressType.Home;
      case AddressType.work:
        return Enum$RiderAddressType.Work;
      case AddressType.other:
        return Enum$RiderAddressType.Other;
      case AddressType.partner:
        return Enum$RiderAddressType.Partner;
      case AddressType.gym:
        return Enum$RiderAddressType.Gym;
      case AddressType.parent:
        return Enum$RiderAddressType.Parent;
      case AddressType.cafe:
        return Enum$RiderAddressType.Cafe;
      case AddressType.park:
        return Enum$RiderAddressType.Park;
    }
  }
}

extension AddressTypeGqlX on Enum$RiderAddressType {
  AddressType get toEntity {
    switch (this) {
      case Enum$RiderAddressType.Home:
        return AddressType.home;
      case Enum$RiderAddressType.Work:
        return AddressType.work;
      case Enum$RiderAddressType.Other:
        return AddressType.other;
      case Enum$RiderAddressType.Partner:
        return AddressType.partner;
      case Enum$RiderAddressType.Gym:
        return AddressType.gym;
      case Enum$RiderAddressType.Parent:
        return AddressType.parent;
      case Enum$RiderAddressType.Cafe:
        return AddressType.cafe;
      case Enum$RiderAddressType.Park:
        return AddressType.park;
      case Enum$RiderAddressType.$unknown:
        return AddressType.other;
    }
  }
}
