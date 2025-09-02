// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_gateway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentGatewayEntity _$PaymentGatewayEntityFromJson(Map<String, dynamic> json) {
  return _PaymentGatewayEntity.fromJson(json);
}

/// @nodoc
mixin _$PaymentGatewayEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  GatewayLinkMethod get linkMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentGatewayEntityCopyWith<PaymentGatewayEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentGatewayEntityCopyWith<$Res> {
  factory $PaymentGatewayEntityCopyWith(PaymentGatewayEntity value,
          $Res Function(PaymentGatewayEntity) then) =
      _$PaymentGatewayEntityCopyWithImpl<$Res, PaymentGatewayEntity>;
  @useResult
  $Res call(
      {String id, String name, String? logoUrl, GatewayLinkMethod linkMethod});
}

/// @nodoc
class _$PaymentGatewayEntityCopyWithImpl<$Res,
        $Val extends PaymentGatewayEntity>
    implements $PaymentGatewayEntityCopyWith<$Res> {
  _$PaymentGatewayEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = freezed,
    Object? linkMethod = null,
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
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      linkMethod: null == linkMethod
          ? _value.linkMethod
          : linkMethod // ignore: cast_nullable_to_non_nullable
              as GatewayLinkMethod,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentGatewayEntityImplCopyWith<$Res>
    implements $PaymentGatewayEntityCopyWith<$Res> {
  factory _$$PaymentGatewayEntityImplCopyWith(_$PaymentGatewayEntityImpl value,
          $Res Function(_$PaymentGatewayEntityImpl) then) =
      __$$PaymentGatewayEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String? logoUrl, GatewayLinkMethod linkMethod});
}

/// @nodoc
class __$$PaymentGatewayEntityImplCopyWithImpl<$Res>
    extends _$PaymentGatewayEntityCopyWithImpl<$Res, _$PaymentGatewayEntityImpl>
    implements _$$PaymentGatewayEntityImplCopyWith<$Res> {
  __$$PaymentGatewayEntityImplCopyWithImpl(_$PaymentGatewayEntityImpl _value,
      $Res Function(_$PaymentGatewayEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = freezed,
    Object? linkMethod = null,
  }) {
    return _then(_$PaymentGatewayEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      linkMethod: null == linkMethod
          ? _value.linkMethod
          : linkMethod // ignore: cast_nullable_to_non_nullable
              as GatewayLinkMethod,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentGatewayEntityImpl implements _PaymentGatewayEntity {
  const _$PaymentGatewayEntityImpl(
      {required this.id,
      required this.name,
      required this.logoUrl,
      required this.linkMethod});

  factory _$PaymentGatewayEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentGatewayEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? logoUrl;
  @override
  final GatewayLinkMethod linkMethod;

  @override
  String toString() {
    return 'PaymentGatewayEntity(id: $id, name: $name, logoUrl: $logoUrl, linkMethod: $linkMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentGatewayEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.linkMethod, linkMethod) ||
                other.linkMethod == linkMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoUrl, linkMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentGatewayEntityImplCopyWith<_$PaymentGatewayEntityImpl>
      get copyWith =>
          __$$PaymentGatewayEntityImplCopyWithImpl<_$PaymentGatewayEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentGatewayEntityImplToJson(
      this,
    );
  }
}

abstract class _PaymentGatewayEntity implements PaymentGatewayEntity {
  const factory _PaymentGatewayEntity(
          {required final String id,
          required final String name,
          required final String? logoUrl,
          required final GatewayLinkMethod linkMethod}) =
      _$PaymentGatewayEntityImpl;

  factory _PaymentGatewayEntity.fromJson(Map<String, dynamic> json) =
      _$PaymentGatewayEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get logoUrl;
  @override
  GatewayLinkMethod get linkMethod;
  @override
  @JsonKey(ignore: true)
  _$$PaymentGatewayEntityImplCopyWith<_$PaymentGatewayEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
