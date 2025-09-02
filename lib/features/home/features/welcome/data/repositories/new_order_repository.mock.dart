import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/enums/address_type.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../../welcome/domain/repositories/new_order_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: NewOrderRepository)
class NewOrderRepositoryMock implements NewOrderRepository {
  @override
  Future<Either<Failure, (List<FavoriteLocationEntity>, List<PlaceEntity>)>> getDestinationSuggestions() async {
    return const Right(
      (
        [
          FavoriteLocationEntity(
            id: "1",
            name: "My home",
            type: AddressType.home,
            place: PlaceEntity(
              coordinates: LatLngEntity(lat: 37.4210, lng: -122.0341),
              address: "64-120 oakdale street number 123 NW",
            ),
          ),
          FavoriteLocationEntity(
            id: "1",
            name: "Office",
            type: AddressType.work,
            place: PlaceEntity(
              coordinates: LatLngEntity(lat: 37.4210, lng: -122.0341),
              address: "456 Elm St, Anytown USA",
            ),
          )
        ],
        [
          PlaceEntity(
            address: "64-120 oakdale street number 123 NW",
            coordinates: LatLngEntity(
              lat: 40.7128,
              lng: -74.0060,
            ),
          ),
          PlaceEntity(
            address: "123 Main St, Anytown USA",
            coordinates: LatLngEntity(
              lat: 40.7128,
              lng: -74.0060,
            ),
          ),
          PlaceEntity(
            address: "456 Elm St, Anytown USA",
            coordinates: LatLngEntity(
              lat: 40.7128,
              lng: -74.0060,
            ),
          ),
          PlaceEntity(
            address: "789 Maple St, Anytown USA",
            coordinates: LatLngEntity(
              lat: 40.7128,
              lng: -74.0060,
            ),
          ),
        ]
      ),
    );
  }
}
