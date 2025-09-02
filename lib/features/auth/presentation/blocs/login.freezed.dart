// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnNumberVerificationRequestedImplCopyWith<$Res> {
  factory _$$OnNumberVerificationRequestedImplCopyWith(
          _$OnNumberVerificationRequestedImpl value,
          $Res Function(_$OnNumberVerificationRequestedImpl) then) =
      __$$OnNumberVerificationRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobileNumber, String countryCode});
}

/// @nodoc
class __$$OnNumberVerificationRequestedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnNumberVerificationRequestedImpl>
    implements _$$OnNumberVerificationRequestedImplCopyWith<$Res> {
  __$$OnNumberVerificationRequestedImplCopyWithImpl(
      _$OnNumberVerificationRequestedImpl _value,
      $Res Function(_$OnNumberVerificationRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? countryCode = null,
  }) {
    return _then(_$OnNumberVerificationRequestedImpl(
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnNumberVerificationRequestedImpl
    implements _OnNumberVerificationRequested {
  const _$OnNumberVerificationRequestedImpl(
      {required this.mobileNumber, required this.countryCode});

  @override
  final String mobileNumber;
  @override
  final String countryCode;

  @override
  String toString() {
    return 'LoginEvent.onNumberVerificationRequested(mobileNumber: $mobileNumber, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNumberVerificationRequestedImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, countryCode);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNumberVerificationRequestedImplCopyWith<
          _$OnNumberVerificationRequestedImpl>
      get copyWith => __$$OnNumberVerificationRequestedImplCopyWithImpl<
          _$OnNumberVerificationRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return onNumberVerificationRequested(mobileNumber, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return onNumberVerificationRequested?.call(mobileNumber, countryCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (onNumberVerificationRequested != null) {
      return onNumberVerificationRequested(mobileNumber, countryCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return onNumberVerificationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return onNumberVerificationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (onNumberVerificationRequested != null) {
      return onNumberVerificationRequested(this);
    }
    return orElse();
  }
}

abstract class _OnNumberVerificationRequested implements LoginEvent {
  const factory _OnNumberVerificationRequested(
      {required final String mobileNumber,
      required final String countryCode}) = _$OnNumberVerificationRequestedImpl;

  String get mobileNumber;
  String get countryCode;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNumberVerificationRequestedImplCopyWith<
          _$OnNumberVerificationRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSkipVerificationRequestedImplCopyWith<$Res> {
  factory _$$OnSkipVerificationRequestedImplCopyWith(
          _$OnSkipVerificationRequestedImpl value,
          $Res Function(_$OnSkipVerificationRequestedImpl) then) =
      __$$OnSkipVerificationRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnSkipVerificationRequestedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnSkipVerificationRequestedImpl>
    implements _$$OnSkipVerificationRequestedImplCopyWith<$Res> {
  __$$OnSkipVerificationRequestedImplCopyWithImpl(
      _$OnSkipVerificationRequestedImpl _value,
      $Res Function(_$OnSkipVerificationRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnSkipVerificationRequestedImpl
    implements _OnSkipVerificationRequested {
  const _$OnSkipVerificationRequestedImpl();

  @override
  String toString() {
    return 'LoginEvent.onVerificationSkipped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSkipVerificationRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return onVerificationSkipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return onVerificationSkipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (onVerificationSkipped != null) {
      return onVerificationSkipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return onVerificationSkipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return onVerificationSkipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (onVerificationSkipped != null) {
      return onVerificationSkipped(this);
    }
    return orElse();
  }
}

abstract class _OnSkipVerificationRequested implements LoginEvent {
  const factory _OnSkipVerificationRequested() =
      _$OnSkipVerificationRequestedImpl;
}

/// @nodoc
abstract class _$$OnBackButtonPressedImplCopyWith<$Res> {
  factory _$$OnBackButtonPressedImplCopyWith(_$OnBackButtonPressedImpl value,
          $Res Function(_$OnBackButtonPressedImpl) then) =
      __$$OnBackButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnBackButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnBackButtonPressedImpl>
    implements _$$OnBackButtonPressedImplCopyWith<$Res> {
  __$$OnBackButtonPressedImplCopyWithImpl(_$OnBackButtonPressedImpl _value,
      $Res Function(_$OnBackButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnBackButtonPressedImpl implements _OnBackButtonPressed {
  const _$OnBackButtonPressedImpl();

  @override
  String toString() {
    return 'LoginEvent.onBackButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBackButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return onBackButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return onBackButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (onBackButtonPressed != null) {
      return onBackButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return onBackButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return onBackButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (onBackButtonPressed != null) {
      return onBackButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _OnBackButtonPressed implements LoginEvent {
  const factory _OnBackButtonPressed() = _$OnBackButtonPressedImpl;
}

/// @nodoc
abstract class _$$OnOtpVerificationRequestedImplCopyWith<$Res> {
  factory _$$OnOtpVerificationRequestedImplCopyWith(
          _$OnOtpVerificationRequestedImpl value,
          $Res Function(_$OnOtpVerificationRequestedImpl) then) =
      __$$OnOtpVerificationRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$OnOtpVerificationRequestedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnOtpVerificationRequestedImpl>
    implements _$$OnOtpVerificationRequestedImplCopyWith<$Res> {
  __$$OnOtpVerificationRequestedImplCopyWithImpl(
      _$OnOtpVerificationRequestedImpl _value,
      $Res Function(_$OnOtpVerificationRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$OnOtpVerificationRequestedImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnOtpVerificationRequestedImpl implements OnOtpVerificationRequested {
  const _$OnOtpVerificationRequestedImpl({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'LoginEvent.onOtpVerificationRequested(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnOtpVerificationRequestedImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnOtpVerificationRequestedImplCopyWith<_$OnOtpVerificationRequestedImpl>
      get copyWith => __$$OnOtpVerificationRequestedImplCopyWithImpl<
          _$OnOtpVerificationRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return onOtpVerificationRequested(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return onOtpVerificationRequested?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (onOtpVerificationRequested != null) {
      return onOtpVerificationRequested(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return onOtpVerificationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return onOtpVerificationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (onOtpVerificationRequested != null) {
      return onOtpVerificationRequested(this);
    }
    return orElse();
  }
}

abstract class OnOtpVerificationRequested implements LoginEvent {
  const factory OnOtpVerificationRequested({required final String otp}) =
      _$OnOtpVerificationRequestedImpl;

  String get otp;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnOtpVerificationRequestedImplCopyWith<_$OnOtpVerificationRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCodeResendRequestedImplCopyWith<$Res> {
  factory _$$OnCodeResendRequestedImplCopyWith(
          _$OnCodeResendRequestedImpl value,
          $Res Function(_$OnCodeResendRequestedImpl) then) =
      __$$OnCodeResendRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCodeResendRequestedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnCodeResendRequestedImpl>
    implements _$$OnCodeResendRequestedImplCopyWith<$Res> {
  __$$OnCodeResendRequestedImplCopyWithImpl(_$OnCodeResendRequestedImpl _value,
      $Res Function(_$OnCodeResendRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnCodeResendRequestedImpl implements _OnCodeResendRequested {
  const _$OnCodeResendRequestedImpl();

  @override
  String toString() {
    return 'LoginEvent.onCodeResendRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCodeResendRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return onCodeResendRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return onCodeResendRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (onCodeResendRequested != null) {
      return onCodeResendRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return onCodeResendRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return onCodeResendRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (onCodeResendRequested != null) {
      return onCodeResendRequested(this);
    }
    return orElse();
  }
}

abstract class _OnCodeResendRequested implements LoginEvent {
  const factory _OnCodeResendRequested() = _$OnCodeResendRequestedImpl;
}

/// @nodoc
abstract class _$$OnPasswordSubmittedImplCopyWith<$Res> {
  factory _$$OnPasswordSubmittedImplCopyWith(_$OnPasswordSubmittedImpl value,
          $Res Function(_$OnPasswordSubmittedImpl) then) =
      __$$OnPasswordSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$OnPasswordSubmittedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnPasswordSubmittedImpl>
    implements _$$OnPasswordSubmittedImplCopyWith<$Res> {
  __$$OnPasswordSubmittedImplCopyWithImpl(_$OnPasswordSubmittedImpl _value,
      $Res Function(_$OnPasswordSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$OnPasswordSubmittedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPasswordSubmittedImpl implements OnPasswordSubmitted {
  const _$OnPasswordSubmittedImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onPasswordSubmitted(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPasswordSubmittedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPasswordSubmittedImplCopyWith<_$OnPasswordSubmittedImpl> get copyWith =>
      __$$OnPasswordSubmittedImplCopyWithImpl<_$OnPasswordSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return onPasswordSubmitted(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return onPasswordSubmitted?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (onPasswordSubmitted != null) {
      return onPasswordSubmitted(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return onPasswordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return onPasswordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (onPasswordSubmitted != null) {
      return onPasswordSubmitted(this);
    }
    return orElse();
  }
}

abstract class OnPasswordSubmitted implements LoginEvent {
  const factory OnPasswordSubmitted({required final String password}) =
      _$OnPasswordSubmittedImpl;

  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPasswordSubmittedImplCopyWith<_$OnPasswordSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNewPasswordSubmittedImplCopyWith<$Res> {
  factory _$$OnNewPasswordSubmittedImplCopyWith(
          _$OnNewPasswordSubmittedImpl value,
          $Res Function(_$OnNewPasswordSubmittedImpl) then) =
      __$$OnNewPasswordSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$OnNewPasswordSubmittedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnNewPasswordSubmittedImpl>
    implements _$$OnNewPasswordSubmittedImplCopyWith<$Res> {
  __$$OnNewPasswordSubmittedImplCopyWithImpl(
      _$OnNewPasswordSubmittedImpl _value,
      $Res Function(_$OnNewPasswordSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$OnNewPasswordSubmittedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnNewPasswordSubmittedImpl implements _OnNewPasswordSubmitted {
  const _$OnNewPasswordSubmittedImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onNewPasswordSubmitted(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNewPasswordSubmittedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNewPasswordSubmittedImplCopyWith<_$OnNewPasswordSubmittedImpl>
      get copyWith => __$$OnNewPasswordSubmittedImplCopyWithImpl<
          _$OnNewPasswordSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return onNewPasswordSubmitted(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return onNewPasswordSubmitted?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (onNewPasswordSubmitted != null) {
      return onNewPasswordSubmitted(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return onNewPasswordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return onNewPasswordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (onNewPasswordSubmitted != null) {
      return onNewPasswordSubmitted(this);
    }
    return orElse();
  }
}

abstract class _OnNewPasswordSubmitted implements LoginEvent {
  const factory _OnNewPasswordSubmitted({required final String password}) =
      _$OnNewPasswordSubmittedImpl;

  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNewPasswordSubmittedImplCopyWith<_$OnNewPasswordSubmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnProfileDataSubmittedImplCopyWith<$Res> {
  factory _$$OnProfileDataSubmittedImplCopyWith(
          _$OnProfileDataSubmittedImpl value,
          $Res Function(_$OnProfileDataSubmittedImpl) then) =
      __$$OnProfileDataSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String lastName, Gender? gender});
}

/// @nodoc
class __$$OnProfileDataSubmittedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnProfileDataSubmittedImpl>
    implements _$$OnProfileDataSubmittedImplCopyWith<$Res> {
  __$$OnProfileDataSubmittedImplCopyWithImpl(
      _$OnProfileDataSubmittedImpl _value,
      $Res Function(_$OnProfileDataSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = freezed,
  }) {
    return _then(_$OnProfileDataSubmittedImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc

class _$OnProfileDataSubmittedImpl implements _OnProfileDataSubmitted {
  const _$OnProfileDataSubmittedImpl(
      {required this.firstName, required this.lastName, required this.gender});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final Gender? gender;

  @override
  String toString() {
    return 'LoginEvent.onProfileDataSubmitted(firstName: $firstName, lastName: $lastName, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnProfileDataSubmittedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, gender);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnProfileDataSubmittedImplCopyWith<_$OnProfileDataSubmittedImpl>
      get copyWith => __$$OnProfileDataSubmittedImplCopyWithImpl<
          _$OnProfileDataSubmittedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return onProfileDataSubmitted(firstName, lastName, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return onProfileDataSubmitted?.call(firstName, lastName, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (onProfileDataSubmitted != null) {
      return onProfileDataSubmitted(firstName, lastName, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return onProfileDataSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return onProfileDataSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (onProfileDataSubmitted != null) {
      return onProfileDataSubmitted(this);
    }
    return orElse();
  }
}

abstract class _OnProfileDataSubmitted implements LoginEvent {
  const factory _OnProfileDataSubmitted(
      {required final String firstName,
      required final String lastName,
      required final Gender? gender}) = _$OnProfileDataSubmittedImpl;

  String get firstName;
  String get lastName;
  Gender? get gender;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnProfileDataSubmittedImplCopyWith<_$OnProfileDataSubmittedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'LoginEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobileNumber, String countryCode)
        onNumberVerificationRequested,
    required TResult Function() onVerificationSkipped,
    required TResult Function() onBackButtonPressed,
    required TResult Function(String otp) onOtpVerificationRequested,
    required TResult Function() onCodeResendRequested,
    required TResult Function(String password) onPasswordSubmitted,
    required TResult Function(String password) onNewPasswordSubmitted,
    required TResult Function(String firstName, String lastName, Gender? gender)
        onProfileDataSubmitted,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult? Function()? onVerificationSkipped,
    TResult? Function()? onBackButtonPressed,
    TResult? Function(String otp)? onOtpVerificationRequested,
    TResult? Function()? onCodeResendRequested,
    TResult? Function(String password)? onPasswordSubmitted,
    TResult? Function(String password)? onNewPasswordSubmitted,
    TResult? Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobileNumber, String countryCode)?
        onNumberVerificationRequested,
    TResult Function()? onVerificationSkipped,
    TResult Function()? onBackButtonPressed,
    TResult Function(String otp)? onOtpVerificationRequested,
    TResult Function()? onCodeResendRequested,
    TResult Function(String password)? onPasswordSubmitted,
    TResult Function(String password)? onNewPasswordSubmitted,
    TResult Function(String firstName, String lastName, Gender? gender)?
        onProfileDataSubmitted,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNumberVerificationRequested value)
        onNumberVerificationRequested,
    required TResult Function(_OnSkipVerificationRequested value)
        onVerificationSkipped,
    required TResult Function(_OnBackButtonPressed value) onBackButtonPressed,
    required TResult Function(OnOtpVerificationRequested value)
        onOtpVerificationRequested,
    required TResult Function(_OnCodeResendRequested value)
        onCodeResendRequested,
    required TResult Function(OnPasswordSubmitted value) onPasswordSubmitted,
    required TResult Function(_OnNewPasswordSubmitted value)
        onNewPasswordSubmitted,
    required TResult Function(_OnProfileDataSubmitted value)
        onProfileDataSubmitted,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult? Function(_OnSkipVerificationRequested value)?
        onVerificationSkipped,
    TResult? Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult? Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult? Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult? Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult? Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult? Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNumberVerificationRequested value)?
        onNumberVerificationRequested,
    TResult Function(_OnSkipVerificationRequested value)? onVerificationSkipped,
    TResult Function(_OnBackButtonPressed value)? onBackButtonPressed,
    TResult Function(OnOtpVerificationRequested value)?
        onOtpVerificationRequested,
    TResult Function(_OnCodeResendRequested value)? onCodeResendRequested,
    TResult Function(OnPasswordSubmitted value)? onPasswordSubmitted,
    TResult Function(_OnNewPasswordSubmitted value)? onNewPasswordSubmitted,
    TResult Function(_OnProfileDataSubmitted value)? onProfileDataSubmitted,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements LoginEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$LoginState {
  LoginPage get loginPage => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String? get hash => throw _privateConstructorUsedError;
  String? get jwtToken => throw _privateConstructorUsedError;
  ProfileEntity? get profile => throw _privateConstructorUsedError;
  DateTime? get lastOtpSentAt => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginPage loginPage,
      String mobileNumber,
      String? hash,
      String? jwtToken,
      ProfileEntity? profile,
      DateTime? lastOtpSentAt});

  $LoginPageCopyWith<$Res> get loginPage;
  $ProfileEntityCopyWith<$Res>? get profile;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginPage = null,
    Object? mobileNumber = null,
    Object? hash = freezed,
    Object? jwtToken = freezed,
    Object? profile = freezed,
    Object? lastOtpSentAt = freezed,
  }) {
    return _then(_value.copyWith(
      loginPage: null == loginPage
          ? _value.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPage,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      jwtToken: freezed == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      lastOtpSentAt: freezed == lastOtpSentAt
          ? _value.lastOtpSentAt
          : lastOtpSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginPageCopyWith<$Res> get loginPage {
    return $LoginPageCopyWith<$Res>(_value.loginPage, (value) {
      return _then(_value.copyWith(loginPage: value) as $Val);
    });
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileEntityCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginPage loginPage,
      String mobileNumber,
      String? hash,
      String? jwtToken,
      ProfileEntity? profile,
      DateTime? lastOtpSentAt});

  @override
  $LoginPageCopyWith<$Res> get loginPage;
  @override
  $ProfileEntityCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginPage = null,
    Object? mobileNumber = null,
    Object? hash = freezed,
    Object? jwtToken = freezed,
    Object? profile = freezed,
    Object? lastOtpSentAt = freezed,
  }) {
    return _then(_$LoginStateImpl(
      loginPage: null == loginPage
          ? _value.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPage,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      jwtToken: freezed == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
      lastOtpSentAt: freezed == lastOtpSentAt
          ? _value.lastOtpSentAt
          : lastOtpSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl extends _LoginState {
  const _$LoginStateImpl(
      {this.loginPage = const LoginPage.enterNumber(),
      this.mobileNumber = "",
      this.hash,
      this.jwtToken,
      this.profile,
      this.lastOtpSentAt})
      : super._();

  @override
  @JsonKey()
  final LoginPage loginPage;
  @override
  @JsonKey()
  final String mobileNumber;
  @override
  final String? hash;
  @override
  final String? jwtToken;
  @override
  final ProfileEntity? profile;
  @override
  final DateTime? lastOtpSentAt;

  @override
  String toString() {
    return 'LoginState(loginPage: $loginPage, mobileNumber: $mobileNumber, hash: $hash, jwtToken: $jwtToken, profile: $profile, lastOtpSentAt: $lastOtpSentAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.loginPage, loginPage) ||
                other.loginPage == loginPage) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.lastOtpSentAt, lastOtpSentAt) ||
                other.lastOtpSentAt == lastOtpSentAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginPage, mobileNumber, hash,
      jwtToken, profile, lastOtpSentAt);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {final LoginPage loginPage,
      final String mobileNumber,
      final String? hash,
      final String? jwtToken,
      final ProfileEntity? profile,
      final DateTime? lastOtpSentAt}) = _$LoginStateImpl;
  const _LoginState._() : super._();

  @override
  LoginPage get loginPage;
  @override
  String get mobileNumber;
  @override
  String? get hash;
  @override
  String? get jwtToken;
  @override
  ProfileEntity? get profile;
  @override
  DateTime? get lastOtpSentAt;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginPage {
  PageState get state => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageState state) enterNumber,
    required TResult Function(PageState state) enterOtp,
    required TResult Function(PageState state) enterPassword,
    required TResult Function(PageState state) enterName,
    required TResult Function(PageState state, String newPassword) setPassword,
    required TResult Function(PageState state) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageState state)? enterNumber,
    TResult? Function(PageState state)? enterOtp,
    TResult? Function(PageState state)? enterPassword,
    TResult? Function(PageState state)? enterName,
    TResult? Function(PageState state, String newPassword)? setPassword,
    TResult? Function(PageState state)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageState state)? enterNumber,
    TResult Function(PageState state)? enterOtp,
    TResult Function(PageState state)? enterPassword,
    TResult Function(PageState state)? enterName,
    TResult Function(PageState state, String newPassword)? setPassword,
    TResult Function(PageState state)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumber value) enterNumber,
    required TResult Function(EnterOtp value) enterOtp,
    required TResult Function(EnterPassword value) enterPassword,
    required TResult Function(EnterName value) enterName,
    required TResult Function(SetPassword value) setPassword,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumber value)? enterNumber,
    TResult? Function(EnterOtp value)? enterOtp,
    TResult? Function(EnterPassword value)? enterPassword,
    TResult? Function(EnterName value)? enterName,
    TResult? Function(SetPassword value)? setPassword,
    TResult? Function(Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumber value)? enterNumber,
    TResult Function(EnterOtp value)? enterOtp,
    TResult Function(EnterPassword value)? enterPassword,
    TResult Function(EnterName value)? enterName,
    TResult Function(SetPassword value)? setPassword,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginPageCopyWith<LoginPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageCopyWith<$Res> {
  factory $LoginPageCopyWith(LoginPage value, $Res Function(LoginPage) then) =
      _$LoginPageCopyWithImpl<$Res, LoginPage>;
  @useResult
  $Res call({PageState state});

  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class _$LoginPageCopyWithImpl<$Res, $Val extends LoginPage>
    implements $LoginPageCopyWith<$Res> {
  _$LoginPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ) as $Val);
  }

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get state {
    return $PageStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnterNumberImplCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory _$$EnterNumberImplCopyWith(
          _$EnterNumberImpl value, $Res Function(_$EnterNumberImpl) then) =
      __$$EnterNumberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$EnterNumberImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$EnterNumberImpl>
    implements _$$EnterNumberImplCopyWith<$Res> {
  __$$EnterNumberImplCopyWithImpl(
      _$EnterNumberImpl _value, $Res Function(_$EnterNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$EnterNumberImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$EnterNumberImpl implements EnterNumber {
  const _$EnterNumberImpl({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  @override
  String toString() {
    return 'LoginPage.enterNumber(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterNumberImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterNumberImplCopyWith<_$EnterNumberImpl> get copyWith =>
      __$$EnterNumberImplCopyWithImpl<_$EnterNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageState state) enterNumber,
    required TResult Function(PageState state) enterOtp,
    required TResult Function(PageState state) enterPassword,
    required TResult Function(PageState state) enterName,
    required TResult Function(PageState state, String newPassword) setPassword,
    required TResult Function(PageState state) success,
  }) {
    return enterNumber(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageState state)? enterNumber,
    TResult? Function(PageState state)? enterOtp,
    TResult? Function(PageState state)? enterPassword,
    TResult? Function(PageState state)? enterName,
    TResult? Function(PageState state, String newPassword)? setPassword,
    TResult? Function(PageState state)? success,
  }) {
    return enterNumber?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageState state)? enterNumber,
    TResult Function(PageState state)? enterOtp,
    TResult Function(PageState state)? enterPassword,
    TResult Function(PageState state)? enterName,
    TResult Function(PageState state, String newPassword)? setPassword,
    TResult Function(PageState state)? success,
    required TResult orElse(),
  }) {
    if (enterNumber != null) {
      return enterNumber(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumber value) enterNumber,
    required TResult Function(EnterOtp value) enterOtp,
    required TResult Function(EnterPassword value) enterPassword,
    required TResult Function(EnterName value) enterName,
    required TResult Function(SetPassword value) setPassword,
    required TResult Function(Success value) success,
  }) {
    return enterNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumber value)? enterNumber,
    TResult? Function(EnterOtp value)? enterOtp,
    TResult? Function(EnterPassword value)? enterPassword,
    TResult? Function(EnterName value)? enterName,
    TResult? Function(SetPassword value)? setPassword,
    TResult? Function(Success value)? success,
  }) {
    return enterNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumber value)? enterNumber,
    TResult Function(EnterOtp value)? enterOtp,
    TResult Function(EnterPassword value)? enterPassword,
    TResult Function(EnterName value)? enterName,
    TResult Function(SetPassword value)? setPassword,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (enterNumber != null) {
      return enterNumber(this);
    }
    return orElse();
  }
}

abstract class EnterNumber implements LoginPage {
  const factory EnterNumber({final PageState state}) = _$EnterNumberImpl;

  @override
  PageState get state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterNumberImplCopyWith<_$EnterNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterOtpImplCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory _$$EnterOtpImplCopyWith(
          _$EnterOtpImpl value, $Res Function(_$EnterOtpImpl) then) =
      __$$EnterOtpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$EnterOtpImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$EnterOtpImpl>
    implements _$$EnterOtpImplCopyWith<$Res> {
  __$$EnterOtpImplCopyWithImpl(
      _$EnterOtpImpl _value, $Res Function(_$EnterOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$EnterOtpImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$EnterOtpImpl implements EnterOtp {
  const _$EnterOtpImpl({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  @override
  String toString() {
    return 'LoginPage.enterOtp(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterOtpImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterOtpImplCopyWith<_$EnterOtpImpl> get copyWith =>
      __$$EnterOtpImplCopyWithImpl<_$EnterOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageState state) enterNumber,
    required TResult Function(PageState state) enterOtp,
    required TResult Function(PageState state) enterPassword,
    required TResult Function(PageState state) enterName,
    required TResult Function(PageState state, String newPassword) setPassword,
    required TResult Function(PageState state) success,
  }) {
    return enterOtp(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageState state)? enterNumber,
    TResult? Function(PageState state)? enterOtp,
    TResult? Function(PageState state)? enterPassword,
    TResult? Function(PageState state)? enterName,
    TResult? Function(PageState state, String newPassword)? setPassword,
    TResult? Function(PageState state)? success,
  }) {
    return enterOtp?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageState state)? enterNumber,
    TResult Function(PageState state)? enterOtp,
    TResult Function(PageState state)? enterPassword,
    TResult Function(PageState state)? enterName,
    TResult Function(PageState state, String newPassword)? setPassword,
    TResult Function(PageState state)? success,
    required TResult orElse(),
  }) {
    if (enterOtp != null) {
      return enterOtp(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumber value) enterNumber,
    required TResult Function(EnterOtp value) enterOtp,
    required TResult Function(EnterPassword value) enterPassword,
    required TResult Function(EnterName value) enterName,
    required TResult Function(SetPassword value) setPassword,
    required TResult Function(Success value) success,
  }) {
    return enterOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumber value)? enterNumber,
    TResult? Function(EnterOtp value)? enterOtp,
    TResult? Function(EnterPassword value)? enterPassword,
    TResult? Function(EnterName value)? enterName,
    TResult? Function(SetPassword value)? setPassword,
    TResult? Function(Success value)? success,
  }) {
    return enterOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumber value)? enterNumber,
    TResult Function(EnterOtp value)? enterOtp,
    TResult Function(EnterPassword value)? enterPassword,
    TResult Function(EnterName value)? enterName,
    TResult Function(SetPassword value)? setPassword,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (enterOtp != null) {
      return enterOtp(this);
    }
    return orElse();
  }
}

abstract class EnterOtp implements LoginPage {
  const factory EnterOtp({final PageState state}) = _$EnterOtpImpl;

  @override
  PageState get state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterOtpImplCopyWith<_$EnterOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterPasswordImplCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory _$$EnterPasswordImplCopyWith(
          _$EnterPasswordImpl value, $Res Function(_$EnterPasswordImpl) then) =
      __$$EnterPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$EnterPasswordImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$EnterPasswordImpl>
    implements _$$EnterPasswordImplCopyWith<$Res> {
  __$$EnterPasswordImplCopyWithImpl(
      _$EnterPasswordImpl _value, $Res Function(_$EnterPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$EnterPasswordImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$EnterPasswordImpl implements EnterPassword {
  const _$EnterPasswordImpl({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  @override
  String toString() {
    return 'LoginPage.enterPassword(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterPasswordImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterPasswordImplCopyWith<_$EnterPasswordImpl> get copyWith =>
      __$$EnterPasswordImplCopyWithImpl<_$EnterPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageState state) enterNumber,
    required TResult Function(PageState state) enterOtp,
    required TResult Function(PageState state) enterPassword,
    required TResult Function(PageState state) enterName,
    required TResult Function(PageState state, String newPassword) setPassword,
    required TResult Function(PageState state) success,
  }) {
    return enterPassword(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageState state)? enterNumber,
    TResult? Function(PageState state)? enterOtp,
    TResult? Function(PageState state)? enterPassword,
    TResult? Function(PageState state)? enterName,
    TResult? Function(PageState state, String newPassword)? setPassword,
    TResult? Function(PageState state)? success,
  }) {
    return enterPassword?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageState state)? enterNumber,
    TResult Function(PageState state)? enterOtp,
    TResult Function(PageState state)? enterPassword,
    TResult Function(PageState state)? enterName,
    TResult Function(PageState state, String newPassword)? setPassword,
    TResult Function(PageState state)? success,
    required TResult orElse(),
  }) {
    if (enterPassword != null) {
      return enterPassword(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumber value) enterNumber,
    required TResult Function(EnterOtp value) enterOtp,
    required TResult Function(EnterPassword value) enterPassword,
    required TResult Function(EnterName value) enterName,
    required TResult Function(SetPassword value) setPassword,
    required TResult Function(Success value) success,
  }) {
    return enterPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumber value)? enterNumber,
    TResult? Function(EnterOtp value)? enterOtp,
    TResult? Function(EnterPassword value)? enterPassword,
    TResult? Function(EnterName value)? enterName,
    TResult? Function(SetPassword value)? setPassword,
    TResult? Function(Success value)? success,
  }) {
    return enterPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumber value)? enterNumber,
    TResult Function(EnterOtp value)? enterOtp,
    TResult Function(EnterPassword value)? enterPassword,
    TResult Function(EnterName value)? enterName,
    TResult Function(SetPassword value)? setPassword,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (enterPassword != null) {
      return enterPassword(this);
    }
    return orElse();
  }
}

abstract class EnterPassword implements LoginPage {
  const factory EnterPassword({final PageState state}) = _$EnterPasswordImpl;

  @override
  PageState get state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterPasswordImplCopyWith<_$EnterPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterNameImplCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory _$$EnterNameImplCopyWith(
          _$EnterNameImpl value, $Res Function(_$EnterNameImpl) then) =
      __$$EnterNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$EnterNameImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$EnterNameImpl>
    implements _$$EnterNameImplCopyWith<$Res> {
  __$$EnterNameImplCopyWithImpl(
      _$EnterNameImpl _value, $Res Function(_$EnterNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$EnterNameImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$EnterNameImpl implements EnterName {
  const _$EnterNameImpl({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  @override
  String toString() {
    return 'LoginPage.enterName(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterNameImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterNameImplCopyWith<_$EnterNameImpl> get copyWith =>
      __$$EnterNameImplCopyWithImpl<_$EnterNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageState state) enterNumber,
    required TResult Function(PageState state) enterOtp,
    required TResult Function(PageState state) enterPassword,
    required TResult Function(PageState state) enterName,
    required TResult Function(PageState state, String newPassword) setPassword,
    required TResult Function(PageState state) success,
  }) {
    return enterName(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageState state)? enterNumber,
    TResult? Function(PageState state)? enterOtp,
    TResult? Function(PageState state)? enterPassword,
    TResult? Function(PageState state)? enterName,
    TResult? Function(PageState state, String newPassword)? setPassword,
    TResult? Function(PageState state)? success,
  }) {
    return enterName?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageState state)? enterNumber,
    TResult Function(PageState state)? enterOtp,
    TResult Function(PageState state)? enterPassword,
    TResult Function(PageState state)? enterName,
    TResult Function(PageState state, String newPassword)? setPassword,
    TResult Function(PageState state)? success,
    required TResult orElse(),
  }) {
    if (enterName != null) {
      return enterName(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumber value) enterNumber,
    required TResult Function(EnterOtp value) enterOtp,
    required TResult Function(EnterPassword value) enterPassword,
    required TResult Function(EnterName value) enterName,
    required TResult Function(SetPassword value) setPassword,
    required TResult Function(Success value) success,
  }) {
    return enterName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumber value)? enterNumber,
    TResult? Function(EnterOtp value)? enterOtp,
    TResult? Function(EnterPassword value)? enterPassword,
    TResult? Function(EnterName value)? enterName,
    TResult? Function(SetPassword value)? setPassword,
    TResult? Function(Success value)? success,
  }) {
    return enterName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumber value)? enterNumber,
    TResult Function(EnterOtp value)? enterOtp,
    TResult Function(EnterPassword value)? enterPassword,
    TResult Function(EnterName value)? enterName,
    TResult Function(SetPassword value)? setPassword,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (enterName != null) {
      return enterName(this);
    }
    return orElse();
  }
}

abstract class EnterName implements LoginPage {
  const factory EnterName({final PageState state}) = _$EnterNameImpl;

  @override
  PageState get state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnterNameImplCopyWith<_$EnterNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPasswordImplCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory _$$SetPasswordImplCopyWith(
          _$SetPasswordImpl value, $Res Function(_$SetPasswordImpl) then) =
      __$$SetPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState state, String newPassword});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$SetPasswordImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$SetPasswordImpl>
    implements _$$SetPasswordImplCopyWith<$Res> {
  __$$SetPasswordImplCopyWithImpl(
      _$SetPasswordImpl _value, $Res Function(_$SetPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? newPassword = null,
  }) {
    return _then(_$SetPasswordImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetPasswordImpl implements SetPassword {
  const _$SetPasswordImpl(
      {this.state = const PageState.idle(), this.newPassword = ""});

  @override
  @JsonKey()
  final PageState state;
  @override
  @JsonKey()
  final String newPassword;

  @override
  String toString() {
    return 'LoginPage.setPassword(state: $state, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPasswordImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, newPassword);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPasswordImplCopyWith<_$SetPasswordImpl> get copyWith =>
      __$$SetPasswordImplCopyWithImpl<_$SetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageState state) enterNumber,
    required TResult Function(PageState state) enterOtp,
    required TResult Function(PageState state) enterPassword,
    required TResult Function(PageState state) enterName,
    required TResult Function(PageState state, String newPassword) setPassword,
    required TResult Function(PageState state) success,
  }) {
    return setPassword(state, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageState state)? enterNumber,
    TResult? Function(PageState state)? enterOtp,
    TResult? Function(PageState state)? enterPassword,
    TResult? Function(PageState state)? enterName,
    TResult? Function(PageState state, String newPassword)? setPassword,
    TResult? Function(PageState state)? success,
  }) {
    return setPassword?.call(state, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageState state)? enterNumber,
    TResult Function(PageState state)? enterOtp,
    TResult Function(PageState state)? enterPassword,
    TResult Function(PageState state)? enterName,
    TResult Function(PageState state, String newPassword)? setPassword,
    TResult Function(PageState state)? success,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(state, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumber value) enterNumber,
    required TResult Function(EnterOtp value) enterOtp,
    required TResult Function(EnterPassword value) enterPassword,
    required TResult Function(EnterName value) enterName,
    required TResult Function(SetPassword value) setPassword,
    required TResult Function(Success value) success,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumber value)? enterNumber,
    TResult? Function(EnterOtp value)? enterOtp,
    TResult? Function(EnterPassword value)? enterPassword,
    TResult? Function(EnterName value)? enterName,
    TResult? Function(SetPassword value)? setPassword,
    TResult? Function(Success value)? success,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumber value)? enterNumber,
    TResult Function(EnterOtp value)? enterOtp,
    TResult Function(EnterPassword value)? enterPassword,
    TResult Function(EnterName value)? enterName,
    TResult Function(SetPassword value)? setPassword,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class SetPassword implements LoginPage {
  const factory SetPassword({final PageState state, final String newPassword}) =
      _$SetPasswordImpl;

  @override
  PageState get state;
  String get newPassword;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPasswordImplCopyWith<_$SetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$SuccessImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  @override
  String toString() {
    return 'LoginPage.success(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PageState state) enterNumber,
    required TResult Function(PageState state) enterOtp,
    required TResult Function(PageState state) enterPassword,
    required TResult Function(PageState state) enterName,
    required TResult Function(PageState state, String newPassword) setPassword,
    required TResult Function(PageState state) success,
  }) {
    return success(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PageState state)? enterNumber,
    TResult? Function(PageState state)? enterOtp,
    TResult? Function(PageState state)? enterPassword,
    TResult? Function(PageState state)? enterName,
    TResult? Function(PageState state, String newPassword)? setPassword,
    TResult? Function(PageState state)? success,
  }) {
    return success?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PageState state)? enterNumber,
    TResult Function(PageState state)? enterOtp,
    TResult Function(PageState state)? enterPassword,
    TResult Function(PageState state)? enterName,
    TResult Function(PageState state, String newPassword)? setPassword,
    TResult Function(PageState state)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumber value) enterNumber,
    required TResult Function(EnterOtp value) enterOtp,
    required TResult Function(EnterPassword value) enterPassword,
    required TResult Function(EnterName value) enterName,
    required TResult Function(SetPassword value) setPassword,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumber value)? enterNumber,
    TResult? Function(EnterOtp value)? enterOtp,
    TResult? Function(EnterPassword value)? enterPassword,
    TResult? Function(EnterName value)? enterName,
    TResult? Function(SetPassword value)? setPassword,
    TResult? Function(Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumber value)? enterNumber,
    TResult Function(EnterOtp value)? enterOtp,
    TResult Function(EnterPassword value)? enterPassword,
    TResult Function(EnterName value)? enterName,
    TResult Function(SetPassword value)? setPassword,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LoginPage {
  const factory Success({final PageState state}) = _$SuccessImpl;

  @override
  PageState get state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res, PageState>;
}

/// @nodoc
class _$PageStateCopyWithImpl<$Res, $Val extends PageState>
    implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl extends _Idle {
  const _$IdleImpl() : super._();

  @override
  String toString() {
    return 'PageState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle extends PageState {
  const factory _Idle() = _$IdleImpl;
  const _Idle._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'PageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PageState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required this.errorMessage}) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PageState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends PageState {
  const factory _Error({required final String errorMessage}) = _$ErrorImpl;
  const _Error._() : super._();

  String get errorMessage;

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
