import 'package:dartz/dartz.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/profile.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/core/entities/profile.prod.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/core/repositories/profile_repository.dart';

@prod
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryProd implements ProfileRepository {
  final GraphqlDatasource graphqlDatasource;

  ProfileRepositoryProd(this.graphqlDatasource);

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    final profile = await graphqlDatasource.query(
      Options$Query$Profile(
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    return profile.map(
      (r) => r.rider.toEntity,
    );
  }
}
