// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CancelReasonEntity _$CancelReasonEntityFromJson(Map<String, dynamic> json) {
  return _CancelReasonEntity.fromJson(json);
}

/// @nodoc
mixin _$CancelReasonEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelReasonEntityCopyWith<CancelReasonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelReasonEntityCopyWith<$Res> {
  factory $CancelReasonEntityCopyWith(
          CancelReasonEntity value, $Res Function(CancelReasonEntity) then) =
      _$CancelReasonEntityCopyWithImpl<$Res, CancelReasonEntity>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$CancelReasonEntityCopyWithImpl<$Res, $Val extends CancelReasonEntity>
    implements $CancelReasonEntityCopyWith<$Res> {
  _$CancelReasonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelReasonEntityImplCopyWith<$Res>
    implements $CancelReasonEntityCopyWith<$Res> {
  factory _$$CancelReasonEntityImplCopyWith(_$CancelReasonEntityImpl value,
          $Res Function(_$CancelReasonEntityImpl) then) =
      __$$CancelReasonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$CancelReasonEntityImplCopyWithImpl<$Res>
    extends _$CancelReasonEntityCopyWithImpl<$Res, _$CancelReasonEntityImpl>
    implements _$$CancelReasonEntityImplCopyWith<$Res> {
  __$$CancelReasonEntityImplCopyWithImpl(_$CancelReasonEntityImpl _value,
      $Res Function(_$CancelReasonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CancelReasonEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelReasonEntityImpl implements _CancelReasonEntity {
  const _$CancelReasonEntityImpl({required this.id, required this.name});

  factory _$CancelReasonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelReasonEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'CancelReasonEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelReasonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelReasonEntityImplCopyWith<_$CancelReasonEntityImpl> get copyWith =>
      __$$CancelReasonEntityImplCopyWithImpl<_$CancelReasonEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelReasonEntityImplToJson(
      this,
    );
  }
}

abstract class _CancelReasonEntity implements CancelReasonEntity {
  const factory _CancelReasonEntity(
      {required final String id,
      required final String name}) = _$CancelReasonEntityImpl;

  factory _CancelReasonEntity.fromJson(Map<String, dynamic> json) =
      _$CancelReasonEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CancelReasonEntityImplCopyWith<_$CancelReasonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
