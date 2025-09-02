import 'package:freezed_annotation/freezed_annotation.dart';

import '../../gen/assets.gen.dart';
import '../enums/card_type.dart';
import 'payment_method_union.dart';

part 'saved_payment_method.freezed.dart';
part 'saved_payment_method.g.dart';

@Freezed(fromJson: true)
class SavedPaymentMethodEntity with _$SavedPaymentMethodEntity {
  const factory SavedPaymentMethodEntity({
    required String id,
    required CardType cardType,
    required String last4Digits,
    required String? cardHolderName,
    required DateTime? expiryDate,
    required bool isDefault,
    required bool isEnabled,
  }) = _SavedPaymentMethodEntity;

  factory SavedPaymentMethodEntity.fromJson(Map<String, dynamic> json) =>
      _$SavedPaymentMethodEntityFromJson(json);

  const SavedPaymentMethodEntity._();

  AssetGenImage get cardImage {
    switch (cardType) {
      case CardType.visa:
        return Assets.images.cardBackground2;
      case CardType.mastercard:
        return Assets.images.cardBackground3;
      case CardType.amex:
        return Assets.images.cardBackground4;
      default:
        return Assets.images.cardBackground1;
    }
  }

  PaymentMethodUnion get toPaymentMethodUnion =>
      PaymentMethodUnion.savedPaymentMethod(
        savedPaymentMethod: this,
      );
}

extension SavedPaymentMethodRecordX on List<SavedPaymentMethodEntity> {
  List<PaymentMethodUnion> get toPaymentMethodUnion =>
      map((e) => e.toPaymentMethodUnion).toList();
}
