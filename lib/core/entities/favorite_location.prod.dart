import 'package:rider_flutter/config/graphql/fragments/favorite_location.graphql.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/enums/address_type.prod.dart';

extension FavoriteLocationProdX on Fragment$FavoriteLocationFragment {
  FavoriteLocationEntity get toEntity => FavoriteLocationEntity(
        id: id,
        name: title,
        type: type.toEntity,
        place: PlaceEntity(
          address: details,
          coordinates: LatLngEntity(
            lat: location.lat,
            lng: location.lng,
          ),
        ),
      );
}

extension FavoriteLocationListProdX on List<Fragment$FavoriteLocationFragment> {
  List<FavoriteLocationEntity> get toEntity => map((e) => e.toEntity).toList();
}
