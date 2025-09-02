import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/driver.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/entities/ride_option.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';

import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/ride_history_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: RideHistoryRepository)
class RideHistoryRepositoryMock implements RideHistoryRepository {
  @override
  Future<Either<Failure, List<OrderCompactEntity>>> getRideHistory() async {
    await Future.delayed(const Duration(seconds: 1));
    return Right([
      OrderCompactEntity(
        id: '1',
        createdAt: DateTime.now().subtract(const Duration(hours: 23)),
        expectedAt: DateTime.now().subtract(const Duration(hours: 23)),
        startedAt: DateTime.now().subtract(const Duration(hours: 22, minutes: 30)),
        endedAt: DateTime.now().subtract(
          const Duration(hours: 22, minutes: 0),
        ),
        waitTime: 5,
        isTwoWayTrip: true,
        distanceBest: 4000,
        durationBest: 1000,
        serviceDescription: null,
        waypoints: const [
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.4419983, lng: -122.384),
            address: '35, western Street, UK',
          ),
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.4119983, lng: -122.084),
            address: '72, Eastern Street, UK',
          ),
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
          ),
        ],
        fee: 22.5,
        currency: 'USD',
        paymentMethodUnion: const PaymentMethodUnion.cash(),
        serviceName: 'Premium',
        serviceImageUrl: 'https://uploads.ridy.io/ridy-demo/taxi-3.png',
        driver: const DriverEntity(
            firstName: "John",
            lastName: "Doe",
            mobileNumber: "+16505551234",
            imageUrl: null,
            vehiclePlateNumber: "RIDY2018",
            vehicleModel: "Tesla Model 3",
            vehicleColor: "Black",
            rating: 95,
            ratingCount: 43),
      ),
      OrderCompactEntity(
        id: '2',
        createdAt: DateTime.now().subtract(const Duration(hours: 23)),
        expectedAt: DateTime.now().subtract(const Duration(hours: 23)),
        startedAt: DateTime.now().subtract(const Duration(hours: 22, minutes: 30)),
        endedAt: DateTime.now().subtract(
          const Duration(hours: 22, minutes: 0),
        ),
        waitTime: 5,
        isTwoWayTrip: true,
        distanceBest: 4000,
        durationBest: 1000,
        waypoints: const [
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.4319983, lng: -122.184),
            address: '35, western Street, UK',
          ),
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.4219983, lng: -122.084),
            address: '72, Eastern Street, UK',
          ),
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
          ),
        ],
        fee: 22.5,
        currency: 'USD',
        paymentMethodUnion: const PaymentMethodUnion.cash(),
        serviceName: 'Premium',
        serviceDescription: null,
        serviceImageUrl: 'https://uploads.ridy.io/ridy-demo/taxi-3.png',
        driver: const DriverEntity(
          firstName: "John",
          lastName: "Doe",
          mobileNumber: "+16505551234",
          imageUrl: "https://uploads.ridy.io/ridy-demo/driver-1.png",
          vehiclePlateNumber: "RIDY2018",
          vehicleModel: "Tesla Model 3",
          vehicleColor: "Black",
          rating: 95,
          ratingCount: 23,
        ),
      ),
    ]);
  }

  @override
  Future<Either<Failure, bool>> reportIssue(
      {required String orderId, required String subject, required String issue}) async {
    return const Right(true);
  }
}
