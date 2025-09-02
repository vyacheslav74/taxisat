import 'package:rider_flutter/config/graphql/fragments/login.fragment.graphql.dart';
import 'package:rider_flutter/core/entities/profile.prod.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_otp_response.dart';

extension VerifyOtpMutationExtension on Fragment$VerifyOtpOrPasswordFragment {
  VerifyOtpResponse get toEntity => VerifyOtpResponse(
        jwtToken: jwtToken,
        profile: user.toEntity,
        hasPassword: hasPassword,
        hasName: hasName,
      );
}
