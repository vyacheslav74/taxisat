import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/enums/address_type.dart';

part 'update_favorite_location_input.freezed.dart';

@freezed
class UpdateFavoriteLocationInput with _$UpdateFavoriteLocationInput {
  const factory UpdateFavoriteLocationInput({
    required String name,
    required AddressType type,
    required PlaceEntity place,
  }) = _UpdateFavoriteLocationInput;

  const UpdateFavoriteLocationInput._();
}
