part of 'ride_history.dart';

@freezed
class RideHistoryState with _$RideHistoryState {
  const factory RideHistoryState.initial() = _Initial;
  const factory RideHistoryState.loading() = _Loading;
  const factory RideHistoryState.loaded(List<OrderCompactEntity> data) = _Loaded;
  const factory RideHistoryState.empty() = _Empty;
  const factory RideHistoryState.error(String message) = _Error;
}
