import 'package:latlong2/latlong.dart';

abstract class MapViewController {
  void fitBounds(List<LatLng> points);
  void moveCamera(LatLng location, double? zoom);
  
 
}
