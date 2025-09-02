part of 'announcements.dart';

@freezed
class AnnouncementsEvent with _$AnnouncementsEvent {
  const factory AnnouncementsEvent.onStarted() = _OnStarted;
}
