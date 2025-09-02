import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rider_flutter/core/entities/profile.dart';

part 'verify_otp_response.freezed.dart';

@freezed
class VerifyOtpResponse with _$VerifyOtpResponse {
  const factory VerifyOtpResponse({
    required String jwtToken,
    required ProfileEntity profile,
    required bool hasPassword,
    required bool hasName,
  }) = _VerifyOtpResponse;
}
