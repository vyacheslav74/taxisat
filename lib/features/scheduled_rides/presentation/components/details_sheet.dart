import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';
import 'package:generic_map/generic_map.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:flutter_common/core/presentation/waypoints_view/waypoints_view.dart';
import 'package:flutter_common/core/presentation/chips/square_icon_chip.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/core/presentation/app_generic_map.dart';
import 'package:rider_flutter/features/scheduled_rides/presentation/components/payment_method_view.dart';
import 'package:rider_flutter/features/scheduled_rides/presentation/dialogs/cancel_scheduled_ride_dialog.dart';

class ScheduledRidesDetailsSheet extends StatelessWidget {
  final OrderCompactEntity entity;

  const ScheduledRidesDetailsSheet({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTopBar(title: context.translate.scheduledRide),
        const SizedBox(height: 16),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: ColorPalette.neutral99,
                      border: Border.all(
                        color: ColorPalette.primary95,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: ColorPalette.neutral90,
                                  ),
                                ),
                                child: const Icon(
                                  Ionicons.calendar,
                                  color: ColorPalette.primary30,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  entity.expectedAt.formatDateTime,
                                  style: context.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: PaymentMethodView(
                            paymentMethod: entity.paymentMethodUnion,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorPalette.primary99), borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        if (entity.serviceImageUrl != null) ...[
                          CachedNetworkImage(
                            imageUrl: entity.serviceImageUrl!,
                            width: 48,
                            height: 48,
                          ),
                          const SizedBox(width: 12),
                        ],
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                entity.serviceName,
                                style: context.labelLarge,
                              ),
                              Text(
                                entity.serviceDescription ?? "",
                                style: context.labelMedium?.copyWith(color: context.theme.colorScheme.onSurfaceVariant),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          entity.fee.formatCurrency(entity.currency),
                          style: context.titleSmall?.copyWith(color: ColorPalette.primary40),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  context.responsive(
                      SizedBox(
                        height: 200,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: AppGenericMap(
                            mode: MapViewMode.static,
                            initialLocation: entity.waypoints.first.toGenericMapPlace,
                            padding: const EdgeInsets.symmetric(
                              vertical: 50,
                              horizontal: 100,
                            ),
                            markers: entity.waypoints.markers,
                            onControllerReady: (controller) {
                              controller.fitBounds(
                                entity.waypoints.latLngs,
                              );
                            },
                          ),
                        ),
                      ),
                      xl: const SizedBox()),
                  context.responsive(const SizedBox(height: 16), xl: const SizedBox()),
                  WayPointsView(
                    waypoints: entity.waypoints,
                    startedAt: entity.startedAt,
                    finishedAt: entity.endedAt,
                  ),
                  const Divider(
                    height: 24,
                  ),
                  if (entity.rideOptions.isNotEmpty || entity.waitTime > 0 || entity.isTwoWayTrip) ...[
                    Container(
                      decoration: BoxDecoration(
                        color: ColorPalette.neutral99,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: ColorPalette.primary95),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: ColorPalette.neutralVariant99,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: ColorPalette.neutral90,
                                    ),
                                  ),
                                  child: const Icon(
                                    Ionicons.options,
                                    color: ColorPalette.primary30,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    context.translate.preferences,
                                    style: context.labelLarge,
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                alignment: WrapAlignment.start,
                                children: entity.rideOptions
                                    .map(
                                  (e) => SquareIconChip(icon: e.icon.icon),
                                )
                                    .followedBy(
                                  [
                                    if (entity.waitTime > 0) const SquareIconChip(icon: Ionicons.time),
                                    if (entity.isTwoWayTrip) const SquareIconChip(icon: Ionicons.repeat),
                                  ],
                                ).toList()),
                          )
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: double.infinity,
          child: AppBorderedButton(
            onPressed: () async {
              final dialogResult = await showDialog(
                context: context,
                useSafeArea: false,
                builder: (context) {
                  return CancelScheduledRideDialog(
                    orderId: entity.id,
                  );
                },
              );
              if (dialogResult != null) {
                // ignore: use_build_context_synchronously
                context.router.maybePop();
              }
            },
            title: context.translate.cancelReservation,
            isPrimary: true,
            textColor: ColorPalette.error40,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget smallChip(
    BuildContext context, {
    required String text,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: ColorPalette.neutralVariant99,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ColorPalette.neutral90,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: ColorPalette.neutral70,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: context.labelMedium,
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
