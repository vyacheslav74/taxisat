import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/graphql/documents/calculate_fare.graphql.dart';
import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:rider_flutter/core/dto/calculate_fare_response.dart';
import 'package:rider_flutter/core/entities/payment_gateway.prod.dart';
import 'package:rider_flutter/core/entities/ride_option.prod.dart';
import 'package:rider_flutter/core/entities/saved_payment_method.prod.dart';
import 'package:rider_flutter/core/entities/service.dart';
import 'package:rider_flutter/core/extensions/point_fragment.pod.dart';

import '../entities/service_category.dart';

extension CalculateFareProdX on Query$CalculateFare {
  CalculateFareResponse get toEntity => CalculateFareResponse(
        paymentGateways: paymentGateways.toEntity,
        savedPaymentMethods: savedPaymentMethods.toEntity,
        services: getFares.services.toEntity,
        currency: getFares.currency,
        wallets: riderWallets.map((e) => (e.currency, e.balance)).toList(),
        distanceInMeters: getFares.distance.toInt(),
        durationInSeconds: getFares.duration.toInt(),
        directions: getFares.directions.toLatLngEntities,
      );
}

extension ServiceCategoriesListProdX on List<Query$CalculateFare$getFares$services> {
  List<ServiceCategoryEntity> get toEntity => map((e) => e.toEntity).toList();
}

extension ServiceCategoryProdX on Query$CalculateFare$getFares$services {
  ServiceCategoryEntity get toEntity => ServiceCategoryEntity(
        id: id,
        name: name,
        services: services.map((e) => e.toEntity).toList(),
      );
}

extension ServiceEntityProdX on Query$CalculateFare$getFares$services$services {
  ServiceEntity get toEntity => ServiceEntity(
        id: id,
        name: name,
        description: description,
        price: cost,
        priceAfterCouponApplied: costAfterCoupon,
        capacity: personCapacity,
        imageUrl: Env.serverUrl + media.address,
        rideOptions: options.map((e) => e.toEntity).toList(),
        isCashAllowed:
            paymentMethod == Enum$ServicePaymentMethod.OnlyCash || paymentMethod == Enum$ServicePaymentMethod.CashCredit,
        isOnlinePaymentAllowed: paymentMethod == Enum$ServicePaymentMethod.OnlyCredit ||
            paymentMethod == Enum$ServicePaymentMethod.CashCredit,
      );
}
