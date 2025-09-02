import 'package:rider_flutter/config/graphql/fragments/favorite_driver.fragment.graphql.dart';
import 'package:rider_flutter/core/entities/favorite_driver.dart';

extension FavoriteDriverGqlX on Fragment$FavoriteDriver {
  FavoriteDriverEntity get toEntity => FavoriteDriverEntity(
        id: id,
        firstName: firstName,
        lastName: lastName,
        carColor: carColor?.name,
        carModel: car?.name,
        ratingsCount: reviewCount.toInt(),
        services: enabledServices.map((e) => e.name).toList(),
        carPlateNumber: carPlate,
        avatarUrl: media?.address,
        rating: rating,
      );
}
