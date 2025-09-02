part of 'cancel_reason.dart';

@freezed
class CancelReasonState with _$CancelReasonState {
  const factory CancelReasonState.initial() = _Initial;
  const factory CancelReasonState.loading() = _Loading;
  const factory CancelReasonState.loaded(List<CancelReasonEntity> data) = _Loaded;
  const factory CancelReasonState.error(String message) = _Error;
}
