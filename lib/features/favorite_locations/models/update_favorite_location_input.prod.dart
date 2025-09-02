import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:rider_flutter/core/entities/place.prod.dart';
import 'package:rider_flutter/core/enums/address_type.prod.dart';

import 'update_favorite_location_input.dart';

extension UpdateFavoriteLocationInputX on UpdateFavoriteLocationInput {
  Input$CreateRiderAddressInput get toGql {
    return Input$CreateRiderAddressInput(
      title: name,
      details: place.address,
      type: type.toGql,
      location: place.coordinates.toGql,
    );
  }
}
