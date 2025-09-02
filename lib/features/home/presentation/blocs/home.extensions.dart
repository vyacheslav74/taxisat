import 'package:flutter_common/core/entities/place.dart';
import 'package:generic_map/generic_map.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:rider_flutter/core/entities/driver_location.prod.dart';
import 'package:rider_flutter/core/entities/place.prod.dart';

import 'home.dart';

extension HomeStateX on HomeState {
  List<CustomMarker> get markers => map(
        loading: (_) => [],
        error: (_) => [],
        welcome: (value) => value.driversAround.markers,
        inputWaypoints: (value) => value.waypoints.nonNulls.toList().markers,
        confirmLocation: (_) => [],
        ridePreview: (value) {
          final markers = value.waypoints.markers;
          if (value._directions.isNotEmpty) {
            markers.addAll(value._directions.directionsCapMarkers);
          }
          return markers;
        },
        rideInProgress: (value) {
          final markers = <CustomMarker>[];
          if (_directions.isNotEmpty) {
            markers.addAll(_directions.directionsCapMarkers);
          }
          if (value.order.status.viewMode == OrderStatusViewMode.looking) {
            markers.addAll(value.order.waypoints.markers);
            return markers;
          }
          if (value.driverLocation != null) {
            markers.add(value.driverLocation!.marker);
          }
          final arrivedToWaypointIndex = value.order.arrivedAtWaypointIndex;
          if (arrivedToWaypointIndex != null && arrivedToWaypointIndex >= 0) {
            markers.add(value.order.waypoints[arrivedToWaypointIndex + 1].markerDropoff());
          } else {
            markers.add(value.order.waypoints.first.markerPickup());
          }

          return markers;
        },
        rateDriver: (value) => value.order.waypoints.markers,
      );

  bool get isInteractive => map(
        loading: (_) => false,
        welcome: (_) => true,
        inputWaypoints: (_) => false,
        confirmLocation: (_) => true,
        ridePreview: (_) => true,
        rideInProgress: (_) => true,
        rateDriver: (_) => false,
        error: (_) => false,
      );

  MapViewMode get mapViewMode {
    return maybeMap(
      orElse: () => MapViewMode.static,
      welcome: (_) => MapViewMode.picker,
      confirmLocation: (_) => MapViewMode.picker,
    );
  }

  List<LatLngEntity> get _directions {
    return maybeMap(
      orElse: () => [],
      ridePreview: (preview) => preview.directions,
      rideInProgress: (ride) {
        switch (ride.order.status) {
          case OrderStatus.driverAccepted:
            return ride.order.driverDirections;
          case OrderStatus.arrived:
            return [];

          case OrderStatus.waitingForPrePay:
          case OrderStatus.waitingForPostPay:
          case OrderStatus.found:
          case OrderStatus.requested:
          case OrderStatus.noCloseFound:
          case OrderStatus.notFound:
          case OrderStatus.waitingForReview:
          case OrderStatus.booked:
          case OrderStatus.started:
            return ride.order.rideDirections;

          case OrderStatus.driverCanceled:
          case OrderStatus.riderCanceled:
          case OrderStatus.finished:
          case OrderStatus.expired:
            return [];
        }
      },
    );
  }

  List<PolyLineLayer> get polylines => [_directions.toPolyLineLayer];
}
