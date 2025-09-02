import 'package:flutter_common/core/enums/gateway_link_method.dart';
import 'package:rider_flutter/core/entities/driver.dart';
import 'package:rider_flutter/core/entities/order.dart';
import 'package:flutter_common/features/chat/chat.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/enums/order_status.dart';

final orderTest = OrderEntity(
  id: "1",
  currency: "USD",
  cashPaymentAllowed: true,
  walletCredit: 10,
  etaPickup: DateTime.now().add(const Duration(minutes: 5)),
  status: OrderStatus.requested,
  waypoints: const [
    PlaceEntity(
      coordinates: LatLngEntity(lat: 37.3875, lng: -122.0575),
      address: "16th Ave PentHouse, Mountain View, CA 94041",
    ),
    PlaceEntity(
      coordinates: LatLngEntity(lat: 37.4220, lng: -122.0841),
      address: "1 Infinite Loop, Cupertino",
    )
  ],
  arrivedAtWaypointIndex: null,
  waitTime: 10,
  serviceImageUrl: "https://uploads.ridy.io/ridy-demo/taxi-3.png",
  rideDirections: const [
    LatLngEntity(lat: 37.3875, lng: -122.0575),
    LatLngEntity(lat: 37.385770, lng: -122.064627),
    LatLngEntity(lat: 37.386627, lng: -122.068655),
    LatLngEntity(lat: 37.394856, lng: -122.068583),
    LatLngEntity(lat: 37.400799, lng: -122.069950),
    LatLngEntity(lat: 37.409426, lng: -122.070957),
    LatLngEntity(lat: 37.416224, lng: -122.085845),
    LatLngEntity(lat: 37.422394, lng: -122.091887),
    LatLngEntity(lat: 37.42203, lng: -122.08417),
    LatLngEntity(lat: 37.4220, lng: -122.0841)
  ],
  driverDirections: const [
    LatLngEntity(lat: 37.384135, lng: -122.067976),
    LatLngEntity(lat: 37.385207, lng: -122.066095),
    LatLngEntity(lat: 37.385207, lng: -122.066095),
    LatLngEntity(lat: 37.385808, lng: -122.063315),
    LatLngEntity(lat: 37.386246, lng: -122.059677),
    LatLngEntity(lat: 37.3875, lng: -122.0575),
  ],
  paymentMethod: const PaymentMethodUnion.paymentGateway(
    paymentGateway: PaymentGatewayEntity(
      id: "1",
      name: "Stripe",
      logoUrl: "https://uploads.ridy.io/ridy-demo/stripe.png",
      linkMethod: GatewayLinkMethod.none,
    ),
  ),
  driver: const DriverEntity(
    firstName: "John",
    lastName: "Doe",
    mobileNumber: "+16505551234",
    imageUrl: "https://uploads.ridy.io/ridy-demo/driver-1.png",
    vehiclePlateNumber: "RIDY2018",
    vehicleModel: "Tesla Model 3",
    vehicleColor: "Black",
    rating: 95,
    ratingCount: 129,
  ),
  serviceName: "Premium",
  cancellationFee: 0,
  cost: 24.1,
  costAfterCoupon: 24.1,
  distance: 433,
  duration: 60,
  createdAt: DateTime.now(),
  expectedAt: DateTime.now().add(
    const Duration(
      seconds: 15,
    ),
  ),
  startedAt: null,
  lastSeenMessagesAt: DateTime.now(),
  chatMessages: [
    ChatMessageEntity(
      id: "1",
      message: "I have arrived to the pickup point",
      isSender: false,
      createdAt: DateTime.now().subtract(
        const Duration(minutes: 5),
      ),
    ),
    ChatMessageEntity(
      id: "2",
      message: "I'm coming thanks!",
      isSender: true,
      createdAt: DateTime.now().subtract(
        const Duration(minutes: 3),
      ),
    ),
    ChatMessageEntity(
      id: "3",
      message: "Im on the other side of the street, please wait",
      isSender: false,
      createdAt: DateTime.now().subtract(
        const Duration(minutes: 1),
      ),
    ),
  ],
);
