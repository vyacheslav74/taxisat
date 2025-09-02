// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_payment_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavedPaymentMethodEntity _$SavedPaymentMethodEntityFromJson(
    Map<String, dynamic> json) {
  return _SavedPaymentMethodEntity.fromJson(json);
}

/// @nodoc
mixin _$SavedPaymentMethodEntity {
  String get id => throw _privateConstructorUsedError;
  CardType get cardType => throw _privateConstructorUsedError;
  String get last4Digits => throw _privateConstructorUsedError;
  String? get cardHolderName => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedPaymentMethodEntityCopyWith<SavedPaymentMethodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPaymentMethodEntityCopyWith<$Res> {
  factory $SavedPaymentMethodEntityCopyWith(SavedPaymentMethodEntity value,
          $Res Function(SavedPaymentMethodEntity) then) =
      _$SavedPaymentMethodEntityCopyWithImpl<$Res, SavedPaymentMethodEntity>;
  @useResult
  $Res call(
      {String id,
      CardType cardType,
      String last4Digits,
      String? cardHolderName,
      DateTime? expiryDate,
      bool isDefault,
      bool isEnabled});
}

/// @nodoc
class _$SavedPaymentMethodEntityCopyWithImpl<$Res,
        $Val extends SavedPaymentMethodEntity>
    implements $SavedPaymentMethodEntityCopyWith<$Res> {
  _$SavedPaymentMethodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardType = null,
    Object? last4Digits = null,
    Object? cardHolderName = freezed,
    Object? expiryDate = freezed,
    Object? isDefault = null,
    Object? isEnabled = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      last4Digits: null == last4Digits
          ? _value.last4Digits
          : last4Digits // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: freezed == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedPaymentMethodEntityImplCopyWith<$Res>
    implements $SavedPaymentMethodEntityCopyWith<$Res> {
  factory _$$SavedPaymentMethodEntityImplCopyWith(
          _$SavedPaymentMethodEntityImpl value,
          $Res Function(_$SavedPaymentMethodEntityImpl) then) =
      __$$SavedPaymentMethodEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      CardType cardType,
      String last4Digits,
      String? cardHolderName,
      DateTime? expiryDate,
      bool isDefault,
      bool isEnabled});
}

/// @nodoc
class __$$SavedPaymentMethodEntityImplCopyWithImpl<$Res>
    extends _$SavedPaymentMethodEntityCopyWithImpl<$Res,
        _$SavedPaymentMethodEntityImpl>
    implements _$$SavedPaymentMethodEntityImplCopyWith<$Res> {
  __$$SavedPaymentMethodEntityImplCopyWithImpl(
      _$SavedPaymentMethodEntityImpl _value,
      $Res Function(_$SavedPaymentMethodEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardType = null,
    Object? last4Digits = null,
    Object? cardHolderName = freezed,
    Object? expiryDate = freezed,
    Object? isDefault = null,
    Object? isEnabled = null,
  }) {
    return _then(_$SavedPaymentMethodEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as CardType,
      last4Digits: null == last4Digits
          ? _value.last4Digits
          : last4Digits // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: freezed == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnabled: null == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedPaymentMethodEntityImpl extends _SavedPaymentMethodEntity {
  const _$SavedPaymentMethodEntityImpl(
      {required this.id,
      required this.cardType,
      required this.last4Digits,
      required this.cardHolderName,
      required this.expiryDate,
      required this.isDefault,
      required this.isEnabled})
      : super._();

  factory _$SavedPaymentMethodEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavedPaymentMethodEntityImplFromJson(json);

  @override
  final String id;
  @override
  final CardType cardType;
  @override
  final String last4Digits;
  @override
  final String? cardHolderName;
  @override
  final DateTime? expiryDate;
  @override
  final bool isDefault;
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'SavedPaymentMethodEntity(id: $id, cardType: $cardType, last4Digits: $last4Digits, cardHolderName: $cardHolderName, expiryDate: $expiryDate, isDefault: $isDefault, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedPaymentMethodEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.last4Digits, last4Digits) ||
                other.last4Digits == last4Digits) &&
            (identical(other.cardHolderName, cardHolderName) ||
                other.cardHolderName == cardHolderName) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cardType, last4Digits,
      cardHolderName, expiryDate, isDefault, isEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedPaymentMethodEntityImplCopyWith<_$SavedPaymentMethodEntityImpl>
      get copyWith => __$$SavedPaymentMethodEntityImplCopyWithImpl<
          _$SavedPaymentMethodEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedPaymentMethodEntityImplToJson(
      this,
    );
  }
}

abstract class _SavedPaymentMethodEntity extends SavedPaymentMethodEntity {
  const factory _SavedPaymentMethodEntity(
      {required final String id,
      required final CardType cardType,
      required final String last4Digits,
      required final String? cardHolderName,
      required final DateTime? expiryDate,
      required final bool isDefault,
      required final bool isEnabled}) = _$SavedPaymentMethodEntityImpl;
  const _SavedPaymentMethodEntity._() : super._();

  factory _SavedPaymentMethodEntity.fromJson(Map<String, dynamic> json) =
      _$SavedPaymentMethodEntityImpl.fromJson;

  @override
  String get id;
  @override
  CardType get cardType;
  @override
  String get last4Digits;
  @override
  String? get cardHolderName;
  @override
  DateTime? get expiryDate;
  @override
  bool get isDefault;
  @override
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$$SavedPaymentMethodEntityImplCopyWith<_$SavedPaymentMethodEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
