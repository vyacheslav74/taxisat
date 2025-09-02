import 'package:dartz/dartz.dart';
import 'package:generic_map/generic_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class GeoDatasource {
  Future<Either<Failure, List<PlaceEntity>>> getNearbyPlaces({
    required String query,
    required LatLng? latLng,
    required int radius,
    required String language,
    required MapProviderEnum mapProvider,
  });
  Future<Either<Failure, PlaceEntity>> getAddressForLocation({
    required LatLng latLng,
    required String language,
    required MapProviderEnum mapProvider,
  });
  Future<Either<Failure, PlaceEntity>> getCurrentLocation({
    required String language,
    required MapProviderEnum mapProvider,
  });
}
