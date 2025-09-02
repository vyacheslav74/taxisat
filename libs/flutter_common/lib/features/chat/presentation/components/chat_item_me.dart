import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

class ChatItemMe extends StatelessWidget {
  final String message;
  final DateTime dateTime;

  const ChatItemMe({super.key, required this.message, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: context.width * 0.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: const BoxDecoration(
              color: ColorPalette.neutral60,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(4),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x1464748B),
                  blurRadius: 8,
                  offset: Offset(2, 4),
                )
              ],
            ),
            child: Text(
              message,
              style: context.bodyMedium?.copyWith(
                color: ColorPalette.neutral99,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            dateTime.formatTime,
            style: context.bodySmall?.copyWith(
              color: ColorPalette.neutralVariant50,
            ),
          ),
        ],
      ),
    );
  }
}
