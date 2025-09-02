import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:generic_map/generic_map.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

import '../error/failure.dart';
import 'geo_datasource.dart';
import 'location_datasource.dart';

final List<String> randomAdresses = [
  "456 Elm St, Anytown USA",
  "64-120 oakdale street number 123 NW",
  "123 Main St, Anytown USA",
  "789 Maple St, Anytown USA"
];

@dev
@LazySingleton(as: GeoDatasource)
class GeoDatasourceImpl implements GeoDatasource {
  LocationDatasource locationDatasource;

  GeoDatasourceImpl(this.locationDatasource);

  @override
  Future<Either<Failure, PlaceEntity>> getAddressForLocation({
    required LatLng latLng,
    required String language,
    required MapProviderEnum mapProvider,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(
      PlaceEntity(
        coordinates: LatLngEntity(
          lat: latLng.latitude,
          lng: latLng.longitude,
        ),
        address: randomAdresses[Random().nextInt(randomAdresses.length)],
      ),
    );
  }

  @override
  Future<Either<Failure, PlaceEntity>> getCurrentLocation({
    required String language,
    required MapProviderEnum mapProvider,
  }) async {
    final currentLocation = await locationDatasource.getCurrentLocation();
    return getAddressForLocation(
      latLng: currentLocation,
      language: language,
      mapProvider: mapProvider,
    );
  }

  @override
  Future<Either<Failure, List<PlaceEntity>>> getNearbyPlaces({
    required String query,
    required LatLng? latLng,
    required int radius,
    required String language,
    required MapProviderEnum mapProvider,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(
      [
        PlaceEntity(
          coordinates: LatLngEntity(lat: 37.3875, lng: -122.0575),
          address: "Silicon Valley",
        ),
        PlaceEntity(
          coordinates: LatLngEntity(lat: 37.4220, lng: -122.0841),
          address: "Palo Alto",
        ),
        PlaceEntity(
          coordinates: LatLngEntity(lat: 37.4419, lng: -122.1430),
          address: "Mountain View",
        ),
        PlaceEntity(
          coordinates: LatLngEntity(lat: 37.3541, lng: -121.9552),
          address: "San Jose",
        ),
      ],
    );
  }
}
