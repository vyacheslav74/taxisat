import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/profile.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/entities/favorite_driver.dart';
import 'package:rider_flutter/core/entities/favorite_driver.prod.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/entities/profile.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/features/profile/data/models/profile_aggregations_info.dart';
import 'package:rider_flutter/features/profile/data/models/profile_aggregations_info.prod.dart';
import 'package:rider_flutter/features/profile/domain/repositories/profile_repository.dart';

@prod
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryProd implements ProfileRepository {
  final GraphqlDatasource graphqlDatasource;

  ProfileRepositoryProd(this.graphqlDatasource);

  @override
  Future<Either<Failure, ProfileAggregationsInfo>> getProfileAggregationsInfo() async {
    final result = await graphqlDatasource.query(Options$Query$ProfileAggregations());
    return result.map((r) => r.toEntity);
  }

  @override
  Future<Either<Failure, ProfileEntity>> uploadProfileImage({required Either<int, MediaEntity> image}) async {
    final profile = await graphqlDatasource.mutate(Options$Mutation$UpdateProfileImage(
      fetchPolicy: FetchPolicy.noCache,
      variables: Variables$Mutation$UpdateProfileImage(
        mediaId: image.fold(
          (l) => null,
          (r) => r.id,
        ),
        presetImageId: image.fold(
          (l) => l,
          (r) => null,
        ),
      ),
    ));
    return profile.map((r) => r.updateOneRider.toEntity);
  }

  @override
  Future<Either<Failure, List<FavoriteDriverEntity>>> getFavoriteDrivers() async {
    final drivers = await graphqlDatasource.query(Options$Query$FavoriteDrivers());
    return drivers.map((r) => r.rider.favoriteDrivers.map((e) => e.toEntity).toList());
  }

  @override
  Future<Either<Failure, void>> deleteFavoriteDriver({
    required FavoriteDriverEntity entity,
  }) async {
    final result = await graphqlDatasource.mutate(Options$Mutation$DeleteFavoriteDriver(
      variables: Variables$Mutation$DeleteFavoriteDriver(
        driverId: entity.id,
      ),
    ));
    return result;
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    final result = await graphqlDatasource.mutate(Options$Mutation$DeleteAccount());
    return result;
  }
}
