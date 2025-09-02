import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:generic_map/generic_map.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:rider_flutter/config/graphql/documents/geo.graphql.dart';
import 'package:rider_flutter/core/entities/place.prod.dart';
import 'package:rider_flutter/core/enums/map_provider.prod.dart';

import '../error/failure.dart';
import 'geo_datasource.dart';
import 'graphql_datasource.dart';
import 'location_datasource.dart';

@prod
@LazySingleton(as: GeoDatasource)
class GeoDatasourceImpl implements GeoDatasource {
  final LocationDatasource locationDatasource;
  final GraphqlDatasource graphqlDatasource;

  GeoDatasourceImpl(this.graphqlDatasource, this.locationDatasource);

  @override
  Future<Either<Failure, PlaceEntity>> getAddressForLocation({
    required LatLng latLng,
    required String language,
    required MapProviderEnum mapProvider,
  }) async {
    final result = await graphqlDatasource.query(
      Options$Query$ReverseGeocode(
        fetchPolicy: FetchPolicy.cacheFirst,
        variables: Variables$Query$ReverseGeocode(
          lat: latLng.latitude,
          lng: latLng.longitude,
          language: language,
          provider: mapProvider.toGql(),
        ),
      ),
    );
    return result.map((r) {
      final address = r.reverseGeocode;
      return PlaceEntity(
        coordinates: LatLngEntity(lat: address.point.lat, lng: address.point.lng),
        address: address.address,
      );
    });
  }

  @override
  Future<Either<Failure, PlaceEntity>> getCurrentLocation({
    required String language,
    required MapProviderEnum mapProvider,
  }) async {
    final currentPosition = await locationDatasource.getCurrentLocation();
    return getAddressForLocation(
      latLng: currentPosition,
      language: language,
      mapProvider: mapProvider,
    );
  }

  @override
  Future<Either<Failure, List<PlaceEntity>>> getNearbyPlaces({
    required String query,
    required LatLng? latLng,
    required int radius,
    required String language,
    required MapProviderEnum mapProvider,
  }) async {
    final queryResult = await graphqlDatasource.query(
      Options$Query$GetPlaces(
        fetchPolicy: FetchPolicy.cacheFirst,
        variables: Variables$Query$GetPlaces(
          query: query,
          location: latLng?.toLatLngEntity.toGql,
          radius: radius,
          language: language,
          provider: mapProvider.toGql(),
        ),
      ),
    );
    return queryResult.map((r) {
      final places = r.getPlaces;
      return places
          .map(
            (e) => PlaceEntity(
              coordinates: LatLngEntity(lat: e.point.lat, lng: e.point.lng),
              title: e.title,
              address: e.address,
            ),
          )
          .toList();
    });
  }
}
