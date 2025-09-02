import 'package:flutter/material.dart';
import 'package:rider_flutter/core/presentation/vehicle_info/vehicle_info_compact.dart';
import 'package:rider_flutter/core/presentation/vehicle_info/vehicle_info_expanded.dart';

class VehicleInfo extends StatelessWidget {
  final String imageUrl;
  final String? vehicleModel;
  final String? vehicleColor;
  final String? vehiclePlateNumber;
  final VehicleInfoSizeMode sizeMode;

  const VehicleInfo({
    super.key,
    required this.imageUrl,
    this.vehicleModel,
    this.vehicleColor,
    this.vehiclePlateNumber,
    this.sizeMode = VehicleInfoSizeMode.compact,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: sizeMode == VehicleInfoSizeMode.compact ? compact : expanded,
    );
  }

  Widget get expanded => VehicleInfoExpanded(
        imageUrl: imageUrl,
        vehicleModel: vehicleModel,
        vehicleColor: vehicleColor,
        vehiclePlateNumber: vehiclePlateNumber,
        extraLarge: sizeMode == VehicleInfoSizeMode.extraLarge,
      );

  Widget get compact => VehicleInfoCompact(
        imageUrl: imageUrl,
        vehicleModel: vehicleModel,
        vehicleColor: vehicleColor,
        vehiclePlateNumber: vehiclePlateNumber,
      );
}

enum VehicleInfoSizeMode { compact, large, extraLarge }
