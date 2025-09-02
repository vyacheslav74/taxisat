// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_fare_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculateFareResponseImpl _$$CalculateFareResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculateFareResponseImpl(
      paymentGateways: (json['paymentGateways'] as List<dynamic>)
          .map((e) => PaymentGatewayEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      savedPaymentMethods: (json['savedPaymentMethods'] as List<dynamic>)
          .map((e) =>
              SavedPaymentMethodEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceCategoryEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      wallets: (json['wallets'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  $jsonValue[r'$1'] as String,
                  ($jsonValue[r'$2'] as num).toDouble(),
                ),
              ))
          .toList(),
      currency: json['currency'] as String,
      durationInSeconds: json['durationInSeconds'] as int,
      distanceInMeters: json['distanceInMeters'] as int,
      directions: (json['directions'] as List<dynamic>)
          .map((e) => LatLngEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CalculateFareResponseImplToJson(
        _$CalculateFareResponseImpl instance) =>
    <String, dynamic>{
      'paymentGateways': instance.paymentGateways,
      'savedPaymentMethods': instance.savedPaymentMethods,
      'services': instance.services,
      'wallets': instance.wallets
          .map((e) => {
                r'$1': e.$1,
                r'$2': e.$2,
              })
          .toList(),
      'currency': instance.currency,
      'durationInSeconds': instance.durationInSeconds,
      'distanceInMeters': instance.distanceInMeters,
      'directions': instance.directions,
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
