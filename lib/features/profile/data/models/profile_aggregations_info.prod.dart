import 'package:rider_flutter/config/graphql/documents/profile.graphql.dart';

import 'profile_aggregations_info.dart';

extension ProfileAggregationsProdX on Query$ProfileAggregations {
  ProfileAggregationsInfo get toEntity => ProfileAggregationsInfo(
        totalRides: rider.ordersAggregate.first.count?.id ?? 0,
        totalDistance: rider.ordersAggregate.first.sum?.distanceBest?.toInt() ?? 0,
        favoriteDrivers: rider.favoriteDriversAggregate.first.count?.id ?? 0,
      );
}
