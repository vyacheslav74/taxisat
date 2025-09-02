import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:rider_flutter/config/test_data/order.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../domain/repositories/home_repository.dart';

@dev
@LazySingleton(as: HomeRepository)
class HomeRepositoryMock implements HomeRepository {
  @override
  Future<Either<Failure, (OrderEntity, DriverLocation?)?>> getCurrentOrder() async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(
      (
        orderTest.copyWith(status: OrderStatus.waitingForReview),
        null,
      ),
    );
  }

  @override
  Future<Either<Failure, List<DriverLocation>>> getDriversAround(LatLng origin) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right([
      DriverLocation(
        lat: origin.latitude + 0.0009,
        lng: origin.longitude - 0.0034,
        rotation: 120,
      ),
      DriverLocation(
        lat: origin.latitude - 0.0021,
        lng: origin.longitude - 0.0024,
        rotation: 40,
      ),
      DriverLocation(
        lat: origin.latitude - 0.0017,
        lng: origin.longitude + 0.0044,
        rotation: 290,
      ),
      DriverLocation(
        lat: origin.latitude - 0.0053,
        lng: origin.longitude - 0.0040,
        rotation: 10,
      ),
      DriverLocation(
        lat: origin.latitude - 0.0005,
        lng: origin.longitude + 0.0004,
        rotation: 290,
      ),
    ]);
  }
}
