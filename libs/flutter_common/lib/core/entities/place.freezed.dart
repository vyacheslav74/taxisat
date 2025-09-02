// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceEntity _$PlaceEntityFromJson(Map<String, dynamic> json) {
  return _PlaceEntity.fromJson(json);
}

/// @nodoc
mixin _$PlaceEntity {
  LatLngEntity get coordinates => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceEntityCopyWith<PlaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEntityCopyWith<$Res> {
  factory $PlaceEntityCopyWith(
          PlaceEntity value, $Res Function(PlaceEntity) then) =
      _$PlaceEntityCopyWithImpl<$Res, PlaceEntity>;
  @useResult
  $Res call({LatLngEntity coordinates, String address, String? title});

  $LatLngEntityCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$PlaceEntityCopyWithImpl<$Res, $Val extends PlaceEntity>
    implements $PlaceEntityCopyWith<$Res> {
  _$PlaceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
    Object? address = null,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLngEntity,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LatLngEntityCopyWith<$Res> get coordinates {
    return $LatLngEntityCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceEntityImplCopyWith<$Res>
    implements $PlaceEntityCopyWith<$Res> {
  factory _$$PlaceEntityImplCopyWith(
          _$PlaceEntityImpl value, $Res Function(_$PlaceEntityImpl) then) =
      __$$PlaceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLngEntity coordinates, String address, String? title});

  @override
  $LatLngEntityCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$PlaceEntityImplCopyWithImpl<$Res>
    extends _$PlaceEntityCopyWithImpl<$Res, _$PlaceEntityImpl>
    implements _$$PlaceEntityImplCopyWith<$Res> {
  __$$PlaceEntityImplCopyWithImpl(
      _$PlaceEntityImpl _value, $Res Function(_$PlaceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
    Object? address = null,
    Object? title = freezed,
  }) {
    return _then(_$PlaceEntityImpl(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LatLngEntity,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceEntityImpl implements _PlaceEntity {
  const _$PlaceEntityImpl(
      {required this.coordinates, required this.address, this.title});

  factory _$PlaceEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceEntityImplFromJson(json);

  @override
  final LatLngEntity coordinates;
  @override
  final String address;
  @override
  final String? title;

  @override
  String toString() {
    return 'PlaceEntity(coordinates: $coordinates, address: $address, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceEntityImpl &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, coordinates, address, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceEntityImplCopyWith<_$PlaceEntityImpl> get copyWith =>
      __$$PlaceEntityImplCopyWithImpl<_$PlaceEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceEntityImplToJson(
      this,
    );
  }
}

abstract class _PlaceEntity implements PlaceEntity {
  const factory _PlaceEntity(
      {required final LatLngEntity coordinates,
      required final String address,
      final String? title}) = _$PlaceEntityImpl;

  factory _PlaceEntity.fromJson(Map<String, dynamic> json) =
      _$PlaceEntityImpl.fromJson;

  @override
  LatLngEntity get coordinates;
  @override
  String get address;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$PlaceEntityImplCopyWith<_$PlaceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LatLngEntity _$LatLngEntityFromJson(Map<String, dynamic> json) {
  return _LatLngEntity.fromJson(json);
}

/// @nodoc
mixin _$LatLngEntity {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatLngEntityCopyWith<LatLngEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatLngEntityCopyWith<$Res> {
  factory $LatLngEntityCopyWith(
          LatLngEntity value, $Res Function(LatLngEntity) then) =
      _$LatLngEntityCopyWithImpl<$Res, LatLngEntity>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LatLngEntityCopyWithImpl<$Res, $Val extends LatLngEntity>
    implements $LatLngEntityCopyWith<$Res> {
  _$LatLngEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatLngEntityImplCopyWith<$Res>
    implements $LatLngEntityCopyWith<$Res> {
  factory _$$LatLngEntityImplCopyWith(
          _$LatLngEntityImpl value, $Res Function(_$LatLngEntityImpl) then) =
      __$$LatLngEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$LatLngEntityImplCopyWithImpl<$Res>
    extends _$LatLngEntityCopyWithImpl<$Res, _$LatLngEntityImpl>
    implements _$$LatLngEntityImplCopyWith<$Res> {
  __$$LatLngEntityImplCopyWithImpl(
      _$LatLngEntityImpl _value, $Res Function(_$LatLngEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$LatLngEntityImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatLngEntityImpl implements _LatLngEntity {
  const _$LatLngEntityImpl({required this.lat, required this.lng});

  factory _$LatLngEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatLngEntityImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LatLngEntity(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatLngEntityImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatLngEntityImplCopyWith<_$LatLngEntityImpl> get copyWith =>
      __$$LatLngEntityImplCopyWithImpl<_$LatLngEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatLngEntityImplToJson(
      this,
    );
  }
}

abstract class _LatLngEntity implements LatLngEntity {
  const factory _LatLngEntity(
      {required final double lat,
      required final double lng}) = _$LatLngEntityImpl;

  factory _LatLngEntity.fromJson(Map<String, dynamic> json) =
      _$LatLngEntityImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$$LatLngEntityImplCopyWith<_$LatLngEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
