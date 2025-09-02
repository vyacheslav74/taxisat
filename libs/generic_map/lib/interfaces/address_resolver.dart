import './place.dart';
import 'package:latlong2/latlong.dart';

import 'map_provider_enum.dart';

typedef AddressResolver = Future<Place> Function(
  MapProviderEnum,
  LatLng,
);
