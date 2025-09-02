import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@Freezed(fromJson: true)
class ChatMessageEntity with _$ChatMessageEntity {
  const factory ChatMessageEntity({
    required String id,
    required String message,
    required bool isSender,
    required DateTime createdAt,
  }) = _ChatMessageEntity;

  factory ChatMessageEntity.fromJson(Map<String, dynamic> json) => _$ChatMessageEntityFromJson(json);
}
