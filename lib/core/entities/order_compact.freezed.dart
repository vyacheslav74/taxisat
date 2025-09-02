// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_compact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderCompactEntity _$OrderCompactEntityFromJson(Map<String, dynamic> json) {
  return _OrderHistoryEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderCompactEntity {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get expectedAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  int get waitTime => throw _privateConstructorUsedError;
  bool get isTwoWayTrip => throw _privateConstructorUsedError;
  List<PlaceEntity> get waypoints => throw _privateConstructorUsedError;
  List<RideOptionEntity> get rideOptions => throw _privateConstructorUsedError;
  double get fee => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  PaymentMethodUnion get paymentMethodUnion =>
      throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String? get serviceDescription => throw _privateConstructorUsedError;
  String? get serviceImageUrl => throw _privateConstructorUsedError;
  int get distanceBest => throw _privateConstructorUsedError;
  int get durationBest => throw _privateConstructorUsedError;
  DriverEntity? get driver => throw _privateConstructorUsedError;

  /// Serializes this OrderCompactEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderCompactEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCompactEntityCopyWith<OrderCompactEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCompactEntityCopyWith<$Res> {
  factory $OrderCompactEntityCopyWith(
          OrderCompactEntity value, $Res Function(OrderCompactEntity) then) =
      _$OrderCompactEntityCopyWithImpl<$Res, OrderCompactEntity>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime expectedAt,
      DateTime? startedAt,
      DateTime? endedAt,
      int waitTime,
      bool isTwoWayTrip,
      List<PlaceEntity> waypoints,
      List<RideOptionEntity> rideOptions,
      double fee,
      String currency,
      PaymentMethodUnion paymentMethodUnion,
      String serviceName,
      String? serviceDescription,
      String? serviceImageUrl,
      int distanceBest,
      int durationBest,
      DriverEntity? driver});

  $PaymentMethodUnionCopyWith<$Res> get paymentMethodUnion;
  $DriverEntityCopyWith<$Res>? get driver;
}

/// @nodoc
class _$OrderCompactEntityCopyWithImpl<$Res, $Val extends OrderCompactEntity>
    implements $OrderCompactEntityCopyWith<$Res> {
  _$OrderCompactEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCompactEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? expectedAt = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? waitTime = null,
    Object? isTwoWayTrip = null,
    Object? waypoints = null,
    Object? rideOptions = null,
    Object? fee = null,
    Object? currency = null,
    Object? paymentMethodUnion = null,
    Object? serviceName = null,
    Object? serviceDescription = freezed,
    Object? serviceImageUrl = freezed,
    Object? distanceBest = null,
    Object? durationBest = null,
    Object? driver = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expectedAt: null == expectedAt
          ? _value.expectedAt
          : expectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int,
      isTwoWayTrip: null == isTwoWayTrip
          ? _value.isTwoWayTrip
          : isTwoWayTrip // ignore: cast_nullable_to_non_nullable
              as bool,
      waypoints: null == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      rideOptions: null == rideOptions
          ? _value.rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodUnion: null == paymentMethodUnion
          ? _value.paymentMethodUnion
          : paymentMethodUnion // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceDescription: freezed == serviceDescription
          ? _value.serviceDescription
          : serviceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceImageUrl: freezed == serviceImageUrl
          ? _value.serviceImageUrl
          : serviceImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceBest: null == distanceBest
          ? _value.distanceBest
          : distanceBest // ignore: cast_nullable_to_non_nullable
              as int,
      durationBest: null == durationBest
          ? _value.durationBest
          : durationBest // ignore: cast_nullable_to_non_nullable
              as int,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverEntity?,
    ) as $Val);
  }

  /// Create a copy of OrderCompactEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodUnionCopyWith<$Res> get paymentMethodUnion {
    return $PaymentMethodUnionCopyWith<$Res>(_value.paymentMethodUnion,
        (value) {
      return _then(_value.copyWith(paymentMethodUnion: value) as $Val);
    });
  }

  /// Create a copy of OrderCompactEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverEntityCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverEntityCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderHistoryEntityImplCopyWith<$Res>
    implements $OrderCompactEntityCopyWith<$Res> {
  factory _$$OrderHistoryEntityImplCopyWith(_$OrderHistoryEntityImpl value,
          $Res Function(_$OrderHistoryEntityImpl) then) =
      __$$OrderHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime expectedAt,
      DateTime? startedAt,
      DateTime? endedAt,
      int waitTime,
      bool isTwoWayTrip,
      List<PlaceEntity> waypoints,
      List<RideOptionEntity> rideOptions,
      double fee,
      String currency,
      PaymentMethodUnion paymentMethodUnion,
      String serviceName,
      String? serviceDescription,
      String? serviceImageUrl,
      int distanceBest,
      int durationBest,
      DriverEntity? driver});

  @override
  $PaymentMethodUnionCopyWith<$Res> get paymentMethodUnion;
  @override
  $DriverEntityCopyWith<$Res>? get driver;
}

