import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/chips/square_icon_chip.dart';
import 'package:flutter_common/core/presentation/waypoints_view/waypoints_view.dart';
import 'package:rider_flutter/features/scheduled_rides/presentation/components/payment_method_view.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

class ScheduledRidesListItem extends StatelessWidget {
  final OrderCompactEntity entity;
  final VoidCallback onPressed;

  const ScheduledRidesListItem({
    super.key,
    required this.entity,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      minSize: 0,
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: Assets.images.scheduledRidesHeaderBackground.provider(),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorPalette.neutralVariant99,
                      border: Border.all(
                        width: 2,
                        color: ColorPalette.neutral90,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Ionicons.car,
                      color: ColorPalette.primary30,
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                entity.expectedAt.formatDateTime,
                                style: context.labelLarge?.copyWith(
                                  color: ColorPalette.neutral99,
                                ),
                              ),
                            ),
                            Text(
                              entity.fee.formatCurrency(entity.currency),
                              style: context.labelLarge?.copyWith(
                                color: ColorPalette.neutral99,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                entity.serviceName,
                                style: context.bodyMedium?.copyWith(
                                  color: ColorPalette.neutralVariant90,
                                ),
                              ),
                            ),
                            Text(
                              entity.paymentMethodUnion.name(context),
                              style: context.bodyMedium?.copyWith(
                                color: ColorPalette.neutralVariant90,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorPalette.neutral99,
                border: Border.all(
                  color: ColorPalette.primary95,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1464748B),
                    blurRadius: 8,
                    offset: Offset(2, 4),
                  )
                ],
              ),
              child: Column(
                children: [
                  PaymentMethodView(
                    paymentMethod: entity.paymentMethodUnion,
                  ),
                  const SizedBox(height: 16),
                  WayPointsView(
                    waypoints: entity.waypoints,
                    startedAt: entity.startedAt,
                    finishedAt: entity.endedAt,
                  ),
                  if (entity.rideOptions.isNotEmpty || entity.waitTime > 0 || entity.isTwoWayTrip) ...[
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          context.translate.preferences,
                          style: context.bodyMedium,
                        ),
                        Expanded(
                          child: Wrap(
                            alignment: WrapAlignment.end,
                            spacing: 8,
                            children: entity.rideOptions
                                .map(
                              (e) => SquareIconChip(icon: e.icon.icon),
                            )
                                .followedBy([
                              if (entity.waitTime > 0) const SquareIconChip(icon: Ionicons.time),
                              if (entity.isTwoWayTrip) const SquareIconChip(icon: Ionicons.repeat),
                            ]).toList(),
                          ),
                        )
                      ],
                    ),
                  ]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
