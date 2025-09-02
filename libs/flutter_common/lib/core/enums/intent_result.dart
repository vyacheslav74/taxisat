import 'package:freezed_annotation/freezed_annotation.dart';

part 'intent_result.freezed.dart';
part 'intent_result.g.dart';

@freezed
sealed class IntentResult with _$IntentResult {
  const factory IntentResult.success() = _Success;
  const factory IntentResult.failure({required String errorMessage}) = _Failure;
  const factory IntentResult.redirect({required String url}) = _Redirect;

  factory IntentResult.fromJson(Map<String, dynamic> json) =>
      _$IntentResultFromJson(json);
}
