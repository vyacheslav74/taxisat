import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/login.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/entities/profile.prod.dart';
import 'package:rider_flutter/core/enums/gender.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/features/auth/data/models/verify_number_fragment.prod.dart';
import 'package:rider_flutter/features/auth/data/models/verify_otp_fragment.prod.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_number_response.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_otp_response.dart';

import '../../domain/repositories/auth_repository.dart';

@prod
@LazySingleton(as: AuthRepository)
class LoginRepositoryImpl implements AuthRepository {
  final GraphqlDatasource graphqlDatasource;

  LoginRepositoryImpl(this.graphqlDatasource);

  @override
  Future<Either<Failure, VerifyNumberResponse>> verifyNumber({
    required String mobileNumber,
    required String countryCode,
  }) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$VerifyNumber(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$VerifyNumber(
          number: mobileNumber,
          countryIso: countryCode,
        ),
      ),
    );
    return result.map((r) => r.verifyNumber.toEntity);
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(String hash, String otp) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$VerifyOtp(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$VerifyOtp(
          hash: hash,
          code: otp,
        ),
      ),
    );
    return result.map((r) => r.verifyOtp.toEntity);
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyPassword(String mobileNumber, String password) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$VerifyPassword(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$VerifyPassword(
          mobileNumber: mobileNumber,
          password: password,
        ),
      ),
    );
    return result.map((r) => r.verifyPassword.toEntity);
  }

  @override
  Future<Either<Failure, VerifyNumberResponse>> resendOtp(String mobileNumber) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$ResendOtp(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$ResendOtp(
          mobileNumber: mobileNumber,
          force: true,
        ),
      ),
    );
    return result.map((r) => r.verifyNumber.toEntity);
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> setPassword(String password) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$SetPassword(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SetPassword(
          password: password,
        ),
      ),
    );
    return result.map((r) => r.setPassword.toEntity);
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateProfile({
    required String firstName,
    required String lastName,
    required String? email,
    required Gender? gender,
  }) async {
    final result = await graphqlDatasource.mutate(
      Options$Mutation$SetName(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SetName(
          firstName: firstName,
          lastName: lastName,
          email: email,
          gender: gender!.toGql,
        ),
      ),
    );
    return result.map((r) => r.updateOneRider.toEntity);
  }
}
