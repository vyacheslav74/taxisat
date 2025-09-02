import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_aggregations_info.freezed.dart';

@freezed
class ProfileAggregationsInfo with _$ProfileAggregationsInfo {
  const factory ProfileAggregationsInfo({
    required int totalRides,
    required int totalDistance,
    required int favoriteDrivers,
  }) = _ProfileAggregationsInfo;
}
