// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessageEntity _$ChatMessageEntityFromJson(Map<String, dynamic> json) {
  return _ChatMessageEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageEntity {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSender => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageEntityCopyWith<ChatMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEntityCopyWith<$Res> {
  factory $ChatMessageEntityCopyWith(
          ChatMessageEntity value, $Res Function(ChatMessageEntity) then) =
      _$ChatMessageEntityCopyWithImpl<$Res, ChatMessageEntity>;
  @useResult
  $Res call({String id, String message, bool isSender, DateTime createdAt});
}

/// @nodoc
class _$ChatMessageEntityCopyWithImpl<$Res, $Val extends ChatMessageEntity>
    implements $ChatMessageEntityCopyWith<$Res> {
  _$ChatMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? isSender = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageEntityImplCopyWith<$Res>
    implements $ChatMessageEntityCopyWith<$Res> {
  factory _$$ChatMessageEntityImplCopyWith(_$ChatMessageEntityImpl value,
          $Res Function(_$ChatMessageEntityImpl) then) =
      __$$ChatMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String message, bool isSender, DateTime createdAt});
}

/// @nodoc
class __$$ChatMessageEntityImplCopyWithImpl<$Res>
    extends _$ChatMessageEntityCopyWithImpl<$Res, _$ChatMessageEntityImpl>
    implements _$$ChatMessageEntityImplCopyWith<$Res> {
  __$$ChatMessageEntityImplCopyWithImpl(_$ChatMessageEntityImpl _value,
      $Res Function(_$ChatMessageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? isSender = null,
    Object? createdAt = null,
  }) {
    return _then(_$ChatMessageEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageEntityImpl implements _ChatMessageEntity {
  const _$ChatMessageEntityImpl(
      {required this.id,
      required this.message,
      required this.isSender,
      required this.createdAt});

  factory _$ChatMessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String message;
  @override
  final bool isSender;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ChatMessageEntity(id: $id, message: $message, isSender: $isSender, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSender, isSender) ||
                other.isSender == isSender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, message, isSender, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageEntityImplCopyWith<_$ChatMessageEntityImpl> get copyWith =>
      __$$ChatMessageEntityImplCopyWithImpl<_$ChatMessageEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageEntityImplToJson(
      this,
    );
  }
}

abstract class _ChatMessageEntity implements ChatMessageEntity {
  const factory _ChatMessageEntity(
      {required final String id,
      required final String message,
      required final bool isSender,
      required final DateTime createdAt}) = _$ChatMessageEntityImpl;

  factory _ChatMessageEntity.fromJson(Map<String, dynamic> json) =
      _$ChatMessageEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  bool get isSender;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageEntityImplCopyWith<_$ChatMessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
