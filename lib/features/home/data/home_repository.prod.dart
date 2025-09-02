import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:rider_flutter/config/graphql/documents/home.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/entities/order.prod.dart';
import 'package:rider_flutter/core/entities/place.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/core/extensions/point_fragment.pod.dart';

import '../domain/repositories/home_repository.dart';

@prod
@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final GraphqlDatasource graphQLDatasource;

  HomeRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, (OrderEntity, DriverLocation?)?>> getCurrentOrder() async {
    final result = await graphQLDatasource.query(
      Options$Query$CurrentOrder(
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    return result.map(
      (r) => r.currentOrder == null
          ? null
          : (
              r.currentOrder!.toEntity,
              r.getCurrentOrderDriverLocation?.toDriverLocation,
            ),
    );
  }

  @override
  Future<Either<Failure, List<DriverLocation>>> getDriversAround(LatLng origin) async {
    final result = await graphQLDatasource.query(
      Options$Query$DriversAround(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Query$DriversAround(
          center: origin.toLatLngEntity.toGql,
        ),
      ),
    );
    return result.map((r) => r.getDriversLocation.map((e) => e.toDriverLocation).toList());
  }
}
