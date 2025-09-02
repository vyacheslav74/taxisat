import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
class DriverEntity with _$DriverEntity {
  const factory DriverEntity({
    required String? firstName,
    required String? lastName,
    required String mobileNumber,
    required String? imageUrl,
    required String? vehiclePlateNumber,
    required String? vehicleModel,
    required String? vehicleColor,
    required int? rating,
    required int ratingCount,
  }) = _DriverEntity;

  factory DriverEntity.fromJson(Map<String, dynamic> json) => _$DriverEntityFromJson(json);

  const DriverEntity._();

  String get fullName => "$firstName $lastName";

  Option<Either<String, String>> get avatar {
    if (imageUrl != null) {
      return Some(Right(imageUrl!));
    } else {
      return const None();
    }
  }

  String get vehicleInfo => [vehicleModel, vehicleColor].nonNulls.join(' - ');

  String ratingTitle(BuildContext context, int? ratingToShow) {
    switch (ratingToShow) {
      case 1:
        return context.translate.oneStarReviewTitle(firstName ?? '');
      case 2:
        return context.translate.twoStarReviewTitle(firstName ?? '');
      case 3:
        return context.translate.threeStarReviewTitle(firstName ?? '');
      case 4:
        return context.translate.fourStarReviewTitle(firstName ?? '');
      case 5:
        return context.translate.fiveStarReviewTitle(firstName ?? '');
      default:
        return context.translate.howWasYourTrip;
    }
  }
}
