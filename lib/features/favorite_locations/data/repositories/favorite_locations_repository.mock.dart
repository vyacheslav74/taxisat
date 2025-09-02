import 'package:dartz/dartz.dart';

import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/enums/address_type.dart';

import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/features/favorite_locations/models/update_favorite_location_input.dart';

import '../../domain/repositories/favorite_locations_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: FavoriteLocationsRepository)
class FavoriteLocationsRepositoryMock implements FavoriteLocationsRepository {
  @override
  Future<Either<Failure, List<FavoriteLocationEntity>>> getFavoriteLocations() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right([
      FavoriteLocationEntity(
        id: "1",
        name: "Home",
        place: PlaceEntity(
          address: "72, Eastern Street, UK",
          coordinates: LatLngEntity(lat: 37.54, lng: -122.233),
        ),
        type: AddressType.home,
      ),
      FavoriteLocationEntity(
        id: "1",
        name: "Gym",
        place: PlaceEntity(
          address: "35, Western Street, UK",
          coordinates: LatLngEntity(lat: 37.44, lng: -122.433),
        ),
        type: AddressType.gym,
      ),
    ]);
  }

  @override
  Future<Either<Failure, FavoriteLocationEntity>> addFavoriteLocation({
    required UpdateFavoriteLocationInput input,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(
      FavoriteLocationEntity(
        id: "1",
        name: "Home",
        place: PlaceEntity(
          address: "72, Eastern Street, UK",
          coordinates: LatLngEntity(lat: 37.54, lng: -122.233),
        ),
        type: AddressType.home,
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> deleteFavoriteLocation({
    required String id,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(unit);
  }

  @override
  Future<Either<Failure, FavoriteLocationEntity>> updateFavoriteLocation({
    required String id,
    required UpdateFavoriteLocationInput input,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(
      FavoriteLocationEntity(
        id: "1",
        name: "Home",
        place: PlaceEntity(
          address: "72, Eastern Street, UK",
          coordinates: LatLngEntity(lat: 37.54, lng: -122.233),
        ),
        type: AddressType.home,
      ),
    );
  }
}
