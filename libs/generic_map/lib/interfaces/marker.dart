import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class CustomMarker {
  final LatLng position;
  final Widget widget;
  final String? fallbackAssetPath;
  final double? width;
  final double? height;
  final Alignment? alignment;
  final int rotation;

  CustomMarker({
    required this.position,
    required this.widget,
    this.width,
    this.height,
    this.alignment,
    this.rotation = 0,
    this.fallbackAssetPath,
  });

  @override
  String toString() {
    return 'WidgetMarker(position: $position, widget: $widget, rotation: $rotation, width: $width, height: $height, alignment: $alignment, fallbackAssetPath: $fallbackAssetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is CustomMarker &&
            other.position == position &&
            other.widget == widget &&
            other.rotation == rotation &&
            other.width == width &&
            other.height == height &&
            other.alignment == alignment &&
            other.fallbackAssetPath == fallbackAssetPath;
  }

  @override
  int get hashCode {
    return position.hashCode ^
        widget.hashCode ^
        rotation.hashCode ^
        width.hashCode ^
        height.hashCode ^
        alignment.hashCode ^
        fallbackAssetPath.hashCode;
  }
}
