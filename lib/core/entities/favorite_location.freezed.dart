// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteLocationEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  PlaceEntity get place => throw _privateConstructorUsedError;
  AddressType get type => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteLocationEntityCopyWith<FavoriteLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteLocationEntityCopyWith<$Res> {
  factory $FavoriteLocationEntityCopyWith(FavoriteLocationEntity value,
          $Res Function(FavoriteLocationEntity) then) =
      _$FavoriteLocationEntityCopyWithImpl<$Res, FavoriteLocationEntity>;
  @useResult
  $Res call({String id, String name, PlaceEntity place, AddressType type});

  $PlaceEntityCopyWith<$Res> get place;
}

/// @nodoc
class _$FavoriteLocationEntityCopyWithImpl<$Res,
        $Val extends FavoriteLocationEntity>
    implements $FavoriteLocationEntityCopyWith<$Res> {
  _$FavoriteLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? place = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceEntity,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
    ) as $Val);
  }

  /// Create a copy of FavoriteLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceEntityCopyWith<$Res> get place {
    return $PlaceEntityCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteLocationEntityImplCopyWith<$Res>
    implements $FavoriteLocationEntityCopyWith<$Res> {
  factory _$$FavoriteLocationEntityImplCopyWith(
          _$FavoriteLocationEntityImpl value,
          $Res Function(_$FavoriteLocationEntityImpl) then) =
      __$$FavoriteLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, PlaceEntity place, AddressType type});

  @override
  $PlaceEntityCopyWith<$Res> get place;
}

/// @nodoc
class __$$FavoriteLocationEntityImplCopyWithImpl<$Res>
    extends _$FavoriteLocationEntityCopyWithImpl<$Res,
        _$FavoriteLocationEntityImpl>
    implements _$$FavoriteLocationEntityImplCopyWith<$Res> {
  __$$FavoriteLocationEntityImplCopyWithImpl(
      _$FavoriteLocationEntityImpl _value,
      $Res Function(_$FavoriteLocationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? place = null,
    Object? type = null,
  }) {
    return _then(_$FavoriteLocationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceEntity,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
    ));
  }
}

/// @nodoc

class _$FavoriteLocationEntityImpl implements _FavoriteLocationEntity {
  const _$FavoriteLocationEntityImpl(
      {required this.id,
      required this.name,
      required this.place,
      required this.type});

  @override
  final String id;
  @override
  final String name;
  @override
  final PlaceEntity place;
  @override
  final AddressType type;

  @override
  String toString() {
    return 'FavoriteLocationEntity(id: $id, name: $name, place: $place, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteLocationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, place, type);

  /// Create a copy of FavoriteLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteLocationEntityImplCopyWith<_$FavoriteLocationEntityImpl>
      get copyWith => __$$FavoriteLocationEntityImplCopyWithImpl<
          _$FavoriteLocationEntityImpl>(this, _$identity);
}

abstract class _FavoriteLocationEntity implements FavoriteLocationEntity {
  const factory _FavoriteLocationEntity(
      {required final String id,
      required final String name,
      required final PlaceEntity place,
      required final AddressType type}) = _$FavoriteLocationEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  PlaceEntity get place;
  @override
  AddressType get type;

  /// Create a copy of FavoriteLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteLocationEntityImplCopyWith<_$FavoriteLocationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