/// @nodoc
class __$$OrderHistoryEntityImplCopyWithImpl<$Res>
    extends _$OrderCompactEntityCopyWithImpl<$Res, _$OrderHistoryEntityImpl>
    implements _$$OrderHistoryEntityImplCopyWith<$Res> {
  __$$OrderHistoryEntityImplCopyWithImpl(_$OrderHistoryEntityImpl _value,
      $Res Function(_$OrderHistoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCompactEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? expectedAt = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? waitTime = null,
    Object? isTwoWayTrip = null,
    Object? waypoints = null,
    Object? rideOptions = null,
    Object? fee = null,
    Object? currency = null,
    Object? paymentMethodUnion = null,
    Object? serviceName = null,
    Object? serviceDescription = freezed,
    Object? serviceImageUrl = freezed,
    Object? distanceBest = null,
    Object? durationBest = null,
    Object? driver = freezed,
  }) {
    return _then(_$OrderHistoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expectedAt: null == expectedAt
          ? _value.expectedAt
          : expectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int,
      isTwoWayTrip: null == isTwoWayTrip
          ? _value.isTwoWayTrip
          : isTwoWayTrip // ignore: cast_nullable_to_non_nullable
              as bool,
      waypoints: null == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      rideOptions: null == rideOptions
          ? _value._rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodUnion: null == paymentMethodUnion
          ? _value.paymentMethodUnion
          : paymentMethodUnion // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceDescription: freezed == serviceDescription
          ? _value.serviceDescription
          : serviceDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceImageUrl: freezed == serviceImageUrl
          ? _value.serviceImageUrl
          : serviceImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceBest: null == distanceBest
          ? _value.distanceBest
          : distanceBest // ignore: cast_nullable_to_non_nullable
              as int,
      durationBest: null == durationBest
          ? _value.durationBest
          : durationBest // ignore: cast_nullable_to_non_nullable
              as int,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderHistoryEntityImpl implements _OrderHistoryEntity {
  const _$OrderHistoryEntityImpl(
      {required this.id,
      required this.createdAt,
      required this.expectedAt,
      required this.startedAt,
      required this.endedAt,
      required this.waitTime,
      required this.isTwoWayTrip,
      required final List<PlaceEntity> waypoints,
      required final List<RideOptionEntity> rideOptions,
      required this.fee,
      required this.currency,
      required this.paymentMethodUnion,
      required this.serviceName,
      required this.serviceDescription,
      required this.serviceImageUrl,
      required this.distanceBest,
      required this.durationBest,
      required this.driver})
      : _waypoints = waypoints,
        _rideOptions = rideOptions;

  factory _$OrderHistoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderHistoryEntityImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime expectedAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final int waitTime;
  @override
  final bool isTwoWayTrip;
  final List<PlaceEntity> _waypoints;
  @override
  List<PlaceEntity> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  final List<RideOptionEntity> _rideOptions;
  @override
  List<RideOptionEntity> get rideOptions {
    if (_rideOptions is EqualUnmodifiableListView) return _rideOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideOptions);
  }

  @override
  final double fee;
  @override
  final String currency;
  @override
  final PaymentMethodUnion paymentMethodUnion;
  @override
  final String serviceName;
  @override
  final String? serviceDescription;
  @override
  final String? serviceImageUrl;
  @override
  final int distanceBest;
  @override
  final int durationBest;
  @override
  final DriverEntity? driver;

  @override
  String toString() {
    return 'OrderCompactEntity(id: $id, createdAt: $createdAt, expectedAt: $expectedAt, startedAt: $startedAt, endedAt: $endedAt, waitTime: $waitTime, isTwoWayTrip: $isTwoWayTrip, waypoints: $waypoints, rideOptions: $rideOptions, fee: $fee, currency: $currency, paymentMethodUnion: $paymentMethodUnion, serviceName: $serviceName, serviceDescription: $serviceDescription, serviceImageUrl: $serviceImageUrl, distanceBest: $distanceBest, durationBest: $durationBest, driver: $driver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderHistoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expectedAt, expectedAt) ||
                other.expectedAt == expectedAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime) &&
            (identical(other.isTwoWayTrip, isTwoWayTrip) ||
                other.isTwoWayTrip == isTwoWayTrip) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            const DeepCollectionEquality()
                .equals(other._rideOptions, _rideOptions) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.paymentMethodUnion, paymentMethodUnion) ||
                other.paymentMethodUnion == paymentMethodUnion) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.serviceDescription, serviceDescription) ||
                other.serviceDescription == serviceDescription) &&
            (identical(other.serviceImageUrl, serviceImageUrl) ||
                other.serviceImageUrl == serviceImageUrl) &&
            (identical(other.distanceBest, distanceBest) ||
                other.distanceBest == distanceBest) &&
            (identical(other.durationBest, durationBest) ||
                other.durationBest == durationBest) &&
            (identical(other.driver, driver) || other.driver == driver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      expectedAt,
      startedAt,
      endedAt,
      waitTime,
      isTwoWayTrip,
      const DeepCollectionEquality().hash(_waypoints),
      const DeepCollectionEquality().hash(_rideOptions),
      fee,
      currency,
      paymentMethodUnion,
      serviceName,
      serviceDescription,
      serviceImageUrl,
      distanceBest,
      durationBest,
      driver);

  /// Create a copy of OrderCompactEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderHistoryEntityImplCopyWith<_$OrderHistoryEntityImpl> get copyWith =>
      __$$OrderHistoryEntityImplCopyWithImpl<_$OrderHistoryEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderHistoryEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderHistoryEntity implements OrderCompactEntity {
  const factory _OrderHistoryEntity(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime expectedAt,
      required final DateTime? startedAt,
      required final DateTime? endedAt,
      required final int waitTime,
      required final bool isTwoWayTrip,
      required final List<PlaceEntity> waypoints,
      required final List<RideOptionEntity> rideOptions,
      required final double fee,
      required final String currency,
      required final PaymentMethodUnion paymentMethodUnion,
      required final String serviceName,
      required final String? serviceDescription,
      required final String? serviceImageUrl,
      required final int distanceBest,
      required final int durationBest,
      required final DriverEntity? driver}) = _$OrderHistoryEntityImpl;

  factory _OrderHistoryEntity.fromJson(Map<String, dynamic> json) =
      _$OrderHistoryEntityImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get expectedAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  int get waitTime;
  @override
  bool get isTwoWayTrip;
  @override
  List<PlaceEntity> get waypoints;
  @override
  List<RideOptionEntity> get rideOptions;
  @override
  double get fee;
  @override
  String get currency;
  @override
  PaymentMethodUnion get paymentMethodUnion;
  @override
  String get serviceName;
  @override
  String? get serviceDescription;
  @override
  String? get serviceImageUrl;
  @override
  int get distanceBest;
  @override
  int get durationBest;
  @override
  DriverEntity? get driver;

  /// Create a copy of OrderCompactEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderHistoryEntityImplCopyWith<_$OrderHistoryEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
