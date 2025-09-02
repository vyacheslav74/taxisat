import 'package:latlong2/latlong.dart';

class Place {
  final LatLng latLng;
  final String? title;
  final String address;

  Place(
    this.latLng,
    this.address,
    this.title,
  );
}
