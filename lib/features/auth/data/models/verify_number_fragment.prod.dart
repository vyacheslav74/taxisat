import 'package:rider_flutter/config/graphql/fragments/login.fragment.graphql.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_number_response.dart';

extension $VerifyNumberResponseExtension on Fragment$VerifyNumberFragment {
  VerifyNumberResponse get toEntity => VerifyNumberResponse(
        isExistingUser: isExistingUser,
        hash: hash,
      );
}
