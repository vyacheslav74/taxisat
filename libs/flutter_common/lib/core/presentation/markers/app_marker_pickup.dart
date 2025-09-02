import 'package:flutter/material.dart';
import 'package:generic_map/generic_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/markers/app_marker.dart';

class AppMarkerPickup extends StatelessWidget {
  final String address;

  const AppMarkerPickup({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return AppMarker(
      icon: MarkerIcon.locate,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Откуда",
            style: context.labelMedium,
          ),
          Text(
            address,
            maxLines: 1,
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
