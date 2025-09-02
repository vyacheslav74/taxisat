import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_card.freezed.dart';

@freezed
class GiftCardEntity with _$GiftCardEntity {
  const factory GiftCardEntity({
    required String code,
    required double amount,
    required String currency,
  }) = _GiftCardEntity;
}
