part of 'rate_order.dart';

@freezed
class RateOrderState with _$RateOrderState {
  const factory RateOrderState.initial() = _Initial;
  const factory RateOrderState.loading() = _Loading;
  const factory RateOrderState.error({
    required String message,
  }) = _Error;
  const factory RateOrderState.parametersLoaded({
    required List<ReviewParameterEntity> strengthParameters,
    required List<ReviewParameterEntity> weaknessParameters,
    @Default([]) List<ReviewParameterEntity> selectedParameters,
  }) = ParametersLoaded;
  const factory RateOrderState.reviewSubmitted() = _ReviewSubmitted;
}

extension ParametersLoadedX on ParametersLoaded {
  bool parameterSelected(ReviewParameterEntity parameter) => selectedParameters.contains(parameter);
}
