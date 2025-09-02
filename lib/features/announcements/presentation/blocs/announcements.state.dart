part of 'announcements.dart';

@freezed
class AnnouncementsState with _$AnnouncementsState {
  const factory AnnouncementsState.initial() = _Initial;
  const factory AnnouncementsState.loading() = _Loading;
  const factory AnnouncementsState.loaded(List<AnnouncementEntity> data) = _Loaded;
  const factory AnnouncementsState.empty() = _Empty;
  const factory AnnouncementsState.error(String message) = _Error;
}
