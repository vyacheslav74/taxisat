import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';
import 'package:flutter_common/core/enums/card_type.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../../domain/repositories/payment_methods_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: PaymentMethodsRepository)
class PaymentMethodsRepositoryMock implements PaymentMethodsRepository {
  @override
  Future<Either<Failure, (List<SavedPaymentMethodEntity>, List<PaymentGatewayEntity>)>> getSavedPaymentMethods() async {
    return Right((
      [
        SavedPaymentMethodEntity(
          id: "1",
          cardType: CardType.visa,
          last4Digits: "4242",
          cardHolderName: "John Doe",
          expiryDate: DateTime.now().add(const Duration(days: 400)),
          isEnabled: true,
          isDefault: true,
        ),
        SavedPaymentMethodEntity(
          id: "2",
          cardType: CardType.mastercard,
          last4Digits: "1234",
          cardHolderName: "Jane Smith",
          expiryDate: DateTime.now().add(const Duration(days: 400)),
          isEnabled: true,
          isDefault: false,
        ),
        SavedPaymentMethodEntity(
          id: "3",
          cardType: CardType.mastercard,
          last4Digits: "5678",
          cardHolderName: "Alex Johnson",
          expiryDate: DateTime.now().add(const Duration(days: 400)),
          isEnabled: true,
          isDefault: false,
        ),
        SavedPaymentMethodEntity(
          id: "4",
          cardType: CardType.visa,
          last4Digits: "9876",
          cardHolderName: "Emily Davis",
          expiryDate: DateTime.now().add(const Duration(days: 400)),
          isEnabled: true,
          isDefault: true,
        ),
      ],
      const [
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
        ),
      ]
    ));
  }

  @override
  Future<Either<Failure, String>> getExternalUrl({required String paymentGatewayId}) async {
    return const Right("https://www.paypal.com");
  }

  @override
  Future<Either<Failure, List<SavedPaymentMethodEntity>>> markAsDefault({
    required SavedPaymentMethodEntity paymentMethod,
    required bool isDefault,
  }) async {
    return const Right([]);
  }
}
