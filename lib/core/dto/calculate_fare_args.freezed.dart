// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_fare_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculateFareArgs _$CalculateFareArgsFromJson(Map<String, dynamic> json) {
  return _CalculateFareArgs.fromJson(json);
}

/// @nodoc
mixin _$CalculateFareArgs {
  List<PlaceEntity> get waypoints => throw _privateConstructorUsedError;
  String? get couponCode => throw _privateConstructorUsedError;
  bool get isTwoWay => throw _privateConstructorUsedError;
  int? get waitTime => throw _privateConstructorUsedError;
  List<RideOptionEntity> get rideOptions => throw _privateConstructorUsedError;

  /// Serializes this CalculateFareArgs to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculateFareArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculateFareArgsCopyWith<CalculateFareArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculateFareArgsCopyWith<$Res> {
  factory $CalculateFareArgsCopyWith(
          CalculateFareArgs value, $Res Function(CalculateFareArgs) then) =
      _$CalculateFareArgsCopyWithImpl<$Res, CalculateFareArgs>;
  @useResult
  $Res call(
      {List<PlaceEntity> waypoints,
      String? couponCode,
      bool isTwoWay,
      int? waitTime,
      List<RideOptionEntity> rideOptions});
}

/// @nodoc
class _$CalculateFareArgsCopyWithImpl<$Res, $Val extends CalculateFareArgs>
    implements $CalculateFareArgsCopyWith<$Res> {
  _$CalculateFareArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculateFareArgs
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
abstract class _$$CalculateFareArgsImplCopyWith<$Res>
    implements $CalculateFareArgsCopyWith<$Res> {
  factory _$$CalculateFareArgsImplCopyWith(_$CalculateFareArgsImpl value,
          $Res Function(_$CalculateFareArgsImpl) then) =
      __$$CalculateFareArgsImplCopyWithImpl<$Res>;
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
class __$$CalculateFareArgsImplCopyWithImpl<$Res>
    extends _$CalculateFareArgsCopyWithImpl<$Res, _$CalculateFareArgsImpl>
    implements _$$CalculateFareArgsImplCopyWith<$Res> {
  __$$CalculateFareArgsImplCopyWithImpl(_$CalculateFareArgsImpl _value,
      $Res Function(_$CalculateFareArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculateFareArgs
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
    return _then(_$CalculateFareArgsImpl(
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
@JsonSerializable()
class _$CalculateFareArgsImpl implements _CalculateFareArgs {
  const _$CalculateFareArgsImpl(
      {required final List<PlaceEntity> waypoints,
      required this.couponCode,
      required this.isTwoWay,
      required this.waitTime,
      required final List<RideOptionEntity> rideOptions})
      : _waypoints = waypoints,
        _rideOptions = rideOptions;

  factory _$CalculateFareArgsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculateFareArgsImplFromJson(json);

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
    return 'CalculateFareArgs(waypoints: $waypoints, couponCode: $couponCode, isTwoWay: $isTwoWay, waitTime: $waitTime, rideOptions: $rideOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateFareArgsImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_waypoints),
      couponCode,
      isTwoWay,
      waitTime,
      const DeepCollectionEquality().hash(_rideOptions));

  /// Create a copy of CalculateFareArgs
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateFareArgsImplCopyWith<_$CalculateFareArgsImpl> get copyWith =>
      __$$CalculateFareArgsImplCopyWithImpl<_$CalculateFareArgsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculateFareArgsImplToJson(
      this,
    );
  }
}

abstract class _CalculateFareArgs implements CalculateFareArgs {
  const factory _CalculateFareArgs(
          {required final List<PlaceEntity> waypoints,
          required final String? couponCode,
          required final bool isTwoWay,
          required final int? waitTime,
          required final List<RideOptionEntity> rideOptions}) =
      _$CalculateFareArgsImpl;

  factory _CalculateFareArgs.fromJson(Map<String, dynamic> json) =
      _$CalculateFareArgsImpl.fromJson;

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

  /// Create a copy of CalculateFareArgs
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculateFareArgsImplCopyWith<_$CalculateFareArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
