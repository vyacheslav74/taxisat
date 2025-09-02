import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class PolyLineLayer {
  final List<LatLng> points;
  final Color? color;
  final double? width;
  final List<Color> gradientColors;

  PolyLineLayer({
    required this.points,
    this.color,
    this.width,
    required this.gradientColors,
  });
}
