import 'package:rider_flutter/config/graphql/fragments/saved_payment_method.fragment.graphql.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';
import 'package:flutter_common/core/enums/card_type.dart';
import 'package:rider_flutter/core/enums/card_type.prod.dart';

extension SavedPaymentMethodProdX on Fragment$SavedPaymentMethodFragment {
  SavedPaymentMethodEntity get toEntity => SavedPaymentMethodEntity(
        id: id,
        cardHolderName: holderName,
        last4Digits: lastFour ?? title,
        cardType: providerBrand?.toEntity ?? CardType.unknown,
        expiryDate: expiryDate,
        isEnabled: isEnabled,
        isDefault: isDefault,
      );
}

extension SavedPaymentMethodsProdX on List<Fragment$SavedPaymentMethodFragment> {
  List<SavedPaymentMethodEntity> get toEntity => map((e) => e.toEntity).toList();
}
