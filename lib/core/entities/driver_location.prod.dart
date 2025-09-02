import 'package:flutter/material.dart';
import 'package:generic_map/generic_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:rider_flutter/config/graphql/documents/track_order.graphql.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:rider_flutter/gen/assets.gen.dart';


extension DriverLocationX on DriverLocation {
  CustomMarker get marker => CustomMarker(
        position: LatLng(lat, lng),
        widget: Assets.images.carTopView.image(),
        alignment: Alignment.center,
        rotation: rotation ?? 0,
        width: 38,
        height: 38,
      );
}

extension DriverLocationKey on DriverLocation {
  String get uniqueKey => '${lat.toStringAsFixed(6)}_${lng.toStringAsFixed(6)}_${rotation ?? 0}';
}

extension DriverLocationListX on List<DriverLocation> {
  List<CustomMarker> get markers => map((e) => e.marker).toList();
}

extension DriverLocationProdX on Subscription$DriverLocationUpdated {
  DriverLocation get toEntity {
    return DriverLocation(
      lat: driverLocationUpdated.lat,
      lng: driverLocationUpdated.lng,
      rotation: driverLocationUpdated.heading,
    );
  }
}
