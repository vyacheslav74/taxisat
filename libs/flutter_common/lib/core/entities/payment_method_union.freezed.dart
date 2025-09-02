// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_union.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodUnion _$PaymentMethodUnionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'paymentGateway':
      return _PaymentGateway.fromJson(json);
    case 'savedPaymentMethod':
      return _SavedPaymentMethod.fromJson(json);
    case 'cash':
      return _Cash.fromJson(json);
    case 'wallet':
      return _Wallet.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PaymentMethodUnion',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PaymentMethodUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentGatewayEntity paymentGateway)
        paymentGateway,
    required TResult Function(SavedPaymentMethodEntity savedPaymentMethod)
        savedPaymentMethod,
    required TResult Function() cash,
    required TResult Function() wallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult? Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult? Function()? cash,
    TResult? Function()? wallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult Function()? cash,
    TResult Function()? wallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentGateway value) paymentGateway,
    required TResult Function(_SavedPaymentMethod value) savedPaymentMethod,
    required TResult Function(_Cash value) cash,
    required TResult Function(_Wallet value) wallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentGateway value)? paymentGateway,
    TResult? Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult? Function(_Cash value)? cash,
    TResult? Function(_Wallet value)? wallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentGateway value)? paymentGateway,
    TResult Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult Function(_Cash value)? cash,
    TResult Function(_Wallet value)? wallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodUnionCopyWith<$Res> {
  factory $PaymentMethodUnionCopyWith(
          PaymentMethodUnion value, $Res Function(PaymentMethodUnion) then) =
      _$PaymentMethodUnionCopyWithImpl<$Res, PaymentMethodUnion>;
}

/// @nodoc
class _$PaymentMethodUnionCopyWithImpl<$Res, $Val extends PaymentMethodUnion>
    implements $PaymentMethodUnionCopyWith<$Res> {
  _$PaymentMethodUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PaymentGatewayImplCopyWith<$Res> {
  factory _$$PaymentGatewayImplCopyWith(_$PaymentGatewayImpl value,
          $Res Function(_$PaymentGatewayImpl) then) =
      __$$PaymentGatewayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentGatewayEntity paymentGateway});

  $PaymentGatewayEntityCopyWith<$Res> get paymentGateway;
}

/// @nodoc
class __$$PaymentGatewayImplCopyWithImpl<$Res>
    extends _$PaymentMethodUnionCopyWithImpl<$Res, _$PaymentGatewayImpl>
    implements _$$PaymentGatewayImplCopyWith<$Res> {
  __$$PaymentGatewayImplCopyWithImpl(
      _$PaymentGatewayImpl _value, $Res Function(_$PaymentGatewayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentGateway = null,
  }) {
    return _then(_$PaymentGatewayImpl(
      paymentGateway: null == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as PaymentGatewayEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentGatewayEntityCopyWith<$Res> get paymentGateway {
    return $PaymentGatewayEntityCopyWith<$Res>(_value.paymentGateway, (value) {
      return _then(_value.copyWith(paymentGateway: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentGatewayImpl implements _PaymentGateway {
  const _$PaymentGatewayImpl(
      {required this.paymentGateway, final String? $type})
      : $type = $type ?? 'paymentGateway';

  factory _$PaymentGatewayImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentGatewayImplFromJson(json);

  @override
  final PaymentGatewayEntity paymentGateway;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaymentMethodUnion.paymentGateway(paymentGateway: $paymentGateway)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentGatewayImpl &&
            (identical(other.paymentGateway, paymentGateway) ||
                other.paymentGateway == paymentGateway));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentGateway);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentGatewayImplCopyWith<_$PaymentGatewayImpl> get copyWith =>
      __$$PaymentGatewayImplCopyWithImpl<_$PaymentGatewayImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentGatewayEntity paymentGateway)
        paymentGateway,
    required TResult Function(SavedPaymentMethodEntity savedPaymentMethod)
        savedPaymentMethod,
    required TResult Function() cash,
    required TResult Function() wallet,
  }) {
    return paymentGateway(this.paymentGateway);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult? Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult? Function()? cash,
    TResult? Function()? wallet,
  }) {
    return paymentGateway?.call(this.paymentGateway);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult Function()? cash,
    TResult Function()? wallet,
    required TResult orElse(),
  }) {
    if (paymentGateway != null) {
      return paymentGateway(this.paymentGateway);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentGateway value) paymentGateway,
    required TResult Function(_SavedPaymentMethod value) savedPaymentMethod,
    required TResult Function(_Cash value) cash,
    required TResult Function(_Wallet value) wallet,
  }) {
    return paymentGateway(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentGateway value)? paymentGateway,
    TResult? Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult? Function(_Cash value)? cash,
    TResult? Function(_Wallet value)? wallet,
  }) {
    return paymentGateway?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentGateway value)? paymentGateway,
    TResult Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult Function(_Cash value)? cash,
    TResult Function(_Wallet value)? wallet,
    required TResult orElse(),
  }) {
    if (paymentGateway != null) {
      return paymentGateway(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentGatewayImplToJson(
      this,
    );
  }
}

abstract class _PaymentGateway implements PaymentMethodUnion {
  const factory _PaymentGateway(
          {required final PaymentGatewayEntity paymentGateway}) =
      _$PaymentGatewayImpl;

  factory _PaymentGateway.fromJson(Map<String, dynamic> json) =
      _$PaymentGatewayImpl.fromJson;

  PaymentGatewayEntity get paymentGateway;
  @JsonKey(ignore: true)
  _$$PaymentGatewayImplCopyWith<_$PaymentGatewayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedPaymentMethodImplCopyWith<$Res> {
  factory _$$SavedPaymentMethodImplCopyWith(_$SavedPaymentMethodImpl value,
          $Res Function(_$SavedPaymentMethodImpl) then) =
      __$$SavedPaymentMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SavedPaymentMethodEntity savedPaymentMethod});

  $SavedPaymentMethodEntityCopyWith<$Res> get savedPaymentMethod;
}

