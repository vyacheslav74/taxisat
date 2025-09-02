import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

import 'icon_destination.dart';
import 'line_connect_destinations.dart';

class WayPointsView extends StatelessWidget {
  final List<PlaceEntity> waypoints;
  final DateTime? startedAt;
  final DateTime? finishedAt;

  const WayPointsView({
    super.key,
    required this.waypoints,
    this.startedAt,
    this.finishedAt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: waypoints.mapIndexed(
        (index, e) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  IconDestination(
                    isPickupPoint: index == 0,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title(index, waypoints.length),
                          style: context.bodySmall,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          e.address,
                          style: context.bodyMedium,
                        )
                      ],
                    ),
                  ),
                  if (startedAt != null && index == 0)
                    Text(
                      startedAt!.formatTime,
                      style: context.bodySmall?.copyWith(
                        color: ColorPalette.neutralVariant50,
                      ),
                    ),
                  if (finishedAt != null && index == waypoints.length - 1)
                    Text(
                      finishedAt!.formatTime,
                      style: context.bodySmall?.copyWith(
                        color: ColorPalette.neutralVariant50,
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              if (index != waypoints.length - 1)
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: LineConnectDestinations(
                    height: 24,
                  ),
                ),
            ],
          );
        },
      ).toList(),
    );
  }

  String title(int index, int length) {
    if (index == 0) {
      return "Откуда";
    } else if (index == length - 1) {
      return "Куда";
    } else {
      return "Stop $index";
    }
  }
}
