// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intent_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IntentResult _$IntentResultFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return _Success.fromJson(json);
    case 'failure':
      return _Failure.fromJson(json);
    case 'redirect':
      return _Redirect.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'IntentResult',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$IntentResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String url) redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String url)? redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String url)? redirect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Redirect value) redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Redirect value)? redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Redirect value)? redirect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntentResultCopyWith<$Res> {
  factory $IntentResultCopyWith(
          IntentResult value, $Res Function(IntentResult) then) =
      _$IntentResultCopyWithImpl<$Res, IntentResult>;
}

/// @nodoc
class _$IntentResultCopyWithImpl<$Res, $Val extends IntentResult>
    implements $IntentResultCopyWith<$Res> {
  _$IntentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$IntentResultCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SuccessImpl implements _Success {
  const _$SuccessImpl({final String? $type}) : $type = $type ?? 'success';

  factory _$SuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IntentResult.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String url) redirect,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String url)? redirect,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String url)? redirect,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Redirect value) redirect,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Redirect value)? redirect,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Redirect value)? redirect,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessImplToJson(
      this,
    );
  }
}

abstract class _Success implements IntentResult {
  const factory _Success() = _$SuccessImpl;

  factory _Success.fromJson(Map<String, dynamic> json) = _$SuccessImpl.fromJson;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$IntentResultCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailureImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.errorMessage, final String? $type})
      : $type = $type ?? 'failure';

  factory _$FailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureImplFromJson(json);

  @override
  final String errorMessage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IntentResult.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String url) redirect,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String url)? redirect,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String url)? redirect,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Redirect value) redirect,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Redirect value)? redirect,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Redirect value)? redirect,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureImplToJson(
      this,
    );
  }
}

abstract class _Failure implements IntentResult {
  const factory _Failure({required final String errorMessage}) = _$FailureImpl;

  factory _Failure.fromJson(Map<String, dynamic> json) = _$FailureImpl.fromJson;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RedirectImplCopyWith<$Res> {
  factory _$$RedirectImplCopyWith(
          _$RedirectImpl value, $Res Function(_$RedirectImpl) then) =
      __$$RedirectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$RedirectImplCopyWithImpl<$Res>
    extends _$IntentResultCopyWithImpl<$Res, _$RedirectImpl>
    implements _$$RedirectImplCopyWith<$Res> {
  __$$RedirectImplCopyWithImpl(
      _$RedirectImpl _value, $Res Function(_$RedirectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$RedirectImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedirectImpl implements _Redirect {
  const _$RedirectImpl({required this.url, final String? $type})
      : $type = $type ?? 'redirect';

  factory _$RedirectImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedirectImplFromJson(json);

  @override
  final String url;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IntentResult.redirect(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RedirectImplCopyWith<_$RedirectImpl> get copyWith =>
      __$$RedirectImplCopyWithImpl<_$RedirectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String errorMessage) failure,
    required TResult Function(String url) redirect,
  }) {
    return redirect(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? success,
    TResult? Function(String errorMessage)? failure,
    TResult? Function(String url)? redirect,
  }) {
    return redirect?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String errorMessage)? failure,
    TResult Function(String url)? redirect,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Redirect value) redirect,
  }) {
    return redirect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Redirect value)? redirect,
  }) {
    return redirect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Redirect value)? redirect,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RedirectImplToJson(
      this,
    );
  }
}

abstract class _Redirect implements IntentResult {
  const factory _Redirect({required final String url}) = _$RedirectImpl;

  factory _Redirect.fromJson(Map<String, dynamic> json) =
      _$RedirectImpl.fromJson;

  String get url;
  @JsonKey(ignore: true)
  _$$RedirectImplCopyWith<_$RedirectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
