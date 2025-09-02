// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_fare_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculateFareResponse _$CalculateFareResponseFromJson(
    Map<String, dynamic> json) {
  return _CalculateFareResponse.fromJson(json);
}

/// @nodoc
mixin _$CalculateFareResponse {
  List<PaymentGatewayEntity> get paymentGateways =>
      throw _privateConstructorUsedError;
  List<SavedPaymentMethodEntity> get savedPaymentMethods =>
      throw _privateConstructorUsedError;
  List<ServiceCategoryEntity> get services =>
      throw _privateConstructorUsedError;
  List<(String, double)> get wallets => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get durationInSeconds => throw _privateConstructorUsedError;
  int get distanceInMeters => throw _privateConstructorUsedError;
  List<LatLngEntity> get directions => throw _privateConstructorUsedError;

  /// Serializes this CalculateFareResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculateFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculateFareResponseCopyWith<CalculateFareResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculateFareResponseCopyWith<$Res> {
  factory $CalculateFareResponseCopyWith(CalculateFareResponse value,
          $Res Function(CalculateFareResponse) then) =
      _$CalculateFareResponseCopyWithImpl<$Res, CalculateFareResponse>;
  @useResult
  $Res call(
      {List<PaymentGatewayEntity> paymentGateways,
      List<SavedPaymentMethodEntity> savedPaymentMethods,
      List<ServiceCategoryEntity> services,
      List<(String, double)> wallets,
      String currency,
      int durationInSeconds,
      int distanceInMeters,
      List<LatLngEntity> directions});
}

