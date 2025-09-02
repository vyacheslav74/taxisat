import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:rider_flutter/features/home/features/track_order/presentation/screens/chat_sheet.dart';
import 'package:rider_flutter/features/home/features/track_order/presentation/screens/pay_for_ride_sheet.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';

import '../blocs/track_order.dart';
import 'looking_for_driver_sheet.dart';
import 'order_in_progress_sheet.dart';

class TrackOrderSheet extends StatefulWidget {
  final OrderEntity order;
  final DriverLocation? driverLocation;

  const TrackOrderSheet({
    super.key,
    required this.order,
    required this.driverLocation,
  });

  @override
  State<TrackOrderSheet> createState() => _TrackOrderSheetState();
}

class _TrackOrderSheetState extends State<TrackOrderSheet> {
  @override
  void initState() {
    super.initState();
    locator<TrackOrderBloc>().onStarted(
      order: widget.order,
      driverLocation: widget.driverLocation,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: locator<TrackOrderBloc>(),
        ),
      ],
      child: BlocConsumer<TrackOrderBloc, TrackOrderState>(
        listener: (context, state) {
          if (state.error != null) {
            context.showSnackBar(message: state.error!);
          }
          state.mapOrNull(
            orderInProgres: (inProgress) {
              switch (inProgress.order.status.viewMode) {
                case OrderStatusViewMode.inProgress:
                  locator<HomeCubit>().showInProgress(
                    order: inProgress.order,
                    driverLocation: inProgress.driverLocation,
                  );
                  break;

                case OrderStatusViewMode.review:
                  locator.resetLazySingleton<TrackOrderBloc>();
                  locator<HomeCubit>().showRate(
                    order: inProgress.order,
                  );
                default:
              }
            },
            done: (value) {
              locator.resetLazySingleton<TrackOrderBloc>();
              locator<HomeCubit>().initializeWelcome(
                pickupPoint: locator<LocationCubit>().state.place,
              );
            },
          );
        },
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: AnimationDuration.pageStateTransitionMobile,
            child: state.map(
              initial: (initial) => const Text("Initial"),
              orderInProgres: (inProgress) => switch (inProgress.order.status.viewMode) {
                OrderStatusViewMode.looking => const LookingForDriverSheet(),
                OrderStatusViewMode.inProgress => AnimatedSwitcher(
                    duration: AnimationDuration.pageStateTransitionMobile,
                    child: inProgress.page.when(
                      overview: () => OrderInProgressSheet(
                        order: inProgress.order,
                      ),
                      chat: () => ChatSheet(
                        order: inProgress.order,
                      ),
                      payment: () => PayForRideSheet(
                        order: inProgress.order,
                      ),
                    ),
                  ),
                OrderStatusViewMode.waitingForPayment => PayForRideSheet(
                    order: inProgress.order,
                  ),
                OrderStatusViewMode.review => const Text("Review"),
                OrderStatusViewMode.finished => const Text("Finished"),
              },
              done: (done) => const Text("Done"),
            ),
          );
        },
      ),
    );
  }
}
