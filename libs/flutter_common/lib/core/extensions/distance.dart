import 'package:flutter/cupertino.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/enums/measurement_system.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:latlong2/latlong.dart';

extension LatLngDistanceX on LatLng {
  String distanceTo(LatLng other, BuildContext context) {
    final Distance distance = Distance();
    if (Constants.defaultMeasurementSystem == MeasurementSystem.metric) {
      final distanceInMeters = distance.as(LengthUnit.Meter, this, other);
      if (distanceInMeters < 1000) {
        return context.t.distanceInMeters(distanceInMeters);
      } else {
        return context.t.distanceInKilometers(distanceInMeters / 1000);
      }
    } else {
      final distanceInMiles = distance.as(LengthUnit.Mile, this, other);
      return context.t.distanceInMiles(distanceInMiles);
    }
  }
}

extension IntDistanceX on int {
  String toFormattedDistance(BuildContext context) {
    if (Constants.defaultMeasurementSystem == MeasurementSystem.metric) {
      if (this < 1000) {
        return context.t.distanceInMeters(this);
      } else {
        return context.t.distanceInKilometers(this / 1000);
      }
    } else {
      if (this < 1609) {
        return context.t.distanceInFeets(this);
      } else {
        return context.t.distanceInMiles(this / 1609);
      }
    }
  }
}
