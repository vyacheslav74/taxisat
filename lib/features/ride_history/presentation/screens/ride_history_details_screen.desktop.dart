import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:generic_map/generic_map.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/blocs/settings.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_back_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:rider_flutter/core/presentation/app_generic_map.dart';
import 'package:rider_flutter/features/ride_history/presentation/components/details_sheet.dart';

import '../dialogs/report_issue_form_dialog.dart';

class RideHistoryDetailsScreenDesktop extends StatelessWidget {
  final OrderCompactEntity entity;

  const RideHistoryDetailsScreenDesktop({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: BlocBuilder<SettingsCubit, SettingsState>(
            buildWhen: (previous, current) => previous.mapProvider != current.mapProvider,
            builder: (context, settingsState) {
              return AppGenericMap(
                mode: MapViewMode.static,
                initialLocation: entity.waypoints.first.toGenericMapPlace,
                padding: settingsState.mapProvider == MapProviderEnum.googleMaps
                    ? EdgeInsets.zero
                    : const EdgeInsets.symmetric(
                        vertical: 80,
                        horizontal: 150,
                      ),
                markers: entity.waypoints.markers,
                onControllerReady: (controller) {
                  controller.fitBounds(
                    entity.waypoints.latLngs,
                  );
                },
              );
            },
          ),
        ),
        Container(
          width: 400,
          padding: const EdgeInsets.only(left: 24, right: 24, top: 100),
          color: context.theme.scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBackButton(onPressed: () => context.router.maybePop()),
              const SizedBox(height: 16),
              Text(
                context.translate.rideDetails,
                style: context.headlineSmall,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: RideHistoryDetailsSheet(
                      entity: entity,
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      useSafeArea: false,
                      builder: (context) => ReportIssueFormDialog(orderId: entity.id),
                    );
                  },
                  title: context.translate.reportAnIssue,
                  isPrimary: true,
                  textColor: ColorPalette.error40,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
