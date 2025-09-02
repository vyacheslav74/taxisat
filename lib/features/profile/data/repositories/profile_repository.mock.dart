import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/favorite_driver.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/features/profile/data/models/profile_aggregations_info.dart';
import 'package:rider_flutter/features/profile/domain/repositories/profile_repository.dart';

@dev
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryMock implements ProfileRepository {
  @override
  Future<Either<Failure, ProfileAggregationsInfo>> getProfileAggregationsInfo() async {
    return const Right(
      ProfileAggregationsInfo(
        totalRides: 432,
        totalDistance: 123,
        favoriteDrivers: 5,
      ),
    );
  }

  @override
  Future<Either<Failure, ProfileEntity>> uploadProfileImage({required Either<int, MediaEntity> image}) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(
      ProfileEntity(
        firstName: "John",
        lastName: "Doe",
        countryCode: "US",
        gender: Gender.male,
        email: null,
        profileImage: image.fold(
          (l) => null,
          (r) => r,
        ),
        number: '6505551234',
        presetProfileImage: image.fold(
          (l) => l,
          (r) => null,
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, List<FavoriteDriverEntity>>> getFavoriteDrivers() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right([
      // FavoriteDriverEntity(
      //   id: "1",
      //   firstName: "John",
      //   lastName: "Doe",
      //   avatarUrl: "https://uploads.ridy.io/ridy-demo/driver-1.png",
      //   services: ["Economy", "Plus"],
      //   carModel: "Honda Civic",
      //   carColor: "Black",
      //   carPlateNumber: "RIDY28944",
      //   rating: 96,
      //   ratingsCount: 158,
      // )
    ]);
  }

  @override
  Future<Either<Failure, void>> deleteFavoriteDriver({required FavoriteDriverEntity entity}) async {
    return const Right(null);
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    return const Right(null);
  }
}
