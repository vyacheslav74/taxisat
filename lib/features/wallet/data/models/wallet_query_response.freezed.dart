// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_query_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletQueryResponse {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  List<WalletTransactionEntity> get transactions =>
      throw _privateConstructorUsedError;
  List<PaymentGatewayEntity> get paymentGateways =>
      throw _privateConstructorUsedError;
  List<SavedPaymentMethodEntity> get savedPaymentMethods =>
      throw _privateConstructorUsedError;

  /// Create a copy of WalletQueryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletQueryResponseCopyWith<WalletQueryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletQueryResponseCopyWith<$Res> {
  factory $WalletQueryResponseCopyWith(
          WalletQueryResponse value, $Res Function(WalletQueryResponse) then) =
      _$WalletQueryResponseCopyWithImpl<$Res, WalletQueryResponse>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String currency,
      double balance,
      List<WalletTransactionEntity> transactions,
      List<PaymentGatewayEntity> paymentGateways,
      List<SavedPaymentMethodEntity> savedPaymentMethods});
}

/// @nodoc
class _$WalletQueryResponseCopyWithImpl<$Res, $Val extends WalletQueryResponse>
    implements $WalletQueryResponseCopyWith<$Res> {
  _$WalletQueryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletQueryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? currency = null,
    Object? balance = null,
    Object? transactions = null,
    Object? paymentGateways = null,
    Object? savedPaymentMethods = null,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionEntity>,
      paymentGateways: null == paymentGateways
          ? _value.paymentGateways
          : paymentGateways // ignore: cast_nullable_to_non_nullable
              as List<PaymentGatewayEntity>,
      savedPaymentMethods: null == savedPaymentMethods
          ? _value.savedPaymentMethods
          : savedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<SavedPaymentMethodEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletQueryResponseImplCopyWith<$Res>
    implements $WalletQueryResponseCopyWith<$Res> {
  factory _$$WalletQueryResponseImplCopyWith(_$WalletQueryResponseImpl value,
          $Res Function(_$WalletQueryResponseImpl) then) =
      __$$WalletQueryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String currency,
      double balance,
      List<WalletTransactionEntity> transactions,
      List<PaymentGatewayEntity> paymentGateways,
      List<SavedPaymentMethodEntity> savedPaymentMethods});
}

/// @nodoc
class __$$WalletQueryResponseImplCopyWithImpl<$Res>
    extends _$WalletQueryResponseCopyWithImpl<$Res, _$WalletQueryResponseImpl>
    implements _$$WalletQueryResponseImplCopyWith<$Res> {
  __$$WalletQueryResponseImplCopyWithImpl(_$WalletQueryResponseImpl _value,
      $Res Function(_$WalletQueryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletQueryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? currency = null,
    Object? balance = null,
    Object? transactions = null,
    Object? paymentGateways = null,
    Object? savedPaymentMethods = null,
  }) {
    return _then(_$WalletQueryResponseImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionEntity>,
      paymentGateways: null == paymentGateways
          ? _value._paymentGateways
          : paymentGateways // ignore: cast_nullable_to_non_nullable
              as List<PaymentGatewayEntity>,
      savedPaymentMethods: null == savedPaymentMethods
          ? _value._savedPaymentMethods
          : savedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<SavedPaymentMethodEntity>,
    ));
  }
}

/// @nodoc

class _$WalletQueryResponseImpl implements _WalletQueryResponse {
  const _$WalletQueryResponseImpl(
      {required this.firstName,
      required this.lastName,
      required this.currency,
      required this.balance,
      required final List<WalletTransactionEntity> transactions,
      required final List<PaymentGatewayEntity> paymentGateways,
      required final List<SavedPaymentMethodEntity> savedPaymentMethods})
      : _transactions = transactions,
        _paymentGateways = paymentGateways,
        _savedPaymentMethods = savedPaymentMethods;

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String currency;
  @override
  final double balance;
  final List<WalletTransactionEntity> _transactions;
  @override
  List<WalletTransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  final List<PaymentGatewayEntity> _paymentGateways;
  @override
  List<PaymentGatewayEntity> get paymentGateways {
    if (_paymentGateways is EqualUnmodifiableListView) return _paymentGateways;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentGateways);
  }

  final List<SavedPaymentMethodEntity> _savedPaymentMethods;
  @override
  List<SavedPaymentMethodEntity> get savedPaymentMethods {
    if (_savedPaymentMethods is EqualUnmodifiableListView)
      return _savedPaymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedPaymentMethods);
  }

  @override
  String toString() {
    return 'WalletQueryResponse(firstName: $firstName, lastName: $lastName, currency: $currency, balance: $balance, transactions: $transactions, paymentGateways: $paymentGateways, savedPaymentMethods: $savedPaymentMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletQueryResponseImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality()
                .equals(other._paymentGateways, _paymentGateways) &&
            const DeepCollectionEquality()
                .equals(other._savedPaymentMethods, _savedPaymentMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      currency,
      balance,
      const DeepCollectionEquality().hash(_transactions),
      const DeepCollectionEquality().hash(_paymentGateways),
      const DeepCollectionEquality().hash(_savedPaymentMethods));

  /// Create a copy of WalletQueryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletQueryResponseImplCopyWith<_$WalletQueryResponseImpl> get copyWith =>
      __$$WalletQueryResponseImplCopyWithImpl<_$WalletQueryResponseImpl>(
          this, _$identity);
}

abstract class _WalletQueryResponse implements WalletQueryResponse {
  const factory _WalletQueryResponse(
          {required final String? firstName,
          required final String? lastName,
          required final String currency,
          required final double balance,
          required final List<WalletTransactionEntity> transactions,
          required final List<PaymentGatewayEntity> paymentGateways,
          required final List<SavedPaymentMethodEntity> savedPaymentMethods}) =
      _$WalletQueryResponseImpl;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String get currency;
  @override
  double get balance;
  @override
  List<WalletTransactionEntity> get transactions;
  @override
  List<PaymentGatewayEntity> get paymentGateways;
  @override
  List<SavedPaymentMethodEntity> get savedPaymentMethods;

  /// Create a copy of WalletQueryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletQueryResponseImplCopyWith<_$WalletQueryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
