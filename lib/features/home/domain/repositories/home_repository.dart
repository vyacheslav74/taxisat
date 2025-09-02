import 'package:dartz/dartz.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, (OrderEntity, DriverLocation?)?>> getCurrentOrder();

  Future<Either<Failure, List<DriverLocation>>> getDriversAround(LatLng origin);
}
