// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RideOptionEntity _$RideOptionEntityFromJson(Map<String, dynamic> json) {
  return _RideOptionEntity.fromJson(json);
}

/// @nodoc
mixin _$RideOptionEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  RideOptionIcon get icon => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideOptionEntityCopyWith<RideOptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideOptionEntityCopyWith<$Res> {
  factory $RideOptionEntityCopyWith(
          RideOptionEntity value, $Res Function(RideOptionEntity) then) =
      _$RideOptionEntityCopyWithImpl<$Res, RideOptionEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      RideOptionIcon icon,
      String? description,
      double? price});
}

/// @nodoc
class _$RideOptionEntityCopyWithImpl<$Res, $Val extends RideOptionEntity>
    implements $RideOptionEntityCopyWith<$Res> {
  _$RideOptionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? description = freezed,
    Object? price = freezed,
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
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as RideOptionIcon,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RideOptionEntityImplCopyWith<$Res>
    implements $RideOptionEntityCopyWith<$Res> {
  factory _$$RideOptionEntityImplCopyWith(_$RideOptionEntityImpl value,
          $Res Function(_$RideOptionEntityImpl) then) =
      __$$RideOptionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      RideOptionIcon icon,
      String? description,
      double? price});
}

/// @nodoc
class __$$RideOptionEntityImplCopyWithImpl<$Res>
    extends _$RideOptionEntityCopyWithImpl<$Res, _$RideOptionEntityImpl>
    implements _$$RideOptionEntityImplCopyWith<$Res> {
  __$$RideOptionEntityImplCopyWithImpl(_$RideOptionEntityImpl _value,
      $Res Function(_$RideOptionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? description = freezed,
    Object? price = freezed,
  }) {
    return _then(_$RideOptionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as RideOptionIcon,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RideOptionEntityImpl implements _RideOptionEntity {
  const _$RideOptionEntityImpl(
      {required this.id,
      required this.name,
      required this.icon,
      this.description,
      this.price});

  factory _$RideOptionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RideOptionEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final RideOptionIcon icon;
  @override
  final String? description;
  @override
  final double? price;

  @override
  String toString() {
    return 'RideOptionEntity(id: $id, name: $name, icon: $icon, description: $description, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RideOptionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, icon, description, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RideOptionEntityImplCopyWith<_$RideOptionEntityImpl> get copyWith =>
      __$$RideOptionEntityImplCopyWithImpl<_$RideOptionEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RideOptionEntityImplToJson(
      this,
    );
  }
}

abstract class _RideOptionEntity implements RideOptionEntity {
  const factory _RideOptionEntity(
      {required final String id,
      required final String name,
      required final RideOptionIcon icon,
      final String? description,
      final double? price}) = _$RideOptionEntityImpl;

  factory _RideOptionEntity.fromJson(Map<String, dynamic> json) =
      _$RideOptionEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  RideOptionIcon get icon;
  @override
  String? get description;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$RideOptionEntityImplCopyWith<_$RideOptionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
