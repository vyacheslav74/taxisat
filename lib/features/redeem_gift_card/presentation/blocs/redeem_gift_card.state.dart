part of 'redeem_gift_card.dart';

@freezed
class RedeemGiftCardState with _$RedeemGiftCardState {
  const factory RedeemGiftCardState({
    required String? code,
    required AppFormState<(double, String)> formState,
  }) = _RedeemGiftCardState;

  // ignore: prefer_const_constructors
  factory RedeemGiftCardState.initial() => RedeemGiftCardState(
        code: null,
        formState: const AppFormState.idle(),
      );
}
