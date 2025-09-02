import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/home.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:rider_flutter/core/entities/favorite_location.prod.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/core/extensions/point_fragment.pod.dart';

import '../../../welcome/domain/repositories/new_order_repository.dart';

@prod
@LazySingleton(as: NewOrderRepository)
class NewOrderRepositoryImpl implements NewOrderRepository {
  final GraphqlDatasource graphQLDatasource;

  NewOrderRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, (List<FavoriteLocationEntity>, List<PlaceEntity>)>> getDestinationSuggestions() async {
    final result = await graphQLDatasource.query(
      Options$Query$DestinationSuggesions(
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    return result.map((r) {
      final favoriteLocations = r.riderAddresses.map((e) => e.toEntity).toList();
      final places = r.orders.edges.map((e) {
        final point = e.node.points.last.toLatLngEntity;
        final address = e.node.addresses.last;
        return PlaceEntity(
          coordinates: point,
          address: address,
        );
      }).toList();
      return (favoriteLocations, places);
    });
  }
}
