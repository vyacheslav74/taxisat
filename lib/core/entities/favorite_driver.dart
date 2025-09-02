import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_driver.freezed.dart';

@freezed
class FavoriteDriverEntity with _$FavoriteDriverEntity {
  const factory FavoriteDriverEntity({
    required String id,
    required String? firstName,
    required String? lastName,
    required String? avatarUrl,
    required List<String> services,
    required String? carModel,
    required String? carColor,
    required String? carPlateNumber,
    required int? rating,
    required int? ratingsCount,
  }) = _FavoriteDriverEntity;

  const FavoriteDriverEntity._();

  String get fullName => "$firstName $lastName";

  String get ratingText => rating != null ? "${(rating! / 100).toStringAsFixed(1)} ($ratingsCount)" : "";
}
