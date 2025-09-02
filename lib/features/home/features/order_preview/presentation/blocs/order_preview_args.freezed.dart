// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_preview_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPreviewArgsState {
  List<PlaceEntity> get waypoints => throw _privateConstructorUsedError;
  String? get couponCode => throw _privateConstructorUsedError;
  bool get isTwoWay => throw _privateConstructorUsedError;
  int? get waitTime => throw _privateConstructorUsedError;
  List<RideOptionEntity> get rideOptions => throw _privateConstructorUsedError;

  /// Create a copy of OrderPreviewArgsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPreviewArgsStateCopyWith<OrderPreviewArgsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPreviewArgsStateCopyWith<$Res> {
  factory $OrderPreviewArgsStateCopyWith(OrderPreviewArgsState value,
          $Res Function(OrderPreviewArgsState) then) =
      _$OrderPreviewArgsStateCopyWithImpl<$Res, OrderPreviewArgsState>;
  @useResult
  $Res call(
      {List<PlaceEntity> waypoints,
      String? couponCode,
      bool isTwoWay,
      int? waitTime,
      List<RideOptionEntity> rideOptions});
}

/// @nodoc
class _$OrderPreviewArgsStateCopyWithImpl<$Res,
        $Val extends OrderPreviewArgsState>
    implements $OrderPreviewArgsStateCopyWith<$Res> {
  _$OrderPreviewArgsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPreviewArgsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypoints = null,
    Object? couponCode = freezed,
    Object? isTwoWay = null,
    Object? waitTime = freezed,
    Object? rideOptions = null,
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
      waitTime: freezed == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      rideOptions: null == rideOptions
          ? _value.rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPreviewArgsStateImplCopyWith<$Res>
    implements $OrderPreviewArgsStateCopyWith<$Res> {
  factory _$$OrderPreviewArgsStateImplCopyWith(
          _$OrderPreviewArgsStateImpl value,
          $Res Function(_$OrderPreviewArgsStateImpl) then) =
      __$$OrderPreviewArgsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PlaceEntity> waypoints,
      String? couponCode,
      bool isTwoWay,
      int? waitTime,
      List<RideOptionEntity> rideOptions});
}

/// @nodoc
class __$$OrderPreviewArgsStateImplCopyWithImpl<$Res>
    extends _$OrderPreviewArgsStateCopyWithImpl<$Res,
        _$OrderPreviewArgsStateImpl>
    implements _$$OrderPreviewArgsStateImplCopyWith<$Res> {
  __$$OrderPreviewArgsStateImplCopyWithImpl(_$OrderPreviewArgsStateImpl _value,
      $Res Function(_$OrderPreviewArgsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPreviewArgsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waypoints = null,
    Object? couponCode = freezed,
    Object? isTwoWay = null,
    Object? waitTime = freezed,
    Object? rideOptions = null,
  }) {
    return _then(_$OrderPreviewArgsStateImpl(
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
      waitTime: freezed == waitTime
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      rideOptions: null == rideOptions
          ? _value._rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
    ));
  }
}

/// @nodoc

class _$OrderPreviewArgsStateImpl extends _OrderPreviewArgsState {
  const _$OrderPreviewArgsStateImpl(
      {required final List<PlaceEntity> waypoints,
      required this.couponCode,
      required this.isTwoWay,
      required this.waitTime,
      required final List<RideOptionEntity> rideOptions})
      : _waypoints = waypoints,
        _rideOptions = rideOptions,
        super._();

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
  final int? waitTime;
  final List<RideOptionEntity> _rideOptions;
  @override
  List<RideOptionEntity> get rideOptions {
    if (_rideOptions is EqualUnmodifiableListView) return _rideOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideOptions);
  }

  @override
  String toString() {
    return 'OrderPreviewArgsState(waypoints: $waypoints, couponCode: $couponCode, isTwoWay: $isTwoWay, waitTime: $waitTime, rideOptions: $rideOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPreviewArgsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.isTwoWay, isTwoWay) ||
                other.isTwoWay == isTwoWay) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime) &&
            const DeepCollectionEquality()
                .equals(other._rideOptions, _rideOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_waypoints),
      couponCode,
      isTwoWay,
      waitTime,
      const DeepCollectionEquality().hash(_rideOptions));

  /// Create a copy of OrderPreviewArgsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPreviewArgsStateImplCopyWith<_$OrderPreviewArgsStateImpl>
      get copyWith => __$$OrderPreviewArgsStateImplCopyWithImpl<
          _$OrderPreviewArgsStateImpl>(this, _$identity);
}

abstract class _OrderPreviewArgsState extends OrderPreviewArgsState {
  const factory _OrderPreviewArgsState(
          {required final List<PlaceEntity> waypoints,
          required final String? couponCode,
          required final bool isTwoWay,
          required final int? waitTime,
          required final List<RideOptionEntity> rideOptions}) =
      _$OrderPreviewArgsStateImpl;
  const _OrderPreviewArgsState._() : super._();

  @override
  List<PlaceEntity> get waypoints;
  @override
  String? get couponCode;
  @override
  bool get isTwoWay;
  @override
  int? get waitTime;
  @override
  List<RideOptionEntity> get rideOptions;

  /// Create a copy of OrderPreviewArgsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPreviewArgsStateImplCopyWith<_$OrderPreviewArgsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
