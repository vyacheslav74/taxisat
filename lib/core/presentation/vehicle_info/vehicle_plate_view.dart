import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class VehiclePlateView extends StatelessWidget {
  final String carPlate;

  const VehiclePlateView({
    super.key,
    required this.carPlate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ColorPalette.primary95,
        ),
      ),
      child: Text(
        carPlate,
        style: context.labelMedium,
      ),
    );
  }
}
