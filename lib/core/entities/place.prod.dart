import 'package:generic_map/generic_map.dart';
import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_drop_off.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_pickup.dart';

extension PlaceExtensionX on PlaceEntity {
  CustomMarker markerPickup() => AppMarkerPickup(address: address).genericMarker(latLng2);
  CustomMarker markerDropoff() => AppMarkerDropoff(address: address).genericMarker(latLng2);
}

extension LatLngEntityProdX on LatLngEntity {
  Input$PointInput get toGql {
    return Input$PointInput(
      lat: lat,
      lng: lng,
    );
  }
}
