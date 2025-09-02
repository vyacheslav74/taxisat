import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../models/update_favorite_location_input.dart';

abstract class FavoriteLocationsRepository {
  Future<Either<Failure, List<FavoriteLocationEntity>>> getFavoriteLocations();

  Future<Either<Failure, FavoriteLocationEntity>> addFavoriteLocation({
    required UpdateFavoriteLocationInput input,
  });

  Future<Either<Failure, Unit>> deleteFavoriteLocation({
    required String id,
  });

  Future<Either<Failure, FavoriteLocationEntity>> updateFavoriteLocation({
    required String id,
    required UpdateFavoriteLocationInput input,
  });
}
