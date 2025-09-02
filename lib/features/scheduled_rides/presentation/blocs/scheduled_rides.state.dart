part of 'scheduled_rides.dart';

@freezed
class ScheduledRidesState with _$ScheduledRidesState {
  const factory ScheduledRidesState.initial() = _Initial;
  const factory ScheduledRidesState.loading() = _Loading;
  const factory ScheduledRidesState.empty() = _Empty;
  const factory ScheduledRidesState.loaded(List<OrderCompactEntity> data) = _Loaded;
  const factory ScheduledRidesState.error(String message) = _Error;
}
