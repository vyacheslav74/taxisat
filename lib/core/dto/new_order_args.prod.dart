import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:rider_flutter/core/dto/new_order_args.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/core/entities/place.prod.dart';
import 'package:rider_flutter/core/enums/payment_mode.prod.dart';

extension NewOrderArgsProdX on NewOrderArgs {
  Input$CreateOrderInput get toGql => Input$CreateOrderInput(
        points: waypoints.map((e) => e.coordinates.toGql).toList(),
        addresses: waypoints.map((e) => e.address).toList(),
        couponCode: couponCode,
        twoWay: isTwoWay,
        waitTime: waitTime,
        paymentMode: paymentMethod.paymentMode.toGql,
        paymentMethodId: paymentMethod.id,
        optionIds: rideOptions.map((e) => e.id).toList(),
        intervalMinutes: dateTime?.difference(DateTime.now()).inMinutes ?? 0,
        serviceId: int.parse(serviceId!),
      );
}
