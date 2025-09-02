import 'package:flutter_common/core/entities/ride_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/entities/place.dart';

part 'calculate_fare_args.freezed.dart';
part 'calculate_fare_args.g.dart';

@freezed
class CalculateFareArgs with _$CalculateFareArgs {
  const factory CalculateFareArgs({
    required List<PlaceEntity> waypoints,
    required String? couponCode,
    required bool isTwoWay,
    required int? waitTime,
    required List<RideOptionEntity> rideOptions,
  }) = _CalculateFareArgs;

  factory CalculateFareArgs.fromJson(Map<String, dynamic> json) => _$CalculateFareArgsFromJson(json);
}
