import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:generic_map/flutter_map/widget.dart';
import 'package:generic_map/interfaces/interfaces.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapController implements MapViewController {
  final AnimatedMapController mapController;
  final EdgeInsets? padding;

  FlutterMapController({
    required this.mapController,
    this.padding,
  });

  @override
  void fitBounds(List<LatLng> points) {
    mapController.animatedFitCamera(
      cameraFit: CameraFit.coordinates(
        coordinates: points,
        padding: padding ?? const EdgeInsets.all(0),
      ),
    );
  }

  @override
  void moveCamera(LatLng location, double? zoom) {
    final currentZoom = mapController.mapController.camera.zoom;
    mapController.animateTo(
      customId: FlutterMapViewState.useTransformerId,
      dest: location,
    );
    //mapController.centerOnPoint(location);
    // mapController.animateTo(dest: location, zoom: zoom);
  }

  @override
  Future<LatLng> getCenter() async {
    return mapController.mapController.camera.center;
  }

  @override
  dispose() {
    mapController.dispose();
  }
}
