// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_preview_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPreviewOptionsState {
  ServiceCategoryEntity? get selectedServiceCategory =>
      throw _privateConstructorUsedError;
  ServiceEntity? get selectedService => throw _privateConstructorUsedError;
  PaymentMethodUnion? get paymentMethod => throw _privateConstructorUsedError;

  /// Create a copy of OrderPreviewOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPreviewOptionsStateCopyWith<OrderPreviewOptionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPreviewOptionsStateCopyWith<$Res> {
  factory $OrderPreviewOptionsStateCopyWith(OrderPreviewOptionsState value,
          $Res Function(OrderPreviewOptionsState) then) =
      _$OrderPreviewOptionsStateCopyWithImpl<$Res, OrderPreviewOptionsState>;
  @useResult
  $Res call(
      {ServiceCategoryEntity? selectedServiceCategory,
      ServiceEntity? selectedService,
      PaymentMethodUnion? paymentMethod});

  $ServiceCategoryEntityCopyWith<$Res>? get selectedServiceCategory;
  $ServiceEntityCopyWith<$Res>? get selectedService;
  $PaymentMethodUnionCopyWith<$Res>? get paymentMethod;
}

/// @nodoc
class _$OrderPreviewOptionsStateCopyWithImpl<$Res,
        $Val extends OrderPreviewOptionsState>
    implements $OrderPreviewOptionsStateCopyWith<$Res> {
  _$OrderPreviewOptionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPreviewOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedServiceCategory = freezed,
    Object? selectedService = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      selectedServiceCategory: freezed == selectedServiceCategory
          ? _value.selectedServiceCategory
          : selectedServiceCategory // ignore: cast_nullable_to_non_nullable
              as ServiceCategoryEntity?,
      selectedService: freezed == selectedService
          ? _value.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as ServiceEntity?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion?,
    ) as $Val);
  }

  /// Create a copy of OrderPreviewOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceCategoryEntityCopyWith<$Res>? get selectedServiceCategory {
    if (_value.selectedServiceCategory == null) {
      return null;
    }

    return $ServiceCategoryEntityCopyWith<$Res>(_value.selectedServiceCategory!,
        (value) {
      return _then(_value.copyWith(selectedServiceCategory: value) as $Val);
    });
  }

  /// Create a copy of OrderPreviewOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceEntityCopyWith<$Res>? get selectedService {
    if (_value.selectedService == null) {
      return null;
    }

    return $ServiceEntityCopyWith<$Res>(_value.selectedService!, (value) {
      return _then(_value.copyWith(selectedService: value) as $Val);
    });
  }

  /// Create a copy of OrderPreviewOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodUnionCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $PaymentMethodUnionCopyWith<$Res>(_value.paymentMethod!, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderPreviewOptionsStateImplCopyWith<$Res>
    implements $OrderPreviewOptionsStateCopyWith<$Res> {
  factory _$$OrderPreviewOptionsStateImplCopyWith(
          _$OrderPreviewOptionsStateImpl value,
          $Res Function(_$OrderPreviewOptionsStateImpl) then) =
      __$$OrderPreviewOptionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ServiceCategoryEntity? selectedServiceCategory,
      ServiceEntity? selectedService,
      PaymentMethodUnion? paymentMethod});

  @override
  $ServiceCategoryEntityCopyWith<$Res>? get selectedServiceCategory;
  @override
  $ServiceEntityCopyWith<$Res>? get selectedService;
  @override
  $PaymentMethodUnionCopyWith<$Res>? get paymentMethod;
}

/// @nodoc
class __$$OrderPreviewOptionsStateImplCopyWithImpl<$Res>
    extends _$OrderPreviewOptionsStateCopyWithImpl<$Res,
        _$OrderPreviewOptionsStateImpl>
    implements _$$OrderPreviewOptionsStateImplCopyWith<$Res> {
  __$$OrderPreviewOptionsStateImplCopyWithImpl(
      _$OrderPreviewOptionsStateImpl _value,
      $Res Function(_$OrderPreviewOptionsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPreviewOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedServiceCategory = freezed,
    Object? selectedService = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$OrderPreviewOptionsStateImpl(
      selectedServiceCategory: freezed == selectedServiceCategory
          ? _value.selectedServiceCategory
          : selectedServiceCategory // ignore: cast_nullable_to_non_nullable
              as ServiceCategoryEntity?,
      selectedService: freezed == selectedService
          ? _value.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as ServiceEntity?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion?,
    ));
  }
}

/// @nodoc

class _$OrderPreviewOptionsStateImpl extends _OrderPreviewOptionsState {
  const _$OrderPreviewOptionsStateImpl(
      {required this.selectedServiceCategory,
      required this.selectedService,
      required this.paymentMethod})
      : super._();

  @override
  final ServiceCategoryEntity? selectedServiceCategory;
  @override
  final ServiceEntity? selectedService;
  @override
  final PaymentMethodUnion? paymentMethod;

  @override
  String toString() {
    return 'OrderPreviewOptionsState(selectedServiceCategory: $selectedServiceCategory, selectedService: $selectedService, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPreviewOptionsStateImpl &&
            (identical(
                    other.selectedServiceCategory, selectedServiceCategory) ||
                other.selectedServiceCategory == selectedServiceCategory) &&
            (identical(other.selectedService, selectedService) ||
                other.selectedService == selectedService) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedServiceCategory, selectedService, paymentMethod);

  /// Create a copy of OrderPreviewOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPreviewOptionsStateImplCopyWith<_$OrderPreviewOptionsStateImpl>
      get copyWith => __$$OrderPreviewOptionsStateImplCopyWithImpl<
          _$OrderPreviewOptionsStateImpl>(this, _$identity);
}

abstract class _OrderPreviewOptionsState extends OrderPreviewOptionsState {
  const factory _OrderPreviewOptionsState(
          {required final ServiceCategoryEntity? selectedServiceCategory,
          required final ServiceEntity? selectedService,
          required final PaymentMethodUnion? paymentMethod}) =
      _$OrderPreviewOptionsStateImpl;
  const _OrderPreviewOptionsState._() : super._();

  @override
  ServiceCategoryEntity? get selectedServiceCategory;
  @override
  ServiceEntity? get selectedService;
  @override
  PaymentMethodUnion? get paymentMethod;

  /// Create a copy of OrderPreviewOptionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPreviewOptionsStateImplCopyWith<_$OrderPreviewOptionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
