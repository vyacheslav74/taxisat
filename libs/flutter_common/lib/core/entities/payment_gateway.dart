import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/gateway_link_method.dart';
import 'payment_method_union.dart';

part 'payment_gateway.freezed.dart';
part 'payment_gateway.g.dart';

@Freezed(fromJson: true)
class PaymentGatewayEntity with _$PaymentGatewayEntity {
  const factory PaymentGatewayEntity({
    required String id,
    required String name,
    required String? logoUrl,
    required GatewayLinkMethod linkMethod,
  }) = _PaymentGatewayEntity;

  factory PaymentGatewayEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentGatewayEntityFromJson(json);
}

extension PaymentGatewayEntityX on PaymentGatewayEntity {
  PaymentMethodUnion get toPaymentMethodUnion =>
      PaymentMethodUnion.paymentGateway(paymentGateway: this);
}

extension PaymentGatewayRecordX on List<PaymentGatewayEntity> {
  List<PaymentMethodUnion> get toPaymentMethodUnion =>
      map((e) => e.toPaymentMethodUnion).toList();
}
