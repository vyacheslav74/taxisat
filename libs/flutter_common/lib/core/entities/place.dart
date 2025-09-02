import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generic_map/generic_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:collection/collection.dart';

import '../presentation/markers/app_marker_drop_off.dart';
import '../presentation/markers/app_marker_pickup.dart';
import '../presentation/markers/app_marker_stop.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@Freezed(fromJson: true)
class PlaceEntity with _$PlaceEntity {
  const factory PlaceEntity({
    required LatLngEntity coordinates,
    required String address,
    String? title,
  }) = _PlaceEntity;

  factory PlaceEntity.fromJson(Map<String, dynamic> json) => _$PlaceEntityFromJson(json);
}

@Freezed(fromJson: true)
class LatLngEntity with _$LatLngEntity {
  const factory LatLngEntity({
    required double lat,
    required double lng,
  }) = _LatLngEntity;

  factory LatLngEntity.fromJson(Map<String, dynamic> json) => _$LatLngEntityFromJson(json);
}

extension LatLngEntityX on LatLngEntity {
  LatLng get latLng => LatLng(lat, lng);

  int distanceTo(LatLngEntity other) {
    final distance = Distance();
    return distance(
      latLng,
      other.latLng,
    ).toInt();
  }
}

extension LatLngEntityListX on List<LatLngEntity> {
  PolyLineLayer get toPolyLineLayer => PolyLineLayer(
        points: map((e) => e.latLng).toList(),
        width: 3,
        gradientColors: const [
          Color(0xff2892FF),
          Color(0xff45FCDE),
        ],
      );

  List<CustomMarker> get directionsCapMarkers => [
        if (length > 1)
          CustomMarker(
            position: first.latLng,
            width: 10,
            height: 10,
            widget: Container(
              decoration: const BoxDecoration(
                color: Color(0xff2892FF),
                shape: BoxShape.circle,
              ),
            ),
          ),
        if (length > 1)
          CustomMarker(
            position: last.latLng,
            width: 10,
            height: 10,
            widget: Container(
              decoration: const BoxDecoration(
                color: Color(0xff45FCDE),
                shape: BoxShape.circle,
              ),
            ),
          ),
      ];
}

extension PlaceEntityX on PlaceEntity {
  LatLng get latLng2 => coordinates.latLng;

  Place get toGenericMapPlace => Place(latLng2, address, title);
}

extension PlaceEntityListX on List<PlaceEntity> {
  List<Place> get toGenericMapPlaces => map((e) => e.toGenericMapPlace).toList();

  List<LatLng> get latLngs => map((e) => e.latLng2).toList();

  List<CustomMarker> get markers {
    // Copy the list to avoid modifying the original list
    final list = toList();
    // if (first.latLng2 == last.latLng2) {
    //   list.removeLast();
    // }
    final result = list.mapIndexed((index, element) {
      if (index == 0 || (first.latLng2 == last.latLng2 && index == list.length - 1)) {
        return AppMarkerPickup(
          address: element.address,
        ).genericMarker(element.latLng2);
      } else if (index == list.length - 1) {
        return AppMarkerDropoff(
          address: element.address,
        ).genericMarker(element.latLng2);
      } else {
        return AppMarkerStop(
          address: element.address,
          stopIndex: index,
        ).genericMarker(element.latLng2);
      }
    }).toList();

    return result;
  }
}

extension GenericMapPlaceX on Place {
  PlaceEntity get toPlaceEntity => PlaceEntity(
        coordinates: latLng.toLatLngEntity,
        title: title,
        address: address,
      );
}

extension LatLng2 on LatLng {
  LatLngEntity get toLatLngEntity => LatLngEntity(
        lat: latitude,
        lng: longitude,
      );
}
