import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/config/graphql/documents/calculate_fare.graphql.dart';
import 'package:rider_flutter/core/datasources/graphql_datasource.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/features/home/features/apply_coupon/domain/repositories/coupon_repository.dart';

@prod
@LazySingleton(as: CouponRepository)
class CouponRepositoryImpl implements CouponRepository {
  final GraphqlDatasource graphqlDatasource;

  CouponRepositoryImpl(this.graphqlDatasource);

  @override
  Future<Either<Failure, bool>> checkCouponValidity(String code) async {
    final result = await graphqlDatasource.query(
      Options$Query$GetCouponInfo(
        variables: Variables$Query$GetCouponInfo(
          couponCode: code,
        ),
      ),
    );
    return result.map((r) => true);
  }
}
