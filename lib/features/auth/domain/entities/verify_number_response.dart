import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_number_response.freezed.dart';

@freezed
class VerifyNumberResponse with _$VerifyNumberResponse {
  const factory VerifyNumberResponse({
    required bool isExistingUser,
    String? hash,
  }) = _VerifyNumberResponse;
}
