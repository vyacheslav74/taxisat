import 'dart:math';

import 'package:flutter/material.dart';
import 'package:generic_map/interfaces/interfaces.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

class GoogleMapProvider
    implements MapProvider<Future<Marker>, Circle, Polyline> {
  @override
  List<Circle> parseCircleMarkers(List<CircleMarker> marker) {
    return marker.map((e) => _parseCircleMarker(e)).toList();
  }

  Circle _parseCircleMarker(CircleMarker marker) {
    return Circle(
      circleId: CircleId(marker.position.toString()),
      center: LatLng(marker.position.latitude, marker.position.longitude),
      radius: marker.radius,
      fillColor: marker.color ?? Colors.blue,
      strokeColor: marker.borderColor ?? Colors.yellow,
      strokeWidth: marker.borderWidth?.toInt() ?? 5,
    );
  }

  @override
  List<Future<Marker>> parseMarkers(List<CustomMarker> marker) {
    return marker.map((e) => _parseMarker(e)).toList();
  }

  Future<Marker> _parseMarker(CustomMarker marker) async {
    return Marker(
      markerId: MarkerId(marker.position.toString()),
      position: LatLng(marker.position.latitude, marker.position.longitude),
      icon: await SizedBox(
        width: marker.width,
        height: marker.height,
        child: Transform.rotate(
          angle: marker.rotation.toDouble() * pi / 180,
          child: marker.widget,
        ),
      ).toBitmapDescriptor(
        imageSize:
            Size((marker.width ?? 100) * 1.5, (marker.height ?? 100) * 1.5),
        logicalSize: Size(marker.width ?? 100, marker.height ?? 100),
      ),
    );
  }

  @override
  List<Polyline> parsePolyLines(List<PolyLineLayer> polyLine) {
    return polyLine.map((e) => _parsePolyLine(e)).toList();
  }

  Polyline _parsePolyLine(PolyLineLayer polyLine) {
    return Polyline(
      polylineId: PolylineId(polyLine.points.toString()),
      points: polyLine.points
          .map(
            (e) => LatLng(e.latitude, e.longitude),
          )
          .toList(),
      color: polyLine.color ?? Colors.blue,
      width: polyLine.width?.toInt() ?? 5,
    );
  }
}
