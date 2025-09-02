import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

import 'scheduled_ride_details_screen.desktop.dart';
import 'scheduled_ride_details_screen.mobile.dart';

@RoutePage()
class ScheduledRideDetailsScreen extends StatelessWidget {
  final OrderCompactEntity entity;

  const ScheduledRideDetailsScreen({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return context.responsive(
      ScheduledRideDetailsScreenMobile(entity: entity),
      xl: ScheduledRideDetailsScreenDesktop(entity: entity),
    );
  }
}
