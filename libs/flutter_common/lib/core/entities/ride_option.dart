import 'package:flutter_common/core/enums/ride_option_icon.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_option.freezed.dart';
part 'ride_option.g.dart';

@Freezed(fromJson: true)
class RideOptionEntity with _$RideOptionEntity {
  const factory RideOptionEntity({
    required String id,
    required String name,
    required RideOptionIcon icon,
    String? description,
    double? price,
  }) = _RideOptionEntity;

  factory RideOptionEntity.fromJson(Map<String, dynamic> json) =>
      _$RideOptionEntityFromJson(json);
}
