// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GiftCardEntity {
  String get code => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  /// Create a copy of GiftCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftCardEntityCopyWith<GiftCardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardEntityCopyWith<$Res> {
  factory $GiftCardEntityCopyWith(
          GiftCardEntity value, $Res Function(GiftCardEntity) then) =
      _$GiftCardEntityCopyWithImpl<$Res, GiftCardEntity>;
  @useResult
  $Res call({String code, double amount, String currency});
}

/// @nodoc
class _$GiftCardEntityCopyWithImpl<$Res, $Val extends GiftCardEntity>
    implements $GiftCardEntityCopyWith<$Res> {
  _$GiftCardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftCardEntityImplCopyWith<$Res>
    implements $GiftCardEntityCopyWith<$Res> {
  factory _$$GiftCardEntityImplCopyWith(_$GiftCardEntityImpl value,
          $Res Function(_$GiftCardEntityImpl) then) =
      __$$GiftCardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, double amount, String currency});
}

/// @nodoc
class __$$GiftCardEntityImplCopyWithImpl<$Res>
    extends _$GiftCardEntityCopyWithImpl<$Res, _$GiftCardEntityImpl>
    implements _$$GiftCardEntityImplCopyWith<$Res> {
  __$$GiftCardEntityImplCopyWithImpl(
      _$GiftCardEntityImpl _value, $Res Function(_$GiftCardEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? amount = null,
    Object? currency = null,
  }) {
    return _then(_$GiftCardEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GiftCardEntityImpl implements _GiftCardEntity {
  const _$GiftCardEntityImpl(
      {required this.code, required this.amount, required this.currency});

  @override
  final String code;
  @override
  final double amount;
  @override
  final String currency;

  @override
  String toString() {
    return 'GiftCardEntity(code: $code, amount: $amount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftCardEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, amount, currency);

  /// Create a copy of GiftCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftCardEntityImplCopyWith<_$GiftCardEntityImpl> get copyWith =>
      __$$GiftCardEntityImplCopyWithImpl<_$GiftCardEntityImpl>(
          this, _$identity);
}

abstract class _GiftCardEntity implements GiftCardEntity {
  const factory _GiftCardEntity(
      {required final String code,
      required final double amount,
      required final String currency}) = _$GiftCardEntityImpl;

  @override
  String get code;
  @override
  double get amount;
  @override
  String get currency;

  /// Create a copy of GiftCardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftCardEntityImplCopyWith<_$GiftCardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
