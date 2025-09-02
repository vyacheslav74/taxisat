import 'package:generic_map/generic_map.dart';
import 'package:rider_flutter/config/graphql/schema.gql.dart';

extension MapProviderX on MapProviderEnum {
  Enum$GeoProvider toGql() {
    switch (this) {
      case MapProviderEnum.googleMaps:
        return Enum$GeoProvider.GOOGLE;
      case MapProviderEnum.mapBox:
        return Enum$GeoProvider.MAPBOX;
      case MapProviderEnum.openStreetMaps:
        return Enum$GeoProvider.NOMINATIM;
    }
  }
}
