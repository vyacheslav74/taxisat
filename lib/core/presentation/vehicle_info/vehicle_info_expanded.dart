import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

import 'vehicle_plate_view.dart';

class VehicleInfoExpanded extends StatelessWidget {
  final String imageUrl;
  final String? vehicleModel;
  final String? vehicleColor;
  final String? vehiclePlateNumber;
  final bool extraLarge;

  const VehicleInfoExpanded({
    super.key,
    required this.imageUrl,
    this.vehicleModel,
    this.vehicleColor,
    this.vehiclePlateNumber,
    required this.extraLarge,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          width: extraLarge ? 190 : 120,
          height: extraLarge ? 190 : 120,
        ),
        Text(
          [vehicleModel, vehicleColor].nonNulls.join(' - '),
          style: context.titleSmall,
        ),
        const SizedBox(height: 2),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (vehiclePlateNumber != null) ...[
              VehiclePlateView(carPlate: vehiclePlateNumber!),
              const SizedBox(
                width: 4,
              )
            ],
          ],
        )
      ],
    );
  }
}
