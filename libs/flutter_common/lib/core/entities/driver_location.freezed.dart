// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DriverLocation _$DriverLocationFromJson(Map<String, dynamic> json) {
  return _DriverLocation.fromJson(json);
}

/// @nodoc
mixin _$DriverLocation {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  int? get rotation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverLocationCopyWith<DriverLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLocationCopyWith<$Res> {
  factory $DriverLocationCopyWith(
          DriverLocation value, $Res Function(DriverLocation) then) =
      _$DriverLocationCopyWithImpl<$Res, DriverLocation>;
  @useResult
  $Res call({double lat, double lng, int? rotation});
}

/// @nodoc
class _$DriverLocationCopyWithImpl<$Res, $Val extends DriverLocation>
    implements $DriverLocationCopyWith<$Res> {
  _$DriverLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? rotation = freezed,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      rotation: freezed == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverLocationImplCopyWith<$Res>
    implements $DriverLocationCopyWith<$Res> {
  factory _$$DriverLocationImplCopyWith(_$DriverLocationImpl value,
          $Res Function(_$DriverLocationImpl) then) =
      __$$DriverLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng, int? rotation});
}

/// @nodoc
class __$$DriverLocationImplCopyWithImpl<$Res>
    extends _$DriverLocationCopyWithImpl<$Res, _$DriverLocationImpl>
    implements _$$DriverLocationImplCopyWith<$Res> {
  __$$DriverLocationImplCopyWithImpl(
      _$DriverLocationImpl _value, $Res Function(_$DriverLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? rotation = freezed,
  }) {
    return _then(_$DriverLocationImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      rotation: freezed == rotation
          ? _value.rotation
          : rotation // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverLocationImpl extends _DriverLocation {
  const _$DriverLocationImpl(
      {required this.lat, required this.lng, required this.rotation})
      : super._();

  factory _$DriverLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverLocationImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final int? rotation;

  @override
  String toString() {
    return 'DriverLocation(lat: $lat, lng: $lng, rotation: $rotation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverLocationImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.rotation, rotation) ||
                other.rotation == rotation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng, rotation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverLocationImplCopyWith<_$DriverLocationImpl> get copyWith =>
      __$$DriverLocationImplCopyWithImpl<_$DriverLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverLocationImplToJson(
      this,
    );
  }
}

abstract class _DriverLocation extends DriverLocation {
  const factory _DriverLocation(
      {required final double lat,
      required final double lng,
      required final int? rotation}) = _$DriverLocationImpl;
  const _DriverLocation._() : super._();

  factory _DriverLocation.fromJson(Map<String, dynamic> json) =
      _$DriverLocationImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  int? get rotation;
  @override
  @JsonKey(ignore: true)
  _$$DriverLocationImplCopyWith<_$DriverLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
