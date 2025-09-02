// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletTransactionEntity {
  String get id => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  WalletRechargeTransactionType? get rechargeTransactionType =>
      throw _privateConstructorUsedError;
  WalletDeductTransactionType? get deductTransactionType =>
      throw _privateConstructorUsedError;

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletTransactionEntityCopyWith<WalletTransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionEntityCopyWith<$Res> {
  factory $WalletTransactionEntityCopyWith(WalletTransactionEntity value,
          $Res Function(WalletTransactionEntity) then) =
      _$WalletTransactionEntityCopyWithImpl<$Res, WalletTransactionEntity>;
  @useResult
  $Res call(
      {String id,
      DateTime dateTime,
      String currency,
      double amount,
      WalletRechargeTransactionType? rechargeTransactionType,
      WalletDeductTransactionType? deductTransactionType});
}

/// @nodoc
class _$WalletTransactionEntityCopyWithImpl<$Res,
        $Val extends WalletTransactionEntity>
    implements $WalletTransactionEntityCopyWith<$Res> {
  _$WalletTransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? currency = null,
    Object? amount = null,
    Object? rechargeTransactionType = freezed,
    Object? deductTransactionType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      rechargeTransactionType: freezed == rechargeTransactionType
          ? _value.rechargeTransactionType
          : rechargeTransactionType // ignore: cast_nullable_to_non_nullable
              as WalletRechargeTransactionType?,
      deductTransactionType: freezed == deductTransactionType
          ? _value.deductTransactionType
          : deductTransactionType // ignore: cast_nullable_to_non_nullable
              as WalletDeductTransactionType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletTransactionEntityImplCopyWith<$Res>
    implements $WalletTransactionEntityCopyWith<$Res> {
  factory _$$WalletTransactionEntityImplCopyWith(
          _$WalletTransactionEntityImpl value,
          $Res Function(_$WalletTransactionEntityImpl) then) =
      __$$WalletTransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime dateTime,
      String currency,
      double amount,
      WalletRechargeTransactionType? rechargeTransactionType,
      WalletDeductTransactionType? deductTransactionType});
}

/// @nodoc
class __$$WalletTransactionEntityImplCopyWithImpl<$Res>
    extends _$WalletTransactionEntityCopyWithImpl<$Res,
        _$WalletTransactionEntityImpl>
    implements _$$WalletTransactionEntityImplCopyWith<$Res> {
  __$$WalletTransactionEntityImplCopyWithImpl(
      _$WalletTransactionEntityImpl _value,
      $Res Function(_$WalletTransactionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
    Object? currency = null,
    Object? amount = null,
    Object? rechargeTransactionType = freezed,
    Object? deductTransactionType = freezed,
  }) {
    return _then(_$WalletTransactionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      rechargeTransactionType: freezed == rechargeTransactionType
          ? _value.rechargeTransactionType
          : rechargeTransactionType // ignore: cast_nullable_to_non_nullable
              as WalletRechargeTransactionType?,
      deductTransactionType: freezed == deductTransactionType
          ? _value.deductTransactionType
          : deductTransactionType // ignore: cast_nullable_to_non_nullable
              as WalletDeductTransactionType?,
    ));
  }
}

/// @nodoc

class _$WalletTransactionEntityImpl implements _WalletTransactionEntity {
  const _$WalletTransactionEntityImpl(
      {required this.id,
      required this.dateTime,
      required this.currency,
      required this.amount,
      required this.rechargeTransactionType,
      required this.deductTransactionType});

  @override
  final String id;
  @override
  final DateTime dateTime;
  @override
  final String currency;
  @override
  final double amount;
  @override
  final WalletRechargeTransactionType? rechargeTransactionType;
  @override
  final WalletDeductTransactionType? deductTransactionType;

  @override
  String toString() {
    return 'WalletTransactionEntity(id: $id, dateTime: $dateTime, currency: $currency, amount: $amount, rechargeTransactionType: $rechargeTransactionType, deductTransactionType: $deductTransactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(
                    other.rechargeTransactionType, rechargeTransactionType) ||
                other.rechargeTransactionType == rechargeTransactionType) &&
            (identical(other.deductTransactionType, deductTransactionType) ||
                other.deductTransactionType == deductTransactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, dateTime, currency, amount,
      rechargeTransactionType, deductTransactionType);

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionEntityImplCopyWith<_$WalletTransactionEntityImpl>
      get copyWith => __$$WalletTransactionEntityImplCopyWithImpl<
          _$WalletTransactionEntityImpl>(this, _$identity);
}

abstract class _WalletTransactionEntity implements WalletTransactionEntity {
  const factory _WalletTransactionEntity(
          {required final String id,
          required final DateTime dateTime,
          required final String currency,
          required final double amount,
          required final WalletRechargeTransactionType? rechargeTransactionType,
          required final WalletDeductTransactionType? deductTransactionType}) =
      _$WalletTransactionEntityImpl;

  @override
  String get id;
  @override
  DateTime get dateTime;
  @override
  String get currency;
  @override
  double get amount;
  @override
  WalletRechargeTransactionType? get rechargeTransactionType;
  @override
  WalletDeductTransactionType? get deductTransactionType;

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletTransactionEntityImplCopyWith<_$WalletTransactionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
