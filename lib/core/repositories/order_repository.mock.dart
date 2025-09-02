import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/dto/calculate_fare_args.dart';
import 'package:rider_flutter/core/dto/calculate_fare_response.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/ride_option.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';
import 'package:rider_flutter/core/entities/service.dart';
import 'package:rider_flutter/core/entities/service_category.dart';
import 'package:flutter_common/core/enums/card_type.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';
import 'package:rider_flutter/core/error/failure.dart';
import 'package:rider_flutter/core/repositories/order_repository.dart';

@dev
@LazySingleton(as: OrderRepository)
class OrderRepositoryMock implements OrderRepository {
  @override
  Future<Either<Failure, CalculateFareResponse>> calculateFare({
    required CalculateFareArgs args,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(
      CalculateFareResponse(
        directions: [],
        paymentGateways: const [
          PaymentGatewayEntity(
            id: "1",
            name: "PayPal",
            logoUrl: "https://uploads.ridy.io/ridy-demo/paypal.png",
            linkMethod: GatewayLinkMethod.redirect,
          ),
          PaymentGatewayEntity(
            id: "2",
            name: "Stripe",
            logoUrl: "https://uploads.ridy.io/ridy-demo/stripe.png",
            linkMethod: GatewayLinkMethod.manual,
          )
        ],
        savedPaymentMethods: [
          SavedPaymentMethodEntity(
            id: "1",
            cardType: CardType.visa,
            last4Digits: "4242",
            cardHolderName: "John Doe",
            expiryDate: DateTime.now().add(const Duration(days: 365)),
            isDefault: true,
            isEnabled: true,
          ),
        ],
        wallets: [
          ("USD", 100),
        ],
        services: [
          const ServiceCategoryEntity(
            id: "1",
            name: "Economy",
            services: [
              ServiceEntity(
                id: "1",
                name: "Comfort",
                description: "Regular taxi",
                imageUrl: "https://uploads.ridy.io/ridy-demo/taxi-1.png",
                capacity: 3,
                price: 25,
                priceAfterCouponApplied: null,
                isCashAllowed: true,
                isOnlinePaymentAllowed: true,
                rideOptions: [
                  RideOptionEntity(id: "1", name: "Small pet", icon: RideOptionIcon.pet, price: 2),
                  RideOptionEntity(id: "2", name: "Large pet", icon: RideOptionIcon.pet, price: 4),
                  RideOptionEntity(id: "3", name: "Bags or luggage", icon: RideOptionIcon.luggage, price: 5),
                  RideOptionEntity(id: "4", name: "A quiet ride", icon: RideOptionIcon.custom1, price: null),
                  RideOptionEntity(
                      id: "5",
                      name: "Disabled passenger",
                      icon: RideOptionIcon.custom2,
                      description: "Driver’s assistance + Empty trunk",
                      price: 8),
                ],
              ),
              ServiceEntity(
                id: "2",
                name: "Ride X",
                description: "Regular taxi",
                imageUrl: "https://uploads.ridy.io/ridy-demo/taxi-2.png",
                capacity: 4,
                price: 30,
                priceAfterCouponApplied: 30,
                isCashAllowed: true,
                isOnlinePaymentAllowed: true,
                rideOptions: [],
              ),
              ServiceEntity(
                id: "3",
                name: "Ride XL",
                description: "Regular taxi",
                imageUrl: "https://uploads.ridy.io/ridy-demo/taxi-3.png",
                capacity: 5,
                price: 35,
                priceAfterCouponApplied: 35,
                isCashAllowed: true,
                isOnlinePaymentAllowed: true,
                rideOptions: [],
              ),
            ],
          ),
          const ServiceCategoryEntity(id: "2", name: "Plus", services: []),
          const ServiceCategoryEntity(id: "3", name: "Premium", services: []),
        ],
        currency: "USD",
        durationInSeconds: 100,
        distanceInMeters: 1000,
      ),
    );
  }
}
