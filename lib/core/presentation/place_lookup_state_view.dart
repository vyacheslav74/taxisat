import 'package:flutter/material.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/location.dart';
import 'package:rider_flutter/core/blocs/place_lookup.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

import 'place_result_item.dart';

class PlaceLookupStateView extends StatelessWidget {
  final PlaceLookupState state;
  final Function(PlaceEntity) onItemSelected;
  final Widget? initialStateView;

  const PlaceLookupStateView({
    super.key,
    required this.state,
    required this.onItemSelected,
    this.initialStateView,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: state.map(
        moreCharacters: (value) => Text(
          context.translate.enterAtLeast3Characters,
        ),
        noResults: (value) => Text(context.translate.noResults),
        initial: (showRecents) => initialStateView ?? const SizedBox(),
        loading: (value) => Assets.lottie.loading.lottie(),
        loaded: (loaded) => Column(
          mainAxisSize: MainAxisSize.min,
          children: loaded.places
              .map(
                (place) => PlaceResultItem(
                  onPressed: () => onItemSelected(place),
                  title: place.title,
                  subtitle: place.address,
                  trailing: locator<LocationCubit>().state.distanceTo(
                        place.coordinates.latLng,
                        context,
                      ),
                ),
              )
              .separated(
                const Divider(
                  thickness: 0.3,
                  indent: 48,
                  height: 16,
                ),
              ),
        ),
        error: (error) => Text(error.message),
      ),
    );
  }
}
