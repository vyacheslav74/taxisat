import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
export 'app_marker_address.dart';
export 'app_marker_address_null.dart';
export 'app_marker_drop_off.dart';
export 'app_marker_pickup.dart';

class AppMarker extends StatelessWidget {
  final Widget title;
  final MarkerColor color;
  final MarkerIcon icon;

  const AppMarker({
    super.key,
    required this.title,
    this.color = MarkerColor.blue,
    this.icon = MarkerIcon.locate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 240,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0x1464748B),
                offset: Offset(2, 4),
                blurRadius: 8,
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: foregroundColor),
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: foregroundColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    iconData,
                    color: ColorPalette.neutralVariant99,
                    size: 18,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: title,
              )
            ],
          ),
        ),
        ClipPath(
          clipper: TriangleClipper(),
          child: Container(
            color: Colors.white,
            height: 11,
            width: 16,
          ),
        )
      ],
    );
  }

  IconData get iconData =>
      icon == MarkerIcon.location ? Ionicons.location : Ionicons.locate;

  Color get foregroundColor => color == MarkerColor.green
      ? ColorPalette.tertiary60
      : ColorPalette.primary50;

  Color get backgroundColor => color == MarkerColor.green
      ? ColorPalette.tertiary95
      : ColorPalette.primary80;

  static const double width = 240;
  static const double height = 67;
  static const Alignment alignment = Alignment.topCenter;
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

enum MarkerColor { blue, green }

enum MarkerIcon { location, locate }
