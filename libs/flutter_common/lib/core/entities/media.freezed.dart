// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaEntity _$MediaEntityFromJson(Map<String, dynamic> json) {
  return _MediaEntity.fromJson(json);
}

/// @nodoc
mixin _$MediaEntity {
  String get id => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaEntityCopyWith<MediaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaEntityCopyWith<$Res> {
  factory $MediaEntityCopyWith(
          MediaEntity value, $Res Function(MediaEntity) then) =
      _$MediaEntityCopyWithImpl<$Res, MediaEntity>;
  @useResult
  $Res call({String id, String address});
}

/// @nodoc
class _$MediaEntityCopyWithImpl<$Res, $Val extends MediaEntity>
    implements $MediaEntityCopyWith<$Res> {
  _$MediaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaEntityImplCopyWith<$Res>
    implements $MediaEntityCopyWith<$Res> {
  factory _$$MediaEntityImplCopyWith(
          _$MediaEntityImpl value, $Res Function(_$MediaEntityImpl) then) =
      __$$MediaEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String address});
}

/// @nodoc
class __$$MediaEntityImplCopyWithImpl<$Res>
    extends _$MediaEntityCopyWithImpl<$Res, _$MediaEntityImpl>
    implements _$$MediaEntityImplCopyWith<$Res> {
  __$$MediaEntityImplCopyWithImpl(
      _$MediaEntityImpl _value, $Res Function(_$MediaEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? address = null,
  }) {
    return _then(_$MediaEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaEntityImpl implements _MediaEntity {
  const _$MediaEntityImpl({required this.id, required this.address});

  factory _$MediaEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String address;

  @override
  String toString() {
    return 'MediaEntity(id: $id, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaEntityImplCopyWith<_$MediaEntityImpl> get copyWith =>
      __$$MediaEntityImplCopyWithImpl<_$MediaEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaEntityImplToJson(
      this,
    );
  }
}

abstract class _MediaEntity implements MediaEntity {
  const factory _MediaEntity(
      {required final String id,
      required final String address}) = _$MediaEntityImpl;

  factory _MediaEntity.fromJson(Map<String, dynamic> json) =
      _$MediaEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$MediaEntityImplCopyWith<_$MediaEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
