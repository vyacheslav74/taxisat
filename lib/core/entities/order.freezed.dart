// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  String get id => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  List<PlaceEntity> get waypoints => throw _privateConstructorUsedError;
  int? get arrivedAtWaypointIndex => throw _privateConstructorUsedError;
  List<LatLngEntity> get rideDirections => throw _privateConstructorUsedError;
  List<LatLngEntity> get driverDirections => throw _privateConstructorUsedError;
  DriverEntity? get driver => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  String get serviceImageUrl => throw _privateConstructorUsedError;
  double get cancellationFee => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  double get costAfterCoupon => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get waitTime => throw _privateConstructorUsedError;
  DateTime? get etaPickup => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get expectedAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime get lastSeenMessagesAt => throw _privateConstructorUsedError;
  PaymentMethodUnion? get paymentMethod => throw _privateConstructorUsedError;
  List<ChatMessageEntity> get chatMessages =>
      throw _privateConstructorUsedError;
  double get walletCredit => throw _privateConstructorUsedError;
  bool get cashPaymentAllowed => throw _privateConstructorUsedError;

  /// Serializes this OrderEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {String id,
      OrderStatus status,
      List<PlaceEntity> waypoints,
      int? arrivedAtWaypointIndex,
      List<LatLngEntity> rideDirections,
      List<LatLngEntity> driverDirections,
      DriverEntity? driver,
      String serviceName,
      String serviceImageUrl,
      double cancellationFee,
      double cost,
      double costAfterCoupon,
      String currency,
      int distance,
      int duration,
      int waitTime,
      DateTime? etaPickup,
      DateTime createdAt,
      DateTime expectedAt,
      DateTime? startedAt,
      DateTime lastSeenMessagesAt,
      PaymentMethodUnion? paymentMethod,
      List<ChatMessageEntity> chatMessages,
      double walletCredit,
      bool cashPaymentAllowed});

  $DriverEntityCopyWith<$Res>? get driver;
  $PaymentMethodUnionCopyWith<$Res>? get paymentMethod;
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? waypoints = null,
    Object? arrivedAtWaypointIndex = freezed,
    Object? rideDirections = null,
    Object? driverDirections = null,
    Object? driver = freezed,
    Object? serviceName = null,
    Object? serviceImageUrl = null,
    Object? cancellationFee = null,
    Object? cost = null,
    Object? costAfterCoupon = null,
    Object? currency = null,
    Object? distance = null,
    Object? duration = null,
    Object? waitTime = null,
    Object? etaPickup = freezed,
    Object? createdAt = null,
    Object? expectedAt = null,
    Object? startedAt = freezed,
    Object? lastSeenMessagesAt = null,
    Object? paymentMethod = freezed,
    Object? chatMessages = null,
    Object? walletCredit = null,
    Object? cashPaymentAllowed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      waypoints: null == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      arrivedAtWaypointIndex: freezed == arrivedAtWaypointIndex
          ? _value.arrivedAtWaypointIndex
          : arrivedAtWaypointIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      rideDirections: null == rideDirections
          ? _value.rideDirections
          : rideDirections // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      driverDirections: null == driverDirections
          ? _value.driverDirections
          : driverDirections // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverEntity?,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceImageUrl: null == serviceImageUrl
          ? _value.serviceImageUrl
          : serviceImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cancellationFee: null == cancellationFee
          ? _value.cancellationFee
          : cancellationFee // ignore: cast_nullable_to_non_nullable
              as double,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      costAfterCoupon: null == costAfterCoupon
          ? _value.costAfterCoupon
          : costAfterCoupon // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int,
      etaPickup: freezed == etaPickup
          ? _value.etaPickup
          : etaPickup // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      lastSeenMessagesAt: null == lastSeenMessagesAt
          ? _value.lastSeenMessagesAt
          : lastSeenMessagesAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion?,
      chatMessages: null == chatMessages
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>,
      walletCredit: null == walletCredit
          ? _value.walletCredit
          : walletCredit // ignore: cast_nullable_to_non_nullable
              as double,
      cashPaymentAllowed: null == cashPaymentAllowed
          ? _value.cashPaymentAllowed
          : cashPaymentAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of OrderEntity
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

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodUnionCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $PaymentMethodUnionCopyWith<$Res>(_value.paymentMethod!, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      OrderStatus status,
      List<PlaceEntity> waypoints,
      int? arrivedAtWaypointIndex,
      List<LatLngEntity> rideDirections,
      List<LatLngEntity> driverDirections,
      DriverEntity? driver,
      String serviceName,
      String serviceImageUrl,
      double cancellationFee,
      double cost,
      double costAfterCoupon,
      String currency,
      int distance,
      int duration,
      int waitTime,
      DateTime? etaPickup,
      DateTime createdAt,
      DateTime expectedAt,
      DateTime? startedAt,
      DateTime lastSeenMessagesAt,
      PaymentMethodUnion? paymentMethod,
      List<ChatMessageEntity> chatMessages,
      double walletCredit,
      bool cashPaymentAllowed});

  @override
  $DriverEntityCopyWith<$Res>? get driver;
  @override
  $PaymentMethodUnionCopyWith<$Res>? get paymentMethod;
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? waypoints = null,
    Object? arrivedAtWaypointIndex = freezed,
    Object? rideDirections = null,
    Object? driverDirections = null,
    Object? driver = freezed,
    Object? serviceName = null,
    Object? serviceImageUrl = null,
    Object? cancellationFee = null,
    Object? cost = null,
    Object? costAfterCoupon = null,
    Object? currency = null,
    Object? distance = null,
    Object? duration = null,
    Object? waitTime = null,
    Object? etaPickup = freezed,
    Object? createdAt = null,
    Object? expectedAt = null,
    Object? startedAt = freezed,
    Object? lastSeenMessagesAt = null,
    Object? paymentMethod = freezed,
    Object? chatMessages = null,
    Object? walletCredit = null,
    Object? cashPaymentAllowed = null,
  }) {
    return _then(_$OrderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      waypoints: null == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      arrivedAtWaypointIndex: freezed == arrivedAtWaypointIndex
          ? _value.arrivedAtWaypointIndex
          : arrivedAtWaypointIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      rideDirections: null == rideDirections
          ? _value._rideDirections
          : rideDirections // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      driverDirections: null == driverDirections
          ? _value._driverDirections
          : driverDirections // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as DriverEntity?,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      serviceImageUrl: null == serviceImageUrl
          ? _value.serviceImageUrl
          : serviceImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      cancellationFee: null == cancellationFee
          ? _value.cancellationFee
          : cancellationFee // ignore: cast_nullable_to_non_nullable
              as double,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      costAfterCoupon: null == costAfterCoupon
          ? _value.costAfterCoupon
          : costAfterCoupon // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int,
      etaPickup: freezed == etaPickup
          ? _value.etaPickup
          : etaPickup // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      lastSeenMessagesAt: null == lastSeenMessagesAt
          ? _value.lastSeenMessagesAt
          : lastSeenMessagesAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion?,
      chatMessages: null == chatMessages
          ? _value._chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>,
      walletCredit: null == walletCredit
          ? _value.walletCredit
          : walletCredit // ignore: cast_nullable_to_non_nullable
              as double,
      cashPaymentAllowed: null == cashPaymentAllowed
          ? _value.cashPaymentAllowed
          : cashPaymentAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEntityImpl extends _OrderEntity {
  const _$OrderEntityImpl(
      {required this.id,
      required this.status,
      required final List<PlaceEntity> waypoints,
      required this.arrivedAtWaypointIndex,
      required final List<LatLngEntity> rideDirections,
      required final List<LatLngEntity> driverDirections,
      required this.driver,
      required this.serviceName,
      required this.serviceImageUrl,
      required this.cancellationFee,
      required this.cost,
      required this.costAfterCoupon,
      required this.currency,
      required this.distance,
      required this.duration,
      required this.waitTime,
      required this.etaPickup,
      required this.createdAt,
      required this.expectedAt,
      required this.startedAt,
      required this.lastSeenMessagesAt,
      required this.paymentMethod,
      required final List<ChatMessageEntity> chatMessages,
      required this.walletCredit,
      required this.cashPaymentAllowed})
      : _waypoints = waypoints,
        _rideDirections = rideDirections,
        _driverDirections = driverDirections,
        _chatMessages = chatMessages,
        super._();

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  final String id;
  @override
  final OrderStatus status;
  final List<PlaceEntity> _waypoints;
  @override
  List<PlaceEntity> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  @override
  final int? arrivedAtWaypointIndex;
  final List<LatLngEntity> _rideDirections;
  @override
  List<LatLngEntity> get rideDirections {
    if (_rideDirections is EqualUnmodifiableListView) return _rideDirections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideDirections);
  }

  final List<LatLngEntity> _driverDirections;
  @override
  List<LatLngEntity> get driverDirections {
    if (_driverDirections is EqualUnmodifiableListView)
      return _driverDirections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_driverDirections);
  }

  @override
  final DriverEntity? driver;
  @override
  final String serviceName;
  @override
  final String serviceImageUrl;
  @override
  final double cancellationFee;
  @override
  final double cost;
  @override
  final double costAfterCoupon;
  @override
  final String currency;
  @override
  final int distance;
  @override
  final int duration;
  @override
  final int waitTime;
  @override
  final DateTime? etaPickup;
  @override
  final DateTime createdAt;
  @override
  final DateTime expectedAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime lastSeenMessagesAt;
  @override
  final PaymentMethodUnion? paymentMethod;
  final List<ChatMessageEntity> _chatMessages;
  @override
  List<ChatMessageEntity> get chatMessages {
    if (_chatMessages is EqualUnmodifiableListView) return _chatMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatMessages);
  }

  @override
  final double walletCredit;
  @override
  final bool cashPaymentAllowed;

  @override
  String toString() {
    return 'OrderEntity(id: $id, status: $status, waypoints: $waypoints, arrivedAtWaypointIndex: $arrivedAtWaypointIndex, rideDirections: $rideDirections, driverDirections: $driverDirections, driver: $driver, serviceName: $serviceName, serviceImageUrl: $serviceImageUrl, cancellationFee: $cancellationFee, cost: $cost, costAfterCoupon: $costAfterCoupon, currency: $currency, distance: $distance, duration: $duration, waitTime: $waitTime, etaPickup: $etaPickup, createdAt: $createdAt, expectedAt: $expectedAt, startedAt: $startedAt, lastSeenMessagesAt: $lastSeenMessagesAt, paymentMethod: $paymentMethod, chatMessages: $chatMessages, walletCredit: $walletCredit, cashPaymentAllowed: $cashPaymentAllowed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.arrivedAtWaypointIndex, arrivedAtWaypointIndex) ||
                other.arrivedAtWaypointIndex == arrivedAtWaypointIndex) &&
            const DeepCollectionEquality()
                .equals(other._rideDirections, _rideDirections) &&
            const DeepCollectionEquality()
                .equals(other._driverDirections, _driverDirections) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.serviceImageUrl, serviceImageUrl) ||
                other.serviceImageUrl == serviceImageUrl) &&
            (identical(other.cancellationFee, cancellationFee) ||
                other.cancellationFee == cancellationFee) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.costAfterCoupon, costAfterCoupon) ||
                other.costAfterCoupon == costAfterCoupon) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime) &&
            (identical(other.etaPickup, etaPickup) ||
                other.etaPickup == etaPickup) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expectedAt, expectedAt) ||
                other.expectedAt == expectedAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.lastSeenMessagesAt, lastSeenMessagesAt) ||
                other.lastSeenMessagesAt == lastSeenMessagesAt) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality()
                .equals(other._chatMessages, _chatMessages) &&
            (identical(other.walletCredit, walletCredit) ||
                other.walletCredit == walletCredit) &&
            (identical(other.cashPaymentAllowed, cashPaymentAllowed) ||
                other.cashPaymentAllowed == cashPaymentAllowed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        const DeepCollectionEquality().hash(_waypoints),
        arrivedAtWaypointIndex,
        const DeepCollectionEquality().hash(_rideDirections),
        const DeepCollectionEquality().hash(_driverDirections),
        driver,
        serviceName,
        serviceImageUrl,
        cancellationFee,
        cost,
        costAfterCoupon,
        currency,
        distance,
        duration,
        waitTime,
        etaPickup,
        createdAt,
        expectedAt,
        startedAt,
        lastSeenMessagesAt,
        paymentMethod,
        const DeepCollectionEquality().hash(_chatMessages),
        walletCredit,
        cashPaymentAllowed
      ]);

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderEntity extends OrderEntity {
  const factory _OrderEntity(
      {required final String id,
      required final OrderStatus status,
      required final List<PlaceEntity> waypoints,
      required final int? arrivedAtWaypointIndex,
      required final List<LatLngEntity> rideDirections,
      required final List<LatLngEntity> driverDirections,
      required final DriverEntity? driver,
      required final String serviceName,
      required final String serviceImageUrl,
      required final double cancellationFee,
      required final double cost,
      required final double costAfterCoupon,
      required final String currency,
      required final int distance,
      required final int duration,
      required final int waitTime,
      required final DateTime? etaPickup,
      required final DateTime createdAt,
      required final DateTime expectedAt,
      required final DateTime? startedAt,
      required final DateTime lastSeenMessagesAt,
      required final PaymentMethodUnion? paymentMethod,
      required final List<ChatMessageEntity> chatMessages,
      required final double walletCredit,
      required final bool cashPaymentAllowed}) = _$OrderEntityImpl;
  const _OrderEntity._() : super._();

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  @override
  String get id;
  @override
  OrderStatus get status;
  @override
  List<PlaceEntity> get waypoints;
  @override
  int? get arrivedAtWaypointIndex;
  @override
  List<LatLngEntity> get rideDirections;
  @override
  List<LatLngEntity> get driverDirections;
  @override
  DriverEntity? get driver;
  @override
  String get serviceName;
  @override
  String get serviceImageUrl;
  @override
  double get cancellationFee;
  @override
  double get cost;
  @override
  double get costAfterCoupon;
  @override
  String get currency;
  @override
  int get distance;
  @override
  int get duration;
  @override
  int get waitTime;
  @override
  DateTime? get etaPickup;
  @override
  DateTime get createdAt;
  @override
  DateTime get expectedAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime get lastSeenMessagesAt;
  @override
  PaymentMethodUnion? get paymentMethod;
  @override
  List<ChatMessageEntity> get chatMessages;
  @override
  double get walletCredit;
  @override
  bool get cashPaymentAllowed;

  /// Create a copy of OrderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
