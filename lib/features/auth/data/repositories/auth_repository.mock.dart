import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_number_response.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_otp_response.dart';

import '../../domain/repositories/auth_repository.dart';

@dev
@LazySingleton(as: AuthRepository)
class AuthRepositoryMock implements AuthRepository {
  @override
  Future<Either<Failure, VerifyNumberResponse>> resendOtp(String mobileNumber) async {
    return const Right(VerifyNumberResponse(isExistingUser: true, hash: 'hash'));
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> setPassword(String password) async {
    return Right(VerifyOtpResponse(
      hasName: false,
      profile: ProfileEntity.testProfile,
      hasPassword: true,
      jwtToken: 'token',
    ));
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateProfile({
    required String firstName,
    required String lastName,
    required Gender? gender,
    required String? email,
  }) async {
    return Right(
      ProfileEntity.testProfile,
    );
  }

  @override
  Future<Either<Failure, VerifyNumberResponse>> verifyNumber({
    required String mobileNumber,
    required String countryCode,
  }) async {
    return const Right(VerifyNumberResponse(isExistingUser: false, hash: 'hash'));
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(String hash, String otp) async {
    return Right(
      VerifyOtpResponse(
        hasName: false,
        profile: ProfileEntity.testProfile,
        hasPassword: false,
        jwtToken: 'token',
      ),
    );
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyPassword(String mobileNumber, String password) async {
    return Right(
      VerifyOtpResponse(
        hasName: false,
        profile: ProfileEntity.testProfile,
        hasPassword: false,
        jwtToken: 'token',
      ),
    );
  }
}
