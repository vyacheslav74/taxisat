import 'package:flutter/material.dart';
import 'package:generic_map/generic_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/markers/app_marker.dart';

class AppMarkerStop extends StatelessWidget {
  final String address;
  final int stopIndex;

  const AppMarkerStop({
    super.key,
    required this.address,
    required this.stopIndex,
  });

  @override
  Widget build(BuildContext context) {
    return AppMarker(
      color: MarkerColor.green,
      icon: MarkerIcon.location,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Stop ${stopIndex}",
            style: context.labelMedium,
          ),
          Text(
            address,
            overflow: TextOverflow.ellipsis,
            style: context.bodyMedium?.copyWith(
              color: context.theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
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

  CenterMarker get centerMarker => CenterMarker(
        widget: this,
        size: const Size(AppMarker.width, AppMarker.height),
        alignment: AppMarker.alignment,
      );
}
