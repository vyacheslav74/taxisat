// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementEntityImpl _$$AnnouncementEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$AnnouncementEntityImplToJson(
        _$AnnouncementEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
    };
