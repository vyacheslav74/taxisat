import 'package:flutter/material.dart';

class LineConnectDestinations extends StatelessWidget {
  final double height;
  const LineConnectDestinations({
    super.key,
    this.height = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff2892FF),
            Color(0xff45FCDE),
          ],
        ),
      ),
    );
  }
}
