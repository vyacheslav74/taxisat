import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_reason.freezed.dart';
part 'cancel_reason.g.dart';

@freezed
class CancelReasonEntity with _$CancelReasonEntity {
  const factory CancelReasonEntity({
    required String id,
    required String name,
  }) = _CancelReasonEntity;

  factory CancelReasonEntity.fromJson(Map<String, dynamic> json) => _$CancelReasonEntityFromJson(json);
}
