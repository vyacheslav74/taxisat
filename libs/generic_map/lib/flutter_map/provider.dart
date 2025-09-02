import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' as fmap;
import 'package:generic_map/interfaces/interfaces.dart';
import 'package:latlong2/latlong.dart';

class OpenStreetMapProvider
    implements MapProvider<fmap.Marker, fmap.CircleMarker, fmap.Polyline> {
  @override
  List<fmap.CircleMarker> parseCircleMarkers(List<CircleMarker> marker) {
    return marker.map((e) => parseCircleMarkerToFMap(e)).toList();
  }

  @override
  List<fmap.Marker> parseMarkers(List<CustomMarker> marker) {
    return marker.map((e) => parseMarkerToFMap(e)).toList();
  }

  @override
  List<fmap.Polyline> parsePolyLines(List<PolyLineLayer> polyLine) {
    return polyLine.map((e) => parsePolyLineToFMap(e)).toList();
  }
}

class MapBoxProvider
    implements MapProvider<fmap.Marker, fmap.CircleMarker, fmap.Polyline> {
  final String secretKey;
  final String userId;
  final String tileSetId;

  MapBoxProvider({
    required this.secretKey,
    required this.userId,
    required this.tileSetId,
  });

  @override
  List<fmap.CircleMarker> parseCircleMarkers(List<CircleMarker> marker) {
    return marker.map((e) => parseCircleMarkerToFMap(e)).toList();
  }

  @override
  List<fmap.Marker> parseMarkers(List<CustomMarker> marker) {
    return marker.map((e) => parseMarkerToFMap(e)).toList();
  }

  @override
  List<fmap.Polyline> parsePolyLines(List<PolyLineLayer> polyLine) {
    return polyLine.map((e) => parsePolyLineToFMap(e)).toList();
  }
}

fmap.Marker parseMarkerToFMap(CustomMarker marker) {
  return fmap.Marker(
    point: marker.position,
    child: Transform.rotate(
      angle: marker.rotation.toDouble() * pi / 180,
      child: marker.widget,
    ),
    width: marker.width ?? 50,
    height: marker.height ?? 50,
    alignment: marker.alignment ?? Alignment.center,
  );
}

fmap.CircleMarker parseCircleMarkerToFMap(CircleMarker marker) {
  return fmap.CircleMarker(
    point: marker.position,
    color: marker.color ?? Colors.blue,
    borderColor: marker.borderColor ?? Colors.yellow,
    borderStrokeWidth: marker.borderWidth ?? 5,
    radius: marker.radius,
    useRadiusInMeter: true,
  );
}

fmap.Polyline parsePolyLineToFMap(PolyLineLayer polyLine) {
  return fmap.Polyline(
    points: polyLine.points,
    gradientColors: polyLine.gradientColors,
    color: polyLine.color ?? Colors.blue,
    strokeWidth: polyLine.width ?? 5,
  );
}
