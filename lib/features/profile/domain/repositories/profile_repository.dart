import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:rider_flutter/core/entities/favorite_driver.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../data/models/profile_aggregations_info.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileAggregationsInfo>> getProfileAggregationsInfo();

  Future<Either<Failure, List<FavoriteDriverEntity>>> getFavoriteDrivers();

  Future<Either<Failure, void>> deleteFavoriteDriver({
    required FavoriteDriverEntity entity,
  });

  Future<Either<Failure, ProfileEntity>> uploadProfileImage({
    required Either<int, MediaEntity> image,
  });

  Future<Either<Failure, void>> deleteAccount();
}
