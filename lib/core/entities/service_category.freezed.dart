// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceCategoryEntity _$ServiceCategoryEntityFromJson(
    Map<String, dynamic> json) {
  return _ServiceCategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$ServiceCategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ServiceEntity> get services => throw _privateConstructorUsedError;

  /// Serializes this ServiceCategoryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCategoryEntityCopyWith<ServiceCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCategoryEntityCopyWith<$Res> {
  factory $ServiceCategoryEntityCopyWith(ServiceCategoryEntity value,
          $Res Function(ServiceCategoryEntity) then) =
      _$ServiceCategoryEntityCopyWithImpl<$Res, ServiceCategoryEntity>;
  @useResult
  $Res call({String id, String name, List<ServiceEntity> services});
}

/// @nodoc
class _$ServiceCategoryEntityCopyWithImpl<$Res,
        $Val extends ServiceCategoryEntity>
    implements $ServiceCategoryEntityCopyWith<$Res> {
  _$ServiceCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? services = null,
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
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceCategoryEntityImplCopyWith<$Res>
    implements $ServiceCategoryEntityCopyWith<$Res> {
  factory _$$ServiceCategoryEntityImplCopyWith(
          _$ServiceCategoryEntityImpl value,
          $Res Function(_$ServiceCategoryEntityImpl) then) =
      __$$ServiceCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<ServiceEntity> services});
}

/// @nodoc
class __$$ServiceCategoryEntityImplCopyWithImpl<$Res>
    extends _$ServiceCategoryEntityCopyWithImpl<$Res,
        _$ServiceCategoryEntityImpl>
    implements _$$ServiceCategoryEntityImplCopyWith<$Res> {
  __$$ServiceCategoryEntityImplCopyWithImpl(_$ServiceCategoryEntityImpl _value,
      $Res Function(_$ServiceCategoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? services = null,
  }) {
    return _then(_$ServiceCategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceCategoryEntityImpl implements _ServiceCategoryEntity {
  const _$ServiceCategoryEntityImpl(
      {required this.id,
      required this.name,
      required final List<ServiceEntity> services})
      : _services = services;

  factory _$ServiceCategoryEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceCategoryEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<ServiceEntity> _services;
  @override
  List<ServiceEntity> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'ServiceCategoryEntity(id: $id, name: $name, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_services));

  /// Create a copy of ServiceCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCategoryEntityImplCopyWith<_$ServiceCategoryEntityImpl>
      get copyWith => __$$ServiceCategoryEntityImplCopyWithImpl<
          _$ServiceCategoryEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceCategoryEntityImplToJson(
      this,
    );
  }
}

abstract class _ServiceCategoryEntity implements ServiceCategoryEntity {
  const factory _ServiceCategoryEntity(
          {required final String id,
          required final String name,
          required final List<ServiceEntity> services}) =
      _$ServiceCategoryEntityImpl;

  factory _ServiceCategoryEntity.fromJson(Map<String, dynamic> json) =
      _$ServiceCategoryEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<ServiceEntity> get services;

  /// Create a copy of ServiceCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceCategoryEntityImplCopyWith<_$ServiceCategoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
