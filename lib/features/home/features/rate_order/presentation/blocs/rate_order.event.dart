part of 'rate_order.dart';

@freezed
class RateOrderEvent with _$RateOrderEvent {
  const factory RateOrderEvent.onStarted() = _OnStarted;

  const factory RateOrderEvent.onParameterTapped({
    required ReviewParameterEntity parameter,
  }) = _OnParameterTapped;

  const factory RateOrderEvent.onReviewSubmitted({
    required String orderId,
    required int rating,
    required String? comment,
    required List<ReviewParameterEntity> parameters,
    required bool isFavorite,
  }) = _OnReviewSubmitted;

  const factory RateOrderEvent.skipReview({
    required String orderId,
  }) = _SkipReview;
}
