import 'package:latlong2/latlong.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:flutter_common/core/entities/place.dart';

import '../../config/graphql/fragments/point.fragment.graphql.dart';

extension PointFragmentExtension on Fragment$PointFragment {
  LatLng get toLatLng {
    return LatLng(lat, lng);
  }

  LatLngEntity get toLatLngEntity {
    return LatLngEntity(lat: lat, lng: lng);
  }

  DriverLocation get toDriverLocation {
    return DriverLocation(
      lat: lat,
      lng: lng,
      rotation: heading ?? 0,
    );
  }
}

extension PointFragmentListExtension on List<Fragment$PointFragment> {
  List<LatLng> get toLatLngs {
    return map((e) => e.toLatLng).toList();
  }

  List<LatLngEntity> get toLatLngEntities {
    return map((e) => e.toLatLngEntity).toList();
  }

  List<DriverLocation> get toDriverLocations {
    return map((e) => e.toDriverLocation).toList();
  }
}
