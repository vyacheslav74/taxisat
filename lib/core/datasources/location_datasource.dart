import 'package:latlong2/latlong.dart';

abstract class LocationDatasource {
  Future<bool> isLocationPermissionGranted();
  Future<bool> isLocationServiceEnabled();
  Future<LatLng> getCurrentLocation();
}
