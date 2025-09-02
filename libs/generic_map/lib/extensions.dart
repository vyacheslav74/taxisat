import 'package:google_maps_flutter/google_maps_flutter.dart' as gmap;
import 'package:latlong2/latlong.dart' as latlong;

extension GoogleMapLatLngConverter on gmap.LatLng {
  latlong.LatLng toLatLng() {
    return latlong.LatLng(latitude, longitude);
  }
}

extension LatLngConverter on latlong.LatLng {
  gmap.LatLng toGoogleMapLatLng() {
    return gmap.LatLng(latitude, longitude);
  }
}