/// @nodoc
class __$$SavedPaymentMethodImplCopyWithImpl<$Res>
    extends _$PaymentMethodUnionCopyWithImpl<$Res, _$SavedPaymentMethodImpl>
    implements _$$SavedPaymentMethodImplCopyWith<$Res> {
  __$$SavedPaymentMethodImplCopyWithImpl(_$SavedPaymentMethodImpl _value,
      $Res Function(_$SavedPaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedPaymentMethod = null,
  }) {
    return _then(_$SavedPaymentMethodImpl(
      savedPaymentMethod: null == savedPaymentMethod
          ? _value.savedPaymentMethod
          : savedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as SavedPaymentMethodEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SavedPaymentMethodEntityCopyWith<$Res> get savedPaymentMethod {
    return $SavedPaymentMethodEntityCopyWith<$Res>(_value.savedPaymentMethod,
        (value) {
      return _then(_value.copyWith(savedPaymentMethod: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedPaymentMethodImpl implements _SavedPaymentMethod {
  const _$SavedPaymentMethodImpl(
      {required this.savedPaymentMethod, final String? $type})
      : $type = $type ?? 'savedPaymentMethod';

  factory _$SavedPaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedPaymentMethodImplFromJson(json);

  @override
  final SavedPaymentMethodEntity savedPaymentMethod;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaymentMethodUnion.savedPaymentMethod(savedPaymentMethod: $savedPaymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedPaymentMethodImpl &&
            (identical(other.savedPaymentMethod, savedPaymentMethod) ||
                other.savedPaymentMethod == savedPaymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, savedPaymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedPaymentMethodImplCopyWith<_$SavedPaymentMethodImpl> get copyWith =>
      __$$SavedPaymentMethodImplCopyWithImpl<_$SavedPaymentMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentGatewayEntity paymentGateway)
        paymentGateway,
    required TResult Function(SavedPaymentMethodEntity savedPaymentMethod)
        savedPaymentMethod,
    required TResult Function() cash,
    required TResult Function() wallet,
  }) {
    return savedPaymentMethod(this.savedPaymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult? Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult? Function()? cash,
    TResult? Function()? wallet,
  }) {
    return savedPaymentMethod?.call(this.savedPaymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult Function()? cash,
    TResult Function()? wallet,
    required TResult orElse(),
  }) {
    if (savedPaymentMethod != null) {
      return savedPaymentMethod(this.savedPaymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentGateway value) paymentGateway,
    required TResult Function(_SavedPaymentMethod value) savedPaymentMethod,
    required TResult Function(_Cash value) cash,
    required TResult Function(_Wallet value) wallet,
  }) {
    return savedPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentGateway value)? paymentGateway,
    TResult? Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult? Function(_Cash value)? cash,
    TResult? Function(_Wallet value)? wallet,
  }) {
    return savedPaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentGateway value)? paymentGateway,
    TResult Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult Function(_Cash value)? cash,
    TResult Function(_Wallet value)? wallet,
    required TResult orElse(),
  }) {
    if (savedPaymentMethod != null) {
      return savedPaymentMethod(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedPaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _SavedPaymentMethod implements PaymentMethodUnion {
  const factory _SavedPaymentMethod(
          {required final SavedPaymentMethodEntity savedPaymentMethod}) =
      _$SavedPaymentMethodImpl;

  factory _SavedPaymentMethod.fromJson(Map<String, dynamic> json) =
      _$SavedPaymentMethodImpl.fromJson;

  SavedPaymentMethodEntity get savedPaymentMethod;
  @JsonKey(ignore: true)
  _$$SavedPaymentMethodImplCopyWith<_$SavedPaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CashImplCopyWith<$Res> {
  factory _$$CashImplCopyWith(
          _$CashImpl value, $Res Function(_$CashImpl) then) =
      __$$CashImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CashImplCopyWithImpl<$Res>
    extends _$PaymentMethodUnionCopyWithImpl<$Res, _$CashImpl>
    implements _$$CashImplCopyWith<$Res> {
  __$$CashImplCopyWithImpl(_$CashImpl _value, $Res Function(_$CashImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CashImpl implements _Cash {
  const _$CashImpl({final String? $type}) : $type = $type ?? 'cash';

  factory _$CashImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaymentMethodUnion.cash()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CashImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentGatewayEntity paymentGateway)
        paymentGateway,
    required TResult Function(SavedPaymentMethodEntity savedPaymentMethod)
        savedPaymentMethod,
    required TResult Function() cash,
    required TResult Function() wallet,
  }) {
    return cash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult? Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult? Function()? cash,
    TResult? Function()? wallet,
  }) {
    return cash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult Function()? cash,
    TResult Function()? wallet,
    required TResult orElse(),
  }) {
    if (cash != null) {
      return cash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentGateway value) paymentGateway,
    required TResult Function(_SavedPaymentMethod value) savedPaymentMethod,
    required TResult Function(_Cash value) cash,
    required TResult Function(_Wallet value) wallet,
  }) {
    return cash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentGateway value)? paymentGateway,
    TResult? Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult? Function(_Cash value)? cash,
    TResult? Function(_Wallet value)? wallet,
  }) {
    return cash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentGateway value)? paymentGateway,
    TResult Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult Function(_Cash value)? cash,
    TResult Function(_Wallet value)? wallet,
    required TResult orElse(),
  }) {
    if (cash != null) {
      return cash(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CashImplToJson(
      this,
    );
  }
}

abstract class _Cash implements PaymentMethodUnion {
  const factory _Cash() = _$CashImpl;

  factory _Cash.fromJson(Map<String, dynamic> json) = _$CashImpl.fromJson;
}

/// @nodoc
abstract class _$$WalletImplCopyWith<$Res> {
  factory _$$WalletImplCopyWith(
          _$WalletImpl value, $Res Function(_$WalletImpl) then) =
      __$$WalletImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletImplCopyWithImpl<$Res>
    extends _$PaymentMethodUnionCopyWithImpl<$Res, _$WalletImpl>
    implements _$$WalletImplCopyWith<$Res> {
  __$$WalletImplCopyWithImpl(
      _$WalletImpl _value, $Res Function(_$WalletImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$WalletImpl implements _Wallet {
  const _$WalletImpl({final String? $type}) : $type = $type ?? 'wallet';

  factory _$WalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PaymentMethodUnion.wallet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentGatewayEntity paymentGateway)
        paymentGateway,
    required TResult Function(SavedPaymentMethodEntity savedPaymentMethod)
        savedPaymentMethod,
    required TResult Function() cash,
    required TResult Function() wallet,
  }) {
    return wallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult? Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult? Function()? cash,
    TResult? Function()? wallet,
  }) {
    return wallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentGatewayEntity paymentGateway)? paymentGateway,
    TResult Function(SavedPaymentMethodEntity savedPaymentMethod)?
        savedPaymentMethod,
    TResult Function()? cash,
    TResult Function()? wallet,
    required TResult orElse(),
  }) {
    if (wallet != null) {
      return wallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PaymentGateway value) paymentGateway,
    required TResult Function(_SavedPaymentMethod value) savedPaymentMethod,
    required TResult Function(_Cash value) cash,
    required TResult Function(_Wallet value) wallet,
  }) {
    return wallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PaymentGateway value)? paymentGateway,
    TResult? Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult? Function(_Cash value)? cash,
    TResult? Function(_Wallet value)? wallet,
  }) {
    return wallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PaymentGateway value)? paymentGateway,
    TResult Function(_SavedPaymentMethod value)? savedPaymentMethod,
    TResult Function(_Cash value)? cash,
    TResult Function(_Wallet value)? wallet,
    required TResult orElse(),
  }) {
    if (wallet != null) {
      return wallet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletImplToJson(
      this,
    );
  }
}

abstract class _Wallet implements PaymentMethodUnion {
  const factory _Wallet() = _$WalletImpl;

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$WalletImpl.fromJson;
}
