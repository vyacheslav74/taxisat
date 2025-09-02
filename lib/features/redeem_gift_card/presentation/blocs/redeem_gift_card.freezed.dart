// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeem_gift_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RedeemGiftCardState {
  String? get code => throw _privateConstructorUsedError;
  AppFormState<(double, String)> get formState =>
      throw _privateConstructorUsedError;

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RedeemGiftCardStateCopyWith<RedeemGiftCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemGiftCardStateCopyWith<$Res> {
  factory $RedeemGiftCardStateCopyWith(
          RedeemGiftCardState value, $Res Function(RedeemGiftCardState) then) =
      _$RedeemGiftCardStateCopyWithImpl<$Res, RedeemGiftCardState>;
  @useResult
  $Res call({String? code, AppFormState<(double, String)> formState});

  $AppFormStateCopyWith<(double, String), $Res> get formState;
}

/// @nodoc
class _$RedeemGiftCardStateCopyWithImpl<$Res, $Val extends RedeemGiftCardState>
    implements $RedeemGiftCardStateCopyWith<$Res> {
  _$RedeemGiftCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? formState = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      formState: null == formState
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as AppFormState<(double, String)>,
    ) as $Val);
  }

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppFormStateCopyWith<(double, String), $Res> get formState {
    return $AppFormStateCopyWith<(double, String), $Res>(_value.formState,
        (value) {
      return _then(_value.copyWith(formState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RedeemGiftCardStateImplCopyWith<$Res>
    implements $RedeemGiftCardStateCopyWith<$Res> {
  factory _$$RedeemGiftCardStateImplCopyWith(_$RedeemGiftCardStateImpl value,
          $Res Function(_$RedeemGiftCardStateImpl) then) =
      __$$RedeemGiftCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, AppFormState<(double, String)> formState});

  @override
  $AppFormStateCopyWith<(double, String), $Res> get formState;
}

/// @nodoc
class __$$RedeemGiftCardStateImplCopyWithImpl<$Res>
    extends _$RedeemGiftCardStateCopyWithImpl<$Res, _$RedeemGiftCardStateImpl>
    implements _$$RedeemGiftCardStateImplCopyWith<$Res> {
  __$$RedeemGiftCardStateImplCopyWithImpl(_$RedeemGiftCardStateImpl _value,
      $Res Function(_$RedeemGiftCardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? formState = null,
  }) {
    return _then(_$RedeemGiftCardStateImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      formState: null == formState
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as AppFormState<(double, String)>,
    ));
  }
}

/// @nodoc

class _$RedeemGiftCardStateImpl implements _RedeemGiftCardState {
  const _$RedeemGiftCardStateImpl(
      {required this.code, required this.formState});

  @override
  final String? code;
  @override
  final AppFormState<(double, String)> formState;

  @override
  String toString() {
    return 'RedeemGiftCardState(code: $code, formState: $formState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedeemGiftCardStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.formState, formState) ||
                other.formState == formState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, formState);

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedeemGiftCardStateImplCopyWith<_$RedeemGiftCardStateImpl> get copyWith =>
      __$$RedeemGiftCardStateImplCopyWithImpl<_$RedeemGiftCardStateImpl>(
          this, _$identity);
}

abstract class _RedeemGiftCardState implements RedeemGiftCardState {
  const factory _RedeemGiftCardState(
          {required final String? code,
          required final AppFormState<(double, String)> formState}) =
      _$RedeemGiftCardStateImpl;

  @override
  String? get code;
  @override
  AppFormState<(double, String)> get formState;

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedeemGiftCardStateImplCopyWith<_$RedeemGiftCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
