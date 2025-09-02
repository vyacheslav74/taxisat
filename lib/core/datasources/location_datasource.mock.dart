import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

import 'location_datasource.dart';

@dev
@LazySingleton(as: LocationDatasource)
class LocationDatasourceImpl implements LocationDatasource {
  @override
  Future<LatLng> getCurrentLocation() async {
    return const LatLng(37.3875, -122.0575);
  }

  @override
  Future<bool> isLocationPermissionGranted() async {
    return true;
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    return true;
  }
}
