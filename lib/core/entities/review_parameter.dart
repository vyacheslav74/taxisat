import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_parameter.freezed.dart';

@freezed
class ReviewParameterEntity with _$ReviewParameterEntity {
  const factory ReviewParameterEntity({
    required String id,
    required String name,
    required bool isGood,
  }) = _ReviewParameterEntity;
}
