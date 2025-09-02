import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/error/failure.dart';

import 'profile_repository.dart';

@dev
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryMock implements ProfileRepository {
  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    return const Right(
      ProfileEntity(
        firstName: "John",
        lastName: "Doe",
        countryCode: 'US',
        gender: Gender.male,
        email: 'john@doe.com',
        number: '6505551234',
        profileImage: null,
        presetProfileImage: 4,
      ),
    );
  }
}
