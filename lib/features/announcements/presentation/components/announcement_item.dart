import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/features/announcements/domain/entity/announcement.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AnnouncementItem extends StatelessWidget {
  final AnnouncementEntity entity;

  const AnnouncementItem({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 0,
      onPressed: entity.url == null
          ? null
          : () {
              launchUrlString(entity.url!);
            },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: ColorPalette.neutralVariant99,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: ColorPalette.primary95),
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x1464748B),
              blurRadius: 8,
              offset: Offset(2, 4),
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorPalette.primary95,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Ionicons.notifications,
                    color: ColorPalette.primary30,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text(
                    entity.title,
                    style: context.labelLarge,
                  ),
                )
              ],
            ),
            const SizedBox(height: 8),
            Text(
              entity.description,
              style: context.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
