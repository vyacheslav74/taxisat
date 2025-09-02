part of 'profile.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded(ProfileAggregationsInfo data) = _Loaded;
  const factory ProfileState.error(String message) = _Error;
}
