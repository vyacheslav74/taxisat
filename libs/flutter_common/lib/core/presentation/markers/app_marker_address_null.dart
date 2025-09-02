import 'package:flutter/material.dart';
import 'package:generic_map/generic_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/markers/app_marker.dart';

class AppMarkerAddressNull extends StatelessWidget {
  const AppMarkerAddressNull({super.key});

  @override
  Widget build(BuildContext context) {
    return AppMarker(
      title: Text(
        context.t.clickToSetLocation,
        style: context.bodySmall?.copyWith(
          color: ColorPalette.primary50,
        ),
      ),
    );
  }

  CustomMarker genericMarker(LatLng position) => CustomMarker(
        position: position,
        width: AppMarker.width,
        height: AppMarker.height,
        alignment: AppMarker.alignment,
        widget: this,
      );
}
