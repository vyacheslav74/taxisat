import 'package:rider_flutter/config/graphql/fragments/profile.fragment.graphql.dart';
import 'package:rider_flutter/core/entities/media.prod.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/enums/gender.prod.dart';

extension ProfileEntityProdX on Fragment$ProfileFragment {
  ProfileEntity get toEntity => ProfileEntity(
        firstName: firstName,
        lastName: lastName,
        countryCode: countryIso,
        email: email,
        gender: gender?.toEntity,
        profileImage: media?.toEntity,
        presetProfileImage: presetAvatarNumber,
        number: mobileNumber,
      );
}
