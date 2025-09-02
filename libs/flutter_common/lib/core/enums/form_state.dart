// enum AppFormState { idle, busy, success, error }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_state.freezed.dart';

@freezed
class AppFormState<T> with _$AppFormState {
  const factory AppFormState.idle() = _Idle;

  const factory AppFormState.busy() = _Busy;

  const factory AppFormState.success(T data) = _Success;

  const factory AppFormState.error(String message) = _Error;

  const AppFormState._();

  bool get isIdle => this is _Idle;

  bool get isBusy => this is _Busy;

  bool get isSuccess => this is _Success;

  bool get isError => this is _Error;
}
