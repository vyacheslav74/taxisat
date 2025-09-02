import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@Freezed(fromJson: true, toJson: true)
class MediaEntity with _$MediaEntity {
  const factory MediaEntity({
    required String id,
    required String address,
  }) = _MediaEntity;

  factory MediaEntity.fromJson(Map<String, dynamic> json) => _$MediaEntityFromJson(json);
}
