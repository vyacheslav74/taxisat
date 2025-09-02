import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:flutter_common/core/enums/order_status.dart';

extension OrderStatusProdX on Enum$OrderStatus {
  OrderStatus get toEntity {
    switch (this) {
      case Enum$OrderStatus.Requested:
        return OrderStatus.requested;
      case Enum$OrderStatus.NotFound:
        return OrderStatus.notFound;
      case Enum$OrderStatus.NoCloseFound:
        return OrderStatus.noCloseFound;
      case Enum$OrderStatus.Found:
        return OrderStatus.found;
      case Enum$OrderStatus.DriverAccepted:
        return OrderStatus.driverAccepted;
      case Enum$OrderStatus.Arrived:
        return OrderStatus.arrived;
      case Enum$OrderStatus.WaitingForPrePay:
        return OrderStatus.waitingForPrePay;
      case Enum$OrderStatus.DriverCanceled:
        return OrderStatus.driverCanceled;
      case Enum$OrderStatus.RiderCanceled:
        return OrderStatus.riderCanceled;
      case Enum$OrderStatus.Started:
        return OrderStatus.started;
      case Enum$OrderStatus.WaitingForPostPay:
        return OrderStatus.waitingForPostPay;
      case Enum$OrderStatus.WaitingForReview:
        return OrderStatus.waitingForReview;
      case Enum$OrderStatus.Finished:
        return OrderStatus.finished;
      case Enum$OrderStatus.Booked:
        return OrderStatus.booked;
      case Enum$OrderStatus.Expired:
        return OrderStatus.expired;

      case Enum$OrderStatus.$unknown:
        throw Exception('Unknown OrderStatus');
    }
  }
}
