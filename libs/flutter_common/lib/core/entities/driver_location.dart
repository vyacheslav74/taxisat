import 'package:flutter_common/gen/assets.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generic_map/generic_map.dart';
import 'package:latlong2/latlong.dart';

part 'driver_location.freezed.dart';
part 'driver_location.g.dart';

@freezed
class DriverLocation with _$DriverLocation {
  const factory DriverLocation({
    required double lat,
    required double lng,
    required int? rotation,


  }) = _DriverLocation;

  factory DriverLocation.fromJson(Map<String, dynamic> json) =>
      _$DriverLocationFromJson(json);

  const DriverLocation._();
  
  


  CustomMarker genericMarker() => CustomMarker(
    position: LatLng(lat, lng),
    rotation: rotation ?? 0,
    widget: Assets.images.carTopView.image(
      width: 48,
      height: 48,
    ),
  );
}
