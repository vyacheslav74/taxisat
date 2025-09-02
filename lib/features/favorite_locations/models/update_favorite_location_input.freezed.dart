// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_favorite_location_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateFavoriteLocationInput {
  String get name => throw _privateConstructorUsedError;
  AddressType get type => throw _privateConstructorUsedError;
  PlaceEntity get place => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFavoriteLocationInputCopyWith<UpdateFavoriteLocationInput>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFavoriteLocationInputCopyWith<$Res> {
  factory $UpdateFavoriteLocationInputCopyWith(
          UpdateFavoriteLocationInput value,
          $Res Function(UpdateFavoriteLocationInput) then) =
      _$UpdateFavoriteLocationInputCopyWithImpl<$Res,
          UpdateFavoriteLocationInput>;
  @useResult
  $Res call({String name, AddressType type, PlaceEntity place});

  $PlaceEntityCopyWith<$Res> get place;
}

/// @nodoc
class _$UpdateFavoriteLocationInputCopyWithImpl<$Res,
        $Val extends UpdateFavoriteLocationInput>
    implements $UpdateFavoriteLocationInputCopyWith<$Res> {
  _$UpdateFavoriteLocationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? place = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceEntity,
    ) as $Val);
  }

  /// Create a copy of UpdateFavoriteLocationInput
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
abstract class _$$UpdateFavoriteLocationInputImplCopyWith<$Res>
    implements $UpdateFavoriteLocationInputCopyWith<$Res> {
  factory _$$UpdateFavoriteLocationInputImplCopyWith(
          _$UpdateFavoriteLocationInputImpl value,
          $Res Function(_$UpdateFavoriteLocationInputImpl) then) =
      __$$UpdateFavoriteLocationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, AddressType type, PlaceEntity place});

  @override
  $PlaceEntityCopyWith<$Res> get place;
}

/// @nodoc
class __$$UpdateFavoriteLocationInputImplCopyWithImpl<$Res>
    extends _$UpdateFavoriteLocationInputCopyWithImpl<$Res,
        _$UpdateFavoriteLocationInputImpl>
    implements _$$UpdateFavoriteLocationInputImplCopyWith<$Res> {
  __$$UpdateFavoriteLocationInputImplCopyWithImpl(
      _$UpdateFavoriteLocationInputImpl _value,
      $Res Function(_$UpdateFavoriteLocationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? place = null,
  }) {
    return _then(_$UpdateFavoriteLocationInputImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceEntity,
    ));
  }
}

/// @nodoc

class _$UpdateFavoriteLocationInputImpl extends _UpdateFavoriteLocationInput {
  const _$UpdateFavoriteLocationInputImpl(
      {required this.name, required this.type, required this.place})
      : super._();

  @override
  final String name;
  @override
  final AddressType type;
  @override
  final PlaceEntity place;

  @override
  String toString() {
    return 'UpdateFavoriteLocationInput(name: $name, type: $type, place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFavoriteLocationInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type, place);

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFavoriteLocationInputImplCopyWith<_$UpdateFavoriteLocationInputImpl>
      get copyWith => __$$UpdateFavoriteLocationInputImplCopyWithImpl<
          _$UpdateFavoriteLocationInputImpl>(this, _$identity);
}

abstract class _UpdateFavoriteLocationInput
    extends UpdateFavoriteLocationInput {
  const factory _UpdateFavoriteLocationInput(
      {required final String name,
      required final AddressType type,
      required final PlaceEntity place}) = _$UpdateFavoriteLocationInputImpl;
  const _UpdateFavoriteLocationInput._() : super._();

  @override
  String get name;
  @override
  AddressType get type;
  @override
  PlaceEntity get place;

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFavoriteLocationInputImplCopyWith<_$UpdateFavoriteLocationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
