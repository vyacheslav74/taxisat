import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

extension SnackBarX on BuildContext {
  void showSnackBar({
    required String message,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        content: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorPalette.primary20,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                    spreadRadius: 3,
                  ),
                ]),
            child: Text(
              message,
              style: labelMedium?.copyWith(
                color: ColorPalette.neutral99,
              ),
            )),
      ),
    );
  }
}
