// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddBalanceDTO {
  AddBalanceStatus get status => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get paymentUrl => throw _privateConstructorUsedError;

  /// Create a copy of AddBalanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddBalanceDTOCopyWith<AddBalanceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBalanceDTOCopyWith<$Res> {
  factory $AddBalanceDTOCopyWith(
          AddBalanceDTO value, $Res Function(AddBalanceDTO) then) =
      _$AddBalanceDTOCopyWithImpl<$Res, AddBalanceDTO>;
  @useResult
  $Res call(
      {AddBalanceStatus status,
      String currency,
      double amount,
      String? errorMessage,
      String? paymentUrl});
}

/// @nodoc
class _$AddBalanceDTOCopyWithImpl<$Res, $Val extends AddBalanceDTO>
    implements $AddBalanceDTOCopyWith<$Res> {
  _$AddBalanceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddBalanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currency = null,
    Object? amount = null,
    Object? errorMessage = freezed,
    Object? paymentUrl = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddBalanceStatus,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddBalanceDTOImplCopyWith<$Res>
    implements $AddBalanceDTOCopyWith<$Res> {
  factory _$$AddBalanceDTOImplCopyWith(
          _$AddBalanceDTOImpl value, $Res Function(_$AddBalanceDTOImpl) then) =
      __$$AddBalanceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddBalanceStatus status,
      String currency,
      double amount,
      String? errorMessage,
      String? paymentUrl});
}

/// @nodoc
class __$$AddBalanceDTOImplCopyWithImpl<$Res>
    extends _$AddBalanceDTOCopyWithImpl<$Res, _$AddBalanceDTOImpl>
    implements _$$AddBalanceDTOImplCopyWith<$Res> {
  __$$AddBalanceDTOImplCopyWithImpl(
      _$AddBalanceDTOImpl _value, $Res Function(_$AddBalanceDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddBalanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currency = null,
    Object? amount = null,
    Object? errorMessage = freezed,
    Object? paymentUrl = freezed,
  }) {
    return _then(_$AddBalanceDTOImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AddBalanceStatus,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddBalanceDTOImpl implements _AddBalanceDTO {
  const _$AddBalanceDTOImpl(
      {required this.status,
      required this.currency,
      required this.amount,
      required this.errorMessage,
      required this.paymentUrl});

  @override
  final AddBalanceStatus status;
  @override
  final String currency;
  @override
  final double amount;
  @override
  final String? errorMessage;
  @override
  final String? paymentUrl;

  @override
  String toString() {
    return 'AddBalanceDTO(status: $status, currency: $currency, amount: $amount, errorMessage: $errorMessage, paymentUrl: $paymentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBalanceDTOImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, currency, amount, errorMessage, paymentUrl);

  /// Create a copy of AddBalanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBalanceDTOImplCopyWith<_$AddBalanceDTOImpl> get copyWith =>
      __$$AddBalanceDTOImplCopyWithImpl<_$AddBalanceDTOImpl>(this, _$identity);
}

abstract class _AddBalanceDTO implements AddBalanceDTO {
  const factory _AddBalanceDTO(
      {required final AddBalanceStatus status,
      required final String currency,
      required final double amount,
      required final String? errorMessage,
      required final String? paymentUrl}) = _$AddBalanceDTOImpl;

  @override
  AddBalanceStatus get status;
  @override
  String get currency;
  @override
  double get amount;
  @override
  String? get errorMessage;
  @override
  String? get paymentUrl;

  /// Create a copy of AddBalanceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddBalanceDTOImplCopyWith<_$AddBalanceDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
