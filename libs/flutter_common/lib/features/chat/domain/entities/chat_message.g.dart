// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageEntityImpl _$$ChatMessageEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageEntityImpl(
      id: json['id'] as String,
      message: json['message'] as String,
      isSender: json['isSender'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ChatMessageEntityImplToJson(
        _$ChatMessageEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'isSender': instance.isSender,
      'createdAt': instance.createdAt.toIso8601String(),
    };
