import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/app_card_sheet.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:rider_flutter/core/presentation/place_result_item.dart';
import 'package:rider_flutter/features/home/presentation/blocs/home.dart';
import 'package:rider_flutter/features/home/presentation/blocs/place_confirm.dart';

class PlaceConfirmSheet extends StatelessWidget {
  final List<PlaceEntity?> waypoints;
  final PlaceEntity selectedLocation;
  final int index;

  const PlaceConfirmSheet({
    super.key,
    required this.waypoints,
    required this.index,
    required this.selectedLocation,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardSheet(
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Перетащите карту, чтобы изменить местоположение",
                style: context.titleMedium,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 8,
              ),
              BlocBuilder<PlaceConfirmCubit, PlaceConfirmState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: PlaceResultItem(
                            subtitle: state.map(
                              loading: (value) => "",
                              loaded: (loaded) => loaded.data.address,
                            ),
                            title: state.map(
                              loading: (value) => "",
                              loaded: (loaded) => loaded.data.title,
                            ),
                            onPressed: null,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              // TODO: Add search
              // const SizedBox(height: 16),
              // TextField(
              //   decoration: InputDecoration(
              //     hintText: index == 0
              //         ? context.translate.searchForPickupLocation
              //         : context.translate.searchForDropoffLocation,
              //     fillColor: Colors.transparent,
              //     prefixIcon: const Icon(
              //       Ionicons.search,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 28),
              BlocBuilder<PlaceConfirmCubit, PlaceConfirmState>(
                builder: (context, state) {
                  return SizedBox(
                    width: double.infinity,
                    child: AppPrimaryButton(
                      isDisabled: state.maybeMap(
                        orElse: () => true,
                        loaded: (value) => false,
                      ),
                      onPressed: () {
                        final location = state.maybeMap(orElse: () => throw Exception(), loaded: (value) => value.data);
                        final newWaypoints =
                            waypoints.mapIndexed((index, element) => index == this.index ? location : element).toList();
                        locator<HomeCubit>().showWaypoints(waypoints: newWaypoints);
                      },
                      child: Text(title(context)),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  String title(BuildContext context) => index == 0 ? context.translate.confirmPickup : context.translate.confirmDropoff;
}
