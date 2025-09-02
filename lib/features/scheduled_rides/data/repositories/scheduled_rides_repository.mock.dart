import 'package:dartz/dartz.dart';

import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/entities/ride_option.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';

import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/scheduled_rides_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: ScheduledRidesRepository)
class ScheduledRidesRepositoryMock implements ScheduledRidesRepository {
  @override
  Future<Either<Failure, List<OrderCompactEntity>>> getUpcomingRides() async {
    await Future.delayed(const Duration(seconds: 1));
    return Right([
      OrderCompactEntity(
        id: "1",
        createdAt: DateTime.now().subtract(const Duration(hours: 15)),
        expectedAt: DateTime.now().add(const Duration(hours: 1)),
        startedAt: null,
        endedAt: null,
        waitTime: 30,
        isTwoWayTrip: true,
        distanceBest: 4000,
        durationBest: 1000,
        waypoints: const [
          PlaceEntity(coordinates: LatLngEntity(lat: 37.4419983, lng: -122.384), address: "35, western Street, UK"),
          PlaceEntity(coordinates: LatLngEntity(lat: 37.4119983, lng: -122.084), address: "72, Eastern Street, UK")
        ],
        rideOptions: [
          const RideOptionEntity(
            id: "1",
            name: "Small Pet",
            icon: RideOptionIcon.pet,
          ),
          const RideOptionEntity(
            id: "2",
            name: "Luggage",
            icon: RideOptionIcon.luggage,
          )
        ],
        fee: 23.3,
        currency: "USD",
        paymentMethodUnion: const PaymentMethodUnion.cash(),
        serviceName: "Premium",
        serviceDescription: "Regular taxi",
        serviceImageUrl: "https://uploads.ridy.io/ridy-demo/taxi-3.png",
        driver: null,
      )
    ]);
  }

  @override
  Future<Either<Failure, Unit>> cancelRide(String orderId) async {
    return const Right(unit);
  }
}
