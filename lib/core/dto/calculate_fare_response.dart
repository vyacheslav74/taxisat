import 'package:flutter_common/core/entities/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';
import 'package:rider_flutter/core/entities/service_category.dart';

part 'calculate_fare_response.freezed.dart';
part 'calculate_fare_response.g.dart';

@freezed
class CalculateFareResponse with _$CalculateFareResponse {
  const factory CalculateFareResponse({
    required List<PaymentGatewayEntity> paymentGateways,
    required List<SavedPaymentMethodEntity> savedPaymentMethods,
    required List<ServiceCategoryEntity> services,
    required List<(String, double)> wallets,
    required String currency,
    required int durationInSeconds,
    required int distanceInMeters,
    required List<LatLngEntity> directions,
  }) = _CalculateFareResponse;

  factory CalculateFareResponse.fromJson(Map<String, dynamic> json) => _$CalculateFareResponseFromJson(json);
}
