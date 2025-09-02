import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:flutter_common/features/country_code_dialog/domain/entities/country_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String? firstName,
    required String? lastName,
    required String? countryCode,
    required String? email,
    required Gender? gender,
    required MediaEntity? profileImage,
    required int? presetProfileImage,
    required String number,
  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) => _$ProfileEntityFromJson(json);

  static ProfileEntity get testProfile => const ProfileEntity(
        firstName: 'John',
        lastName: 'Doe',
        countryCode: 'US',
        number: '6505551234',
        gender: Gender.male,
        email: 'john@doe.com',
        profileImage: null,
        presetProfileImage: 1,
      );

  const ProfileEntity._();

  String get mobileNumberFormatted {
    if (countryCode?.isEmpty == false) {
      final country = CountryCode.parseByIso(countryCode!);
      final dialCode = country.e164CC;
      final mobileNumber = (number.startsWith(dialCode)) ? number.substring(dialCode.length) : number;
      return '+$dialCode $mobileNumber';
    } else {
      return "+$number";
    }
  }
}

extension ProfileX on ProfileEntity {
  String get fullName => [firstName, lastName].nonNulls.isNotEmpty ? [firstName, lastName].nonNulls.join(' ') : '-';

  Option<Either<String, String>> get avatar {
    if (profileImage != null) {
      return Some(Right(profileImage!.address));
    } else if (presetProfileImage != null) {
      return Some(Left(presetProfileImageAsset!.path));
    } else {
      return const None();
    }
  }

  AssetGenImage? get presetProfileImageAsset {
    switch (presetProfileImage) {
      case (1):
        return Assets.avatars.a1;
      case (2):
        return Assets.avatars.a2;
      case (3):
        return Assets.avatars.a3;
      case (4):
        return Assets.avatars.a4;
      case (5):
        return Assets.avatars.a5;
      case (6):
        return Assets.avatars.a6;
      case (7):
        return Assets.avatars.a7;
      case (8):
        return Assets.avatars.a8;
      case (9):
        return Assets.avatars.a9;
      case (10):
        return Assets.avatars.a10;
      case (11):
        return Assets.avatars.a11;
      case (12):
        return Assets.avatars.a12;
      case (13):
        return Assets.avatars.a13;
      case (14):
        return Assets.avatars.a14;
      case (15):
        return Assets.avatars.a15;
      case (16):
        return Assets.avatars.a16;
      case (17):
        return Assets.avatars.a17;
      case (18):
        return Assets.avatars.a18;
      case (19):
        return Assets.avatars.a19;
      case (20):
        return Assets.avatars.a20;
      case (21):
        return Assets.avatars.a21;
      case (22):
        return Assets.avatars.a22;
      case (23):
        return Assets.avatars.a23;
      case (24):
        return Assets.avatars.a24;
      case (25):
        return Assets.avatars.a25;
      case (26):
        return Assets.avatars.a26;
      case (27):
        return Assets.avatars.a27;
      case (28):
        return Assets.avatars.a28;
      case (29):
        return Assets.avatars.a29;
      case (30):
        return Assets.avatars.a30;
      default:
        return null;
    }
  }
}
