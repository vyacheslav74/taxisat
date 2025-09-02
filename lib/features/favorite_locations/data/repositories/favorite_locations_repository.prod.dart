import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/favorite_locations.graphql.dart';
import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:rider_flutter/core/entities/favorite_location.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/features/favorite_locations/models/update_favorite_location_input.prod.dart';

import '../../domain/repositories/favorite_locations_repository.dart';
import '../../models/update_favorite_location_input.dart';

@prod
@LazySingleton(as: FavoriteLocationsRepository)
class FavoriteLocationsRepositoryImpl implements FavoriteLocationsRepository {
  final GraphqlDatasource graphQLDatasource;

  FavoriteLocationsRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, List<FavoriteLocationEntity>>> getFavoriteLocations() async {
    final result = await graphQLDatasource.query(Options$Query$FavoriteLocations(
      fetchPolicy: FetchPolicy.noCache,
    ));
    return result.map((r) => r.riderAddresses.toEntity);
  }

  @override
  Future<Either<Failure, Unit>> deleteFavoriteLocation({
    required String id,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$DeleteFavoriteLocation(
        variables: Variables$Mutation$DeleteFavoriteLocation(
          input: Input$DeleteOneRiderAddressInput(
            id: id,
          ),
        ),
      ),
    );
    return result.map((r) => unit);
  }

  @override
  Future<Either<Failure, FavoriteLocationEntity>> addFavoriteLocation({
    required UpdateFavoriteLocationInput input,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$CreateFavoriteLocation(
        variables: Variables$Mutation$CreateFavoriteLocation(
          input: Input$CreateOneRiderAddressInput(
            riderAddress: input.toGql,
          ),
        ),
      ),
    );
    return result.map((r) => r.createOneRiderAddress.toEntity);
  }

  @override
  Future<Either<Failure, FavoriteLocationEntity>> updateFavoriteLocation({
    required String id,
    required UpdateFavoriteLocationInput input,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$UpdateFavoriteLocation(
        variables: Variables$Mutation$UpdateFavoriteLocation(
          input: Input$UpdateOneRiderAddressInput(
            id: id,
            update: input.toGql,
          ),
        ),
      ),
    );
    return result.map((r) => r.updateOneRiderAddress.toEntity);
  }
}
