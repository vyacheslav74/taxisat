import 'package:collection/collection.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/graphql/fragments/current_order.fragment.graphql.dart';
import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:rider_flutter/core/entities/chat_message.prod.dart';
import 'package:rider_flutter/core/entities/driver.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:rider_flutter/core/entities/payment_gateway.prod.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/entities/ride_option.prod.dart';
import 'package:rider_flutter/core/entities/saved_payment_method.prod.dart';
import 'package:rider_flutter/core/enums/order_status.prod.dart';
import 'package:rider_flutter/core/enums/payment_mode.prod.dart';
import 'package:rider_flutter/core/extensions/point_fragment.pod.dart';

extension OrderEntityProdX on Fragment$CurrentOrder {
  OrderEntity get toEntity {
    return OrderEntity(
      id: id,
      status: status.toEntity,
      currency: currency,
      cashPaymentAllowed: service?.paymentMethod != Enum$ServicePaymentMethod.OnlyCredit,
      walletCredit: rider?.wallets.firstWhereOrNull((element) => element.currency == currency)?.balance ?? 0,
      driver: driver == null
          ? null
          : DriverEntity(
              firstName: driver!.firstName,
              lastName: driver!.lastName,
              mobileNumber: driver!.mobileNumber,
              imageUrl: driver!.media == null ? null : (Env.serverUrl + driver!.media!.address),
              vehiclePlateNumber: driver!.carPlate,
              vehicleModel: driver!.car?.name,
              vehicleColor: driver?.carColor?.name,
              rating: driver?.rating,
              ratingCount: driver!.reviewCount.toInt(),
            ),
      cost: costBest,
      costAfterCoupon: costAfterCoupon,
      arrivedAtWaypointIndex: destinationArrivedTo,
      createdAt: createdOn,
      waypoints: points
          .mapIndexed(
            (index, element) => PlaceEntity(
              coordinates: element.toLatLngEntity,
              address: addresses[index],
            ),
          )
          .toList(),
      rideDirections: directions?.toLatLngEntities ?? [],
      driverDirections: driverDirections?.toLatLngEntities ?? [],
      serviceName: service!.name,
      serviceImageUrl: Env.serverUrl + service!.media.address,
      cancellationFee: service!.cancellationTotalFee,
      distance: distanceBest,
      duration: durationBest,
      waitTime: waitMinutes,
      etaPickup: etaPickup,
      expectedAt: expectedTimestamp,
      startedAt: startTimestamp,
      lastSeenMessagesAt: riderLastSeenMessagesAt,
      paymentMethod: (paymentMode?.toEntity, paymentGateway?.toEntity, savedPaymentMethod?.toEntity).toUnion,
      chatMessages: conversations
          .map(
            (e) => e.toEntity,
          )
          .toList(),
    );
  }

  OrderCompactEntity get toCompactEntity {
    return OrderCompactEntity(
      id: id,
      driver: driver == null
          ? null
          : DriverEntity(
              firstName: driver!.firstName,
              lastName: driver!.lastName,
              mobileNumber: driver!.mobileNumber,
              imageUrl: driver!.media == null ? null : (Env.serverUrl + driver!.media!.address),
              vehiclePlateNumber: driver!.carPlate,
              vehicleModel: driver!.car?.name,
              vehicleColor: driver?.carColor?.name,
              rating: driver?.rating,
              ratingCount: driver!.reviewCount.toInt(),
            ),
      fee: costAfterCoupon,
      createdAt: createdOn,
      waypoints: points
          .mapIndexed(
            (index, element) => PlaceEntity(
              coordinates: element.toLatLngEntity,
              address: addresses.length > index ? addresses[index] : '-',
            ),
          )
          .toList(),
      serviceName: service?.name ?? "-",
      serviceImageUrl: service == null ? null : (Env.serverUrl + service!.media.address),
      waitTime: waitMinutes,
      expectedAt: expectedTimestamp,
      startedAt: startTimestamp,
      distanceBest: distanceBest,
      durationBest: durationBest,
      endedAt: finishTimestamp,
      isTwoWayTrip: addresses.first == addresses.last,
      currency: currency,
      serviceDescription: service?.description,
      rideOptions: options.map((e) => e.toEntity).toList(),
      paymentMethodUnion: (
        paymentMode?.toEntity,
        paymentGateway?.toEntity,
        savedPaymentMethod?.toEntity,
      ).toUnion,
    );
  }
}
