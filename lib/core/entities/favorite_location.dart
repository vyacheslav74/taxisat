import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/enums/address_type.dart';

part 'favorite_location.freezed.dart';

@freezed
class FavoriteLocationEntity with _$FavoriteLocationEntity {
  const factory FavoriteLocationEntity({
    required String id,
    required String name,
    required PlaceEntity place,
    required AddressType type,
  }) = _FavoriteLocationEntity;
}
