import 'package:flutter/material.dart';
import 'package:generic_map/generic_map.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/core/presentation/app_generic_map.dart';

import '../components/details_sheet.dart';

class ScheduledRideDetailsScreenDesktop extends StatelessWidget {
  final OrderCompactEntity entity;

  const ScheduledRideDetailsScreenDesktop({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: AppGenericMap(
            mode: MapViewMode.static,
            initialLocation: entity.waypoints.first.toGenericMapPlace,
            padding: const EdgeInsets.symmetric(
              vertical: 80,
              horizontal: 150,
            ),
            markers: entity.waypoints.markers,
            onControllerReady: (controller) {
              controller.fitBounds(
                entity.waypoints.latLngs,
              );
            },
          ),
        ),
        Container(
          width: 400,
          padding: const EdgeInsets.only(left: 24, right: 24, top: 100),
          color: context.theme.scaffoldBackgroundColor,
          child: ScheduledRidesDetailsSheet(entity: entity),
        )
      ],
    );
  }
}
