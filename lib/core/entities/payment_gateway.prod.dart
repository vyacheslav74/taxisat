import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/graphql/fragments/payment_gateway.fragment.graphql.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:rider_flutter/core/entities/gateway_link_method.prod.dart';

extension PaymentGatewayProdX on Fragment$PaymentGatewayFragment {
  PaymentGatewayEntity get toEntity => PaymentGatewayEntity(
        id: id,
        name: title,
        logoUrl: media != null ? (Env.serverUrl + media!.address) : null,
        linkMethod: linkMethod.toEntity,
      );
}

extension PaymentGatewaysProdX on List<Fragment$PaymentGatewayFragment> {
  List<PaymentGatewayEntity> get toEntity => map((e) => e.toEntity).toList();
}
