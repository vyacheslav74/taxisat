// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnouncementEntity _$AnnouncementEntityFromJson(Map<String, dynamic> json) {
  return _AnnouncementEntity.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementEntityCopyWith<AnnouncementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementEntityCopyWith<$Res> {
  factory $AnnouncementEntityCopyWith(
          AnnouncementEntity value, $Res Function(AnnouncementEntity) then) =
      _$AnnouncementEntityCopyWithImpl<$Res, AnnouncementEntity>;
  @useResult
  $Res call({String id, String title, String description, String? url});
}

/// @nodoc
class _$AnnouncementEntityCopyWithImpl<$Res, $Val extends AnnouncementEntity>
    implements $AnnouncementEntityCopyWith<$Res> {
  _$AnnouncementEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementEntityImplCopyWith<$Res>
    implements $AnnouncementEntityCopyWith<$Res> {
  factory _$$AnnouncementEntityImplCopyWith(_$AnnouncementEntityImpl value,
          $Res Function(_$AnnouncementEntityImpl) then) =
      __$$AnnouncementEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description, String? url});
}

/// @nodoc
class __$$AnnouncementEntityImplCopyWithImpl<$Res>
    extends _$AnnouncementEntityCopyWithImpl<$Res, _$AnnouncementEntityImpl>
    implements _$$AnnouncementEntityImplCopyWith<$Res> {
  __$$AnnouncementEntityImplCopyWithImpl(_$AnnouncementEntityImpl _value,
      $Res Function(_$AnnouncementEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? url = freezed,
  }) {
    return _then(_$AnnouncementEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementEntityImpl implements _AnnouncementEntity {
  const _$AnnouncementEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.url});

  factory _$AnnouncementEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? url;

  @override
  String toString() {
    return 'AnnouncementEntity(id: $id, title: $title, description: $description, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, url);

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementEntityImplCopyWith<_$AnnouncementEntityImpl> get copyWith =>
      __$$AnnouncementEntityImplCopyWithImpl<_$AnnouncementEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementEntityImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementEntity implements AnnouncementEntity {
  const factory _AnnouncementEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final String? url}) = _$AnnouncementEntityImpl;

  factory _AnnouncementEntity.fromJson(Map<String, dynamic> json) =
      _$AnnouncementEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get url;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementEntityImplCopyWith<_$AnnouncementEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
