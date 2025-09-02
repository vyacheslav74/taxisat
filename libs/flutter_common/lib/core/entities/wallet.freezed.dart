// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletEntity _$WalletEntityFromJson(Map<String, dynamic> json) {
  return _WalletEntity.fromJson(json);
}

/// @nodoc
mixin _$WalletEntity {
  double get balance => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletEntityCopyWith<WalletEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEntityCopyWith<$Res> {
  factory $WalletEntityCopyWith(
          WalletEntity value, $Res Function(WalletEntity) then) =
      _$WalletEntityCopyWithImpl<$Res, WalletEntity>;
  @useResult
  $Res call({double balance, String currency});
}

/// @nodoc
class _$WalletEntityCopyWithImpl<$Res, $Val extends WalletEntity>
    implements $WalletEntityCopyWith<$Res> {
  _$WalletEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletEntityImplCopyWith<$Res>
    implements $WalletEntityCopyWith<$Res> {
  factory _$$WalletEntityImplCopyWith(
          _$WalletEntityImpl value, $Res Function(_$WalletEntityImpl) then) =
      __$$WalletEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double balance, String currency});
}

/// @nodoc
class __$$WalletEntityImplCopyWithImpl<$Res>
    extends _$WalletEntityCopyWithImpl<$Res, _$WalletEntityImpl>
    implements _$$WalletEntityImplCopyWith<$Res> {
  __$$WalletEntityImplCopyWithImpl(
      _$WalletEntityImpl _value, $Res Function(_$WalletEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? currency = null,
  }) {
    return _then(_$WalletEntityImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletEntityImpl implements _WalletEntity {
  const _$WalletEntityImpl({required this.balance, required this.currency});

  factory _$WalletEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletEntityImplFromJson(json);

  @override
  final double balance;
  @override
  final String currency;

  @override
  String toString() {
    return 'WalletEntity(balance: $balance, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletEntityImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, balance, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletEntityImplCopyWith<_$WalletEntityImpl> get copyWith =>
      __$$WalletEntityImplCopyWithImpl<_$WalletEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletEntityImplToJson(
      this,
    );
  }
}

abstract class _WalletEntity implements WalletEntity {
  const factory _WalletEntity(
      {required final double balance,
      required final String currency}) = _$WalletEntityImpl;

  factory _WalletEntity.fromJson(Map<String, dynamic> json) =
      _$WalletEntityImpl.fromJson;

  @override
  double get balance;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$WalletEntityImplCopyWith<_$WalletEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
