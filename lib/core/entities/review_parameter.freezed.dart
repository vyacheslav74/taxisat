// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewParameterEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isGood => throw _privateConstructorUsedError;

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewParameterEntityCopyWith<ReviewParameterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewParameterEntityCopyWith<$Res> {
  factory $ReviewParameterEntityCopyWith(ReviewParameterEntity value,
          $Res Function(ReviewParameterEntity) then) =
      _$ReviewParameterEntityCopyWithImpl<$Res, ReviewParameterEntity>;
  @useResult
  $Res call({String id, String name, bool isGood});
}

/// @nodoc
class _$ReviewParameterEntityCopyWithImpl<$Res,
        $Val extends ReviewParameterEntity>
    implements $ReviewParameterEntityCopyWith<$Res> {
  _$ReviewParameterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isGood = null,
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
      isGood: null == isGood
          ? _value.isGood
          : isGood // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewParameterEntityImplCopyWith<$Res>
    implements $ReviewParameterEntityCopyWith<$Res> {
  factory _$$ReviewParameterEntityImplCopyWith(
          _$ReviewParameterEntityImpl value,
          $Res Function(_$ReviewParameterEntityImpl) then) =
      __$$ReviewParameterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, bool isGood});
}

/// @nodoc
class __$$ReviewParameterEntityImplCopyWithImpl<$Res>
    extends _$ReviewParameterEntityCopyWithImpl<$Res,
        _$ReviewParameterEntityImpl>
    implements _$$ReviewParameterEntityImplCopyWith<$Res> {
  __$$ReviewParameterEntityImplCopyWithImpl(_$ReviewParameterEntityImpl _value,
      $Res Function(_$ReviewParameterEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isGood = null,
  }) {
    return _then(_$ReviewParameterEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isGood: null == isGood
          ? _value.isGood
          : isGood // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReviewParameterEntityImpl implements _ReviewParameterEntity {
  const _$ReviewParameterEntityImpl(
      {required this.id, required this.name, required this.isGood});

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isGood;

  @override
  String toString() {
    return 'ReviewParameterEntity(id: $id, name: $name, isGood: $isGood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewParameterEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isGood, isGood) || other.isGood == isGood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isGood);

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewParameterEntityImplCopyWith<_$ReviewParameterEntityImpl>
      get copyWith => __$$ReviewParameterEntityImplCopyWithImpl<
          _$ReviewParameterEntityImpl>(this, _$identity);
}

abstract class _ReviewParameterEntity implements ReviewParameterEntity {
  const factory _ReviewParameterEntity(
      {required final String id,
      required final String name,
      required final bool isGood}) = _$ReviewParameterEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isGood;

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewParameterEntityImplCopyWith<_$ReviewParameterEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
