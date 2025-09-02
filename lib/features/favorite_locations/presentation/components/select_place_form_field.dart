import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:generic_map/generic_map.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_address.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_address_null.dart';
import 'package:rider_flutter/core/presentation/app_generic_map.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/desktop_map.dart';

class SelectPlaceFormField extends StatefulWidget {
  final Function(PlaceEntity) onSaved;
  final Function(PlaceEntity) onChanged;
  final PlaceEntity? initialValue;
  final String? markerTitle;

  const SelectPlaceFormField({
    super.key,
    required this.onSaved,
    required this.initialValue,
    required this.onChanged,
    required this.markerTitle,
  });

  @override
  State<SelectPlaceFormField> createState() => _SelectPlaceFormFieldState();
}

class _SelectPlaceFormFieldState extends State<SelectPlaceFormField> {
  MapViewController? mapViewController;
  @override
  Widget build(BuildContext context) {
    return FormField<PlaceEntity>(
      validator: (value) => value == null ? context.translate.fieldIsRequired : null,
      onSaved: (newValue) {
        if (newValue != null) {
          widget.onSaved(newValue);
        }
      },
      initialValue: widget.initialValue,
      builder: (fieldState) {
        return CupertinoButton(
          minSize: 0,
          padding: EdgeInsets.zero,
          onPressed: () async {
            final result = await context.router.push(const LocateFavoriteLocationRoute()) as PlaceEntity?;
            if (result != null) {
              fieldState.didChange(result);
              widget.onChanged(result);
              locator<FavoriteLocationsDesktopMapCubit>().viewOne(
                name: widget.markerTitle ?? "",
                location: result,
              );
              mapViewController?.moveCamera(
                result.latLng2,
                16,
              );
            }
          },
          child: IgnorePointer(
            child: Container(
              height: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: AppGenericMap(
                mode: MapViewMode.static,
                initialLocation: fieldState.value?.toGenericMapPlace ?? Constants.defaultLocation.toGenericMapPlace,
                onControllerReady: (controller) => mapViewController = controller,
                markers: [
                  if (fieldState.value != null)
                    AppMarkerAddresss(
                      address: fieldState.value!.address,
                      title: widget.markerTitle ?? "",
                    ).genericMarker(fieldState.value!.coordinates.latLng),
                  if (widget.markerTitle == null)
                    const AppMarkerAddressNull().genericMarker(
                      Constants.defaultLocation.coordinates.latLng,
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
