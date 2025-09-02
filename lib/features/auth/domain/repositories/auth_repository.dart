import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_otp_response.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_number_response.dart';

abstract class AuthRepository {
  Future<Either<Failure, VerifyNumberResponse>> verifyNumber({
    required String mobileNumber,
    required String countryCode,
  });

  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(String hash, String otp);

  Future<Either<Failure, VerifyOtpResponse>> verifyPassword(
    String mobileNumber,
    String password,
  );

  Future<Either<Failure, VerifyOtpResponse>> setPassword(String password);

  Future<Either<Failure, VerifyNumberResponse>> resendOtp(String mobileNumber);

  Future<Either<Failure, ProfileEntity>> updateProfile({
    required String firstName,
    required String lastName,
    required String? email,
    required Gender? gender,
  });
}
