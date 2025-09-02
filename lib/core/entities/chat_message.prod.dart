import 'package:rider_flutter/config/graphql/fragments/chat_message.fragment.graphql.dart';

import 'package:flutter_common/features/chat/chat.dart';

extension ChatMessageEntityProdX on Fragment$ChatMessage {
  ChatMessageEntity get toEntity {
    return ChatMessageEntity(
      id: id,
      message: content,
      createdAt: sentAt,
      isSender: !sentByDriver,
    );
  }
}
