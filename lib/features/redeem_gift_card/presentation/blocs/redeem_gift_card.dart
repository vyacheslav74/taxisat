import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/enums/form_state.dart';
import 'package:rider_flutter/features/redeem_gift_card/domain/repositories/redeem_gift_card_repository.dart';

part 'redeem_gift_card.state.dart';
part 'redeem_gift_card.freezed.dart';

@lazySingleton
class RedeemGiftCardBloc extends Cubit<RedeemGiftCardState> {
  final RedeemGiftCardRepository _repository;

  RedeemGiftCardBloc(this._repository) : super(RedeemGiftCardState.initial());

  void onStarted() {
    emit(RedeemGiftCardState.initial());
  }

  void onCodeChanged(String code) {
    emit(
      state.copyWith(
        formState: const AppFormState.idle(),
        code: code,
      ),
    );
  }

  void onSubmitted() async {
    if (state.code == null) throw Exception('Code is null');

    emit(
      state.copyWith(
        formState: const AppFormState.busy(),
      ),
    );

    final result = await _repository.redeemGiftCard(
      code: state.code!,
    );
    emit(
      state.copyWith(
        formState: result.fold(
          (l) => AppFormState.error(l.errorMessage),
          (r) => AppFormState.success(r),
        ),
      ),
    );
  }
}
