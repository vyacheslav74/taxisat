// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_order_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewOrderArgs _$NewOrderArgsFromJson(Map<String, dynamic> json) {
  return _NewOrderArgs.fromJson(json);
}

/// @nodoc
mixin _$NewOrderArgs {
  List<PlaceEntity> get waypoints => throw _privateConstructorUsedError;
  String? get couponCode => throw _privateConstructorUsedError;
  bool get isTwoWay => throw _privateConstructorUsedError;
  int get waitTime => throw _privateConstructorUsedError;
  List<RideOptionEntity> get rideOptions => throw _privateConstructorUsedError;
  PaymentMethodUnion get paymentMethod => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  String? get serviceId => throw _privateConstructorUsedError;

  /// Serializes this NewOrderArgs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewOrderArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewOrderArgsCopyWith<NewOrderArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOrderArgsCopyWith<$Res> {
  factory $NewOrderArgsCopyWith(
          NewOrderArgs value, $Res Function(NewOrderArgs) then) =
      _$NewOrderArgsCopyWithImpl<$Res, NewOrderArgs>;
  @useResult
  $Res call(
      {List<PlaceEntity> waypoints,
      String? couponCode,
      bool isTwoWay,
      int waitTime,
      List<RideOptionEntity> rideOptions,
      PaymentMethodUnion paymentMethod,
      DateTime? dateTime,
      String? serviceId});

  $PaymentMethodUnionCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$NewOrderArgsCopyWithImpl<$Res, $Val extends NewOrderArgs>
    implements $NewOrderArgsCopyWith<$Res> {
  _$NewOrderArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewOrderArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypoints = null,
    Object? couponCode = freezed,
    Object? isTwoWay = null,
    Object? waitTime = null,
    Object? rideOptions = null,
    Object? paymentMethod = null,
    Object? dateTime = freezed,
    Object? serviceId = freezed,
  }) {
    return _then(_value.copyWith(
      waypoints: null == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isTwoWay: null == isTwoWay
          ? _value.isTwoWay
          : isTwoWay // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int,
      rideOptions: null == rideOptions
          ? _value.rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of NewOrderArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodUnionCopyWith<$Res> get paymentMethod {
    return $PaymentMethodUnionCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewOrderArgsImplCopyWith<$Res>
    implements $NewOrderArgsCopyWith<$Res> {
  factory _$$NewOrderArgsImplCopyWith(
          _$NewOrderArgsImpl value, $Res Function(_$NewOrderArgsImpl) then) =
      __$$NewOrderArgsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlaceEntity> waypoints,
      String? couponCode,
      bool isTwoWay,
      int waitTime,
      List<RideOptionEntity> rideOptions,
      PaymentMethodUnion paymentMethod,
      DateTime? dateTime,
      String? serviceId});

  @override
  $PaymentMethodUnionCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$NewOrderArgsImplCopyWithImpl<$Res>
    extends _$NewOrderArgsCopyWithImpl<$Res, _$NewOrderArgsImpl>
    implements _$$NewOrderArgsImplCopyWith<$Res> {
  __$$NewOrderArgsImplCopyWithImpl(
      _$NewOrderArgsImpl _value, $Res Function(_$NewOrderArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewOrderArgs
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypoints = null,
    Object? couponCode = freezed,
    Object? isTwoWay = null,
    Object? waitTime = null,
    Object? rideOptions = null,
    Object? paymentMethod = null,
    Object? dateTime = freezed,
    Object? serviceId = freezed,
  }) {
    return _then(_$NewOrderArgsImpl(
      waypoints: null == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isTwoWay: null == isTwoWay
          ? _value.isTwoWay
          : isTwoWay // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTime: null == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int,
      rideOptions: null == rideOptions
          ? _value._rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewOrderArgsImpl implements _NewOrderArgs {
  const _$NewOrderArgsImpl(
      {required final List<PlaceEntity> waypoints,
      required this.couponCode,
      required this.isTwoWay,
      required this.waitTime,
      required final List<RideOptionEntity> rideOptions,
      required this.paymentMethod,
      required this.dateTime,
      required this.serviceId})
      : _waypoints = waypoints,
        _rideOptions = rideOptions;

  factory _$NewOrderArgsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewOrderArgsImplFromJson(json);

  final List<PlaceEntity> _waypoints;
  @override
  List<PlaceEntity> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  @override
  final String? couponCode;
  @override
  final bool isTwoWay;
  @override
  final int waitTime;
  final List<RideOptionEntity> _rideOptions;
  @override
  List<RideOptionEntity> get rideOptions {
    if (_rideOptions is EqualUnmodifiableListView) return _rideOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideOptions);
  }

  @override
  final PaymentMethodUnion paymentMethod;
  @override
  final DateTime? dateTime;
  @override
  final String? serviceId;

  @override
  String toString() {
    return 'NewOrderArgs(waypoints: $waypoints, couponCode: $couponCode, isTwoWay: $isTwoWay, waitTime: $waitTime, rideOptions: $rideOptions, paymentMethod: $paymentMethod, dateTime: $dateTime, serviceId: $serviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOrderArgsImpl &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.isTwoWay, isTwoWay) ||
                other.isTwoWay == isTwoWay) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime) &&
            const DeepCollectionEquality()
                .equals(other._rideOptions, _rideOptions) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_waypoints),
      couponCode,
      isTwoWay,
      waitTime,
      const DeepCollectionEquality().hash(_rideOptions),
      paymentMethod,
      dateTime,
      serviceId);

  /// Create a copy of NewOrderArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewOrderArgsImplCopyWith<_$NewOrderArgsImpl> get copyWith =>
      __$$NewOrderArgsImplCopyWithImpl<_$NewOrderArgsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewOrderArgsImplToJson(
      this,
    );
  }
}

abstract class _NewOrderArgs implements NewOrderArgs {
  const factory _NewOrderArgs(
      {required final List<PlaceEntity> waypoints,
      required final String? couponCode,
      required final bool isTwoWay,
      required final int waitTime,
      required final List<RideOptionEntity> rideOptions,
      required final PaymentMethodUnion paymentMethod,
      required final DateTime? dateTime,
      required final String? serviceId}) = _$NewOrderArgsImpl;

  factory _NewOrderArgs.fromJson(Map<String, dynamic> json) =
      _$NewOrderArgsImpl.fromJson;

  @override
  List<PlaceEntity> get waypoints;
  @override
  String? get couponCode;
  @override
  bool get isTwoWay;
  @override
  int get waitTime;
  @override
  List<RideOptionEntity> get rideOptions;
  @override
  PaymentMethodUnion get paymentMethod;
  @override
  DateTime? get dateTime;
  @override
  String? get serviceId;

  /// Create a copy of NewOrderArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewOrderArgsImplCopyWith<_$NewOrderArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