/// @nodoc
class _$CalculateFareResponseCopyWithImpl<$Res,
        $Val extends CalculateFareResponse>
    implements $CalculateFareResponseCopyWith<$Res> {
  _$CalculateFareResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculateFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentGateways = null,
    Object? savedPaymentMethods = null,
    Object? services = null,
    Object? wallets = null,
    Object? currency = null,
    Object? durationInSeconds = null,
    Object? distanceInMeters = null,
    Object? directions = null,
  }) {
    return _then(_value.copyWith(
      paymentGateways: null == paymentGateways
          ? _value.paymentGateways
          : paymentGateways // ignore: cast_nullable_to_non_nullable
              as List<PaymentGatewayEntity>,
      savedPaymentMethods: null == savedPaymentMethods
          ? _value.savedPaymentMethods
          : savedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<SavedPaymentMethodEntity>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategoryEntity>,
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<(String, double)>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      durationInSeconds: null == durationInSeconds
          ? _value.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      distanceInMeters: null == distanceInMeters
          ? _value.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculateFareResponseImplCopyWith<$Res>
    implements $CalculateFareResponseCopyWith<$Res> {
  factory _$$CalculateFareResponseImplCopyWith(
          _$CalculateFareResponseImpl value,
          $Res Function(_$CalculateFareResponseImpl) then) =
      __$$CalculateFareResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PaymentGatewayEntity> paymentGateways,
      List<SavedPaymentMethodEntity> savedPaymentMethods,
      List<ServiceCategoryEntity> services,
      List<(String, double)> wallets,
      String currency,
      int durationInSeconds,
      int distanceInMeters,
      List<LatLngEntity> directions});
}

/// @nodoc
class __$$CalculateFareResponseImplCopyWithImpl<$Res>
    extends _$CalculateFareResponseCopyWithImpl<$Res,
        _$CalculateFareResponseImpl>
    implements _$$CalculateFareResponseImplCopyWith<$Res> {
  __$$CalculateFareResponseImplCopyWithImpl(_$CalculateFareResponseImpl _value,
      $Res Function(_$CalculateFareResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculateFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentGateways = null,
    Object? savedPaymentMethods = null,
    Object? services = null,
    Object? wallets = null,
    Object? currency = null,
    Object? durationInSeconds = null,
    Object? distanceInMeters = null,
    Object? directions = null,
  }) {
    return _then(_$CalculateFareResponseImpl(
      paymentGateways: null == paymentGateways
          ? _value._paymentGateways
          : paymentGateways // ignore: cast_nullable_to_non_nullable
              as List<PaymentGatewayEntity>,
      savedPaymentMethods: null == savedPaymentMethods
          ? _value._savedPaymentMethods
          : savedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<SavedPaymentMethodEntity>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategoryEntity>,
      wallets: null == wallets
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<(String, double)>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      durationInSeconds: null == durationInSeconds
          ? _value.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      distanceInMeters: null == distanceInMeters
          ? _value.distanceInMeters
          : distanceInMeters // ignore: cast_nullable_to_non_nullable
              as int,
      directions: null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculateFareResponseImpl implements _CalculateFareResponse {
  const _$CalculateFareResponseImpl(
      {required final List<PaymentGatewayEntity> paymentGateways,
      required final List<SavedPaymentMethodEntity> savedPaymentMethods,
      required final List<ServiceCategoryEntity> services,
      required final List<(String, double)> wallets,
      required this.currency,
      required this.durationInSeconds,
      required this.distanceInMeters,
      required final List<LatLngEntity> directions})
      : _paymentGateways = paymentGateways,
        _savedPaymentMethods = savedPaymentMethods,
        _services = services,
        _wallets = wallets,
        _directions = directions;

  factory _$CalculateFareResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculateFareResponseImplFromJson(json);

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

  final List<ServiceCategoryEntity> _services;
  @override
  List<ServiceCategoryEntity> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final List<(String, double)> _wallets;
  @override
  List<(String, double)> get wallets {
    if (_wallets is EqualUnmodifiableListView) return _wallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  final String currency;
  @override
  final int durationInSeconds;
  @override
  final int distanceInMeters;
  final List<LatLngEntity> _directions;
  @override
  List<LatLngEntity> get directions {
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directions);
  }

  @override
  String toString() {
    return 'CalculateFareResponse(paymentGateways: $paymentGateways, savedPaymentMethods: $savedPaymentMethods, services: $services, wallets: $wallets, currency: $currency, durationInSeconds: $durationInSeconds, distanceInMeters: $distanceInMeters, directions: $directions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateFareResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentGateways, _paymentGateways) &&
            const DeepCollectionEquality()
                .equals(other._savedPaymentMethods, _savedPaymentMethods) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._wallets, _wallets) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds) &&
            (identical(other.distanceInMeters, distanceInMeters) ||
                other.distanceInMeters == distanceInMeters) &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paymentGateways),
      const DeepCollectionEquality().hash(_savedPaymentMethods),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_wallets),
      currency,
      durationInSeconds,
      distanceInMeters,
      const DeepCollectionEquality().hash(_directions));

  /// Create a copy of CalculateFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateFareResponseImplCopyWith<_$CalculateFareResponseImpl>
      get copyWith => __$$CalculateFareResponseImplCopyWithImpl<
          _$CalculateFareResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculateFareResponseImplToJson(
      this,
    );
  }
}

abstract class _CalculateFareResponse implements CalculateFareResponse {
  const factory _CalculateFareResponse(
          {required final List<PaymentGatewayEntity> paymentGateways,
          required final List<SavedPaymentMethodEntity> savedPaymentMethods,
          required final List<ServiceCategoryEntity> services,
          required final List<(String, double)> wallets,
          required final String currency,
          required final int durationInSeconds,
          required final int distanceInMeters,
          required final List<LatLngEntity> directions}) =
      _$CalculateFareResponseImpl;

  factory _CalculateFareResponse.fromJson(Map<String, dynamic> json) =
      _$CalculateFareResponseImpl.fromJson;

  @override
  List<PaymentGatewayEntity> get paymentGateways;
  @override
  List<SavedPaymentMethodEntity> get savedPaymentMethods;
  @override
  List<ServiceCategoryEntity> get services;
  @override
  List<(String, double)> get wallets;
  @override
  String get currency;
  @override
  int get durationInSeconds;
  @override
  int get distanceInMeters;
  @override
  List<LatLngEntity> get directions;

  /// Create a copy of CalculateFareResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculateFareResponseImplCopyWith<_$CalculateFareResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
