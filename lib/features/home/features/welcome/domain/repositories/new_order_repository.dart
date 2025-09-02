import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/error/failure.dart';

abstract class NewOrderRepository {
  Future<Either<Failure, (List<FavoriteLocationEntity>, List<PlaceEntity>)>> getDestinationSuggestions();
}
