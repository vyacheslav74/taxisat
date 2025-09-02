// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_for_ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PayForRideState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)
        loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRideInitial value) initial,
    required TResult Function(PayForRideLoading value) loading,
    required TResult Function(PayForRideLoaded value) loaded,
    required TResult Function(PayForRideError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRideInitial value)? initial,
    TResult? Function(PayForRideLoading value)? loading,
    TResult? Function(PayForRideLoaded value)? loaded,
    TResult? Function(PayForRideError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRideInitial value)? initial,
    TResult Function(PayForRideLoading value)? loading,
    TResult Function(PayForRideLoaded value)? loaded,
    TResult Function(PayForRideError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayForRideStateCopyWith<$Res> {
  factory $PayForRideStateCopyWith(
          PayForRideState value, $Res Function(PayForRideState) then) =
      _$PayForRideStateCopyWithImpl<$Res, PayForRideState>;
}

/// @nodoc
class _$PayForRideStateCopyWithImpl<$Res, $Val extends PayForRideState>
    implements $PayForRideStateCopyWith<$Res> {
  _$PayForRideStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PayForRideInitialImplCopyWith<$Res> {
  factory _$$PayForRideInitialImplCopyWith(_$PayForRideInitialImpl value,
          $Res Function(_$PayForRideInitialImpl) then) =
      __$$PayForRideInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PayForRideInitialImplCopyWithImpl<$Res>
    extends _$PayForRideStateCopyWithImpl<$Res, _$PayForRideInitialImpl>
    implements _$$PayForRideInitialImplCopyWith<$Res> {
  __$$PayForRideInitialImplCopyWithImpl(_$PayForRideInitialImpl _value,
      $Res Function(_$PayForRideInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PayForRideInitialImpl implements PayForRideInitial {
  const _$PayForRideInitialImpl();

  @override
  String toString() {
    return 'PayForRideState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PayForRideInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRideInitial value) initial,
    required TResult Function(PayForRideLoading value) loading,
    required TResult Function(PayForRideLoaded value) loaded,
    required TResult Function(PayForRideError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRideInitial value)? initial,
    TResult? Function(PayForRideLoading value)? loading,
    TResult? Function(PayForRideLoaded value)? loaded,
    TResult? Function(PayForRideError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRideInitial value)? initial,
    TResult Function(PayForRideLoading value)? loading,
    TResult Function(PayForRideLoaded value)? loaded,
    TResult Function(PayForRideError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PayForRideInitial implements PayForRideState {
  const factory PayForRideInitial() = _$PayForRideInitialImpl;
}

/// @nodoc
abstract class _$$PayForRideLoadingImplCopyWith<$Res> {
  factory _$$PayForRideLoadingImplCopyWith(_$PayForRideLoadingImpl value,
          $Res Function(_$PayForRideLoadingImpl) then) =
      __$$PayForRideLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PayForRideLoadingImplCopyWithImpl<$Res>
    extends _$PayForRideStateCopyWithImpl<$Res, _$PayForRideLoadingImpl>
    implements _$$PayForRideLoadingImplCopyWith<$Res> {
  __$$PayForRideLoadingImplCopyWithImpl(_$PayForRideLoadingImpl _value,
      $Res Function(_$PayForRideLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PayForRideLoadingImpl implements PayForRideLoading {
  const _$PayForRideLoadingImpl();

  @override
  String toString() {
    return 'PayForRideState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PayForRideLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRideInitial value) initial,
    required TResult Function(PayForRideLoading value) loading,
    required TResult Function(PayForRideLoaded value) loaded,
    required TResult Function(PayForRideError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRideInitial value)? initial,
    TResult? Function(PayForRideLoading value)? loading,
    TResult? Function(PayForRideLoaded value)? loaded,
    TResult? Function(PayForRideError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRideInitial value)? initial,
    TResult Function(PayForRideLoading value)? loading,
    TResult Function(PayForRideLoaded value)? loaded,
    TResult Function(PayForRideError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PayForRideLoading implements PayForRideState {
  const factory PayForRideLoading() = _$PayForRideLoadingImpl;
}

/// @nodoc
abstract class _$$PayForRideLoadedImplCopyWith<$Res> {
  factory _$$PayForRideLoadedImplCopyWith(_$PayForRideLoadedImpl value,
          $Res Function(_$PayForRideLoadedImpl) then) =
      __$$PayForRideLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PaymentMethodUnion selectedPaymentMethod,
      List<PaymentMethodUnion> paymentMethods,
      PayForRidePaymentStatus paymentStatus});

  $PaymentMethodUnionCopyWith<$Res> get selectedPaymentMethod;
  $PayForRidePaymentStatusCopyWith<$Res> get paymentStatus;
}

/// @nodoc
class __$$PayForRideLoadedImplCopyWithImpl<$Res>
    extends _$PayForRideStateCopyWithImpl<$Res, _$PayForRideLoadedImpl>
    implements _$$PayForRideLoadedImplCopyWith<$Res> {
  __$$PayForRideLoadedImplCopyWithImpl(_$PayForRideLoadedImpl _value,
      $Res Function(_$PayForRideLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPaymentMethod = null,
    Object? paymentMethods = null,
    Object? paymentStatus = null,
  }) {
    return _then(_$PayForRideLoadedImpl(
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion,
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodUnion>,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PayForRidePaymentStatus,
    ));
  }

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodUnionCopyWith<$Res> get selectedPaymentMethod {
    return $PaymentMethodUnionCopyWith<$Res>(_value.selectedPaymentMethod,
        (value) {
      return _then(_value.copyWith(selectedPaymentMethod: value));
    });
  }

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayForRidePaymentStatusCopyWith<$Res> get paymentStatus {
    return $PayForRidePaymentStatusCopyWith<$Res>(_value.paymentStatus,
        (value) {
      return _then(_value.copyWith(paymentStatus: value));
    });
  }
}

/// @nodoc

class _$PayForRideLoadedImpl implements PayForRideLoaded {
  const _$PayForRideLoadedImpl(
      {required this.selectedPaymentMethod,
      required final List<PaymentMethodUnion> paymentMethods,
      this.paymentStatus = const PayForRidePaymentStatus.initial()})
      : _paymentMethods = paymentMethods;

  @override
  final PaymentMethodUnion selectedPaymentMethod;
  final List<PaymentMethodUnion> _paymentMethods;
  @override
  List<PaymentMethodUnion> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  @override
  @JsonKey()
  final PayForRidePaymentStatus paymentStatus;

  @override
  String toString() {
    return 'PayForRideState.loaded(selectedPaymentMethod: $selectedPaymentMethod, paymentMethods: $paymentMethods, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayForRideLoadedImpl &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPaymentMethod,
      const DeepCollectionEquality().hash(_paymentMethods), paymentStatus);

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayForRideLoadedImplCopyWith<_$PayForRideLoadedImpl> get copyWith =>
      __$$PayForRideLoadedImplCopyWithImpl<_$PayForRideLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(selectedPaymentMethod, paymentMethods, paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(selectedPaymentMethod, paymentMethods, paymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selectedPaymentMethod, paymentMethods, paymentStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRideInitial value) initial,
    required TResult Function(PayForRideLoading value) loading,
    required TResult Function(PayForRideLoaded value) loaded,
    required TResult Function(PayForRideError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRideInitial value)? initial,
    TResult? Function(PayForRideLoading value)? loading,
    TResult? Function(PayForRideLoaded value)? loaded,
    TResult? Function(PayForRideError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRideInitial value)? initial,
    TResult Function(PayForRideLoading value)? loading,
    TResult Function(PayForRideLoaded value)? loaded,
    TResult Function(PayForRideError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PayForRideLoaded implements PayForRideState {
  const factory PayForRideLoaded(
      {required final PaymentMethodUnion selectedPaymentMethod,
      required final List<PaymentMethodUnion> paymentMethods,
      final PayForRidePaymentStatus paymentStatus}) = _$PayForRideLoadedImpl;

  PaymentMethodUnion get selectedPaymentMethod;
  List<PaymentMethodUnion> get paymentMethods;
  PayForRidePaymentStatus get paymentStatus;

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayForRideLoadedImplCopyWith<_$PayForRideLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayForRideErrorImplCopyWith<$Res> {
  factory _$$PayForRideErrorImplCopyWith(_$PayForRideErrorImpl value,
          $Res Function(_$PayForRideErrorImpl) then) =
      __$$PayForRideErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$PayForRideErrorImplCopyWithImpl<$Res>
    extends _$PayForRideStateCopyWithImpl<$Res, _$PayForRideErrorImpl>
    implements _$$PayForRideErrorImplCopyWith<$Res> {
  __$$PayForRideErrorImplCopyWithImpl(
      _$PayForRideErrorImpl _value, $Res Function(_$PayForRideErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$PayForRideErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$PayForRideErrorImpl implements PayForRideError {
  const _$PayForRideErrorImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PayForRideState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayForRideErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayForRideErrorImplCopyWith<_$PayForRideErrorImpl> get copyWith =>
      __$$PayForRideErrorImplCopyWithImpl<_$PayForRideErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PaymentMethodUnion selectedPaymentMethod,
            List<PaymentMethodUnion> paymentMethods,
            PayForRidePaymentStatus paymentStatus)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRideInitial value) initial,
    required TResult Function(PayForRideLoading value) loading,
    required TResult Function(PayForRideLoaded value) loaded,
    required TResult Function(PayForRideError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRideInitial value)? initial,
    TResult? Function(PayForRideLoading value)? loading,
    TResult? Function(PayForRideLoaded value)? loaded,
    TResult? Function(PayForRideError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRideInitial value)? initial,
    TResult Function(PayForRideLoading value)? loading,
    TResult Function(PayForRideLoaded value)? loaded,
    TResult Function(PayForRideError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PayForRideError implements PayForRideState {
  const factory PayForRideError({required final Failure failure}) =
      _$PayForRideErrorImpl;

  Failure get failure;

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayForRideErrorImplCopyWith<_$PayForRideErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PayForRidePaymentStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String url) redirect,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(String url)? redirect,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String url)? redirect,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRidePaymentStatusInitial value) initial,
    required TResult Function(PayForRidePaymentStatusLoading value) loading,
    required TResult Function(PayForRidePaymentStatusError value) error,
    required TResult Function(PayForRidePaymentStatusRedirect value) redirect,
    required TResult Function(PayForRidePaymentStatusSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRidePaymentStatusInitial value)? initial,
    TResult? Function(PayForRidePaymentStatusLoading value)? loading,
    TResult? Function(PayForRidePaymentStatusError value)? error,
    TResult? Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult? Function(PayForRidePaymentStatusSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRidePaymentStatusInitial value)? initial,
    TResult Function(PayForRidePaymentStatusLoading value)? loading,
    TResult Function(PayForRidePaymentStatusError value)? error,
    TResult Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult Function(PayForRidePaymentStatusSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayForRidePaymentStatusCopyWith<$Res> {
  factory $PayForRidePaymentStatusCopyWith(PayForRidePaymentStatus value,
          $Res Function(PayForRidePaymentStatus) then) =
      _$PayForRidePaymentStatusCopyWithImpl<$Res, PayForRidePaymentStatus>;
}

/// @nodoc
class _$PayForRidePaymentStatusCopyWithImpl<$Res,
        $Val extends PayForRidePaymentStatus>
    implements $PayForRidePaymentStatusCopyWith<$Res> {
  _$PayForRidePaymentStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PayForRidePaymentStatusInitialImplCopyWith<$Res> {
  factory _$$PayForRidePaymentStatusInitialImplCopyWith(
          _$PayForRidePaymentStatusInitialImpl value,
          $Res Function(_$PayForRidePaymentStatusInitialImpl) then) =
      __$$PayForRidePaymentStatusInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PayForRidePaymentStatusInitialImplCopyWithImpl<$Res>
    extends _$PayForRidePaymentStatusCopyWithImpl<$Res,
        _$PayForRidePaymentStatusInitialImpl>
    implements _$$PayForRidePaymentStatusInitialImplCopyWith<$Res> {
  __$$PayForRidePaymentStatusInitialImplCopyWithImpl(
      _$PayForRidePaymentStatusInitialImpl _value,
      $Res Function(_$PayForRidePaymentStatusInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PayForRidePaymentStatusInitialImpl
    implements PayForRidePaymentStatusInitial {
  const _$PayForRidePaymentStatusInitialImpl();

  @override
  String toString() {
    return 'PayForRidePaymentStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayForRidePaymentStatusInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String url) redirect,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(String url)? redirect,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String url)? redirect,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRidePaymentStatusInitial value) initial,
    required TResult Function(PayForRidePaymentStatusLoading value) loading,
    required TResult Function(PayForRidePaymentStatusError value) error,
    required TResult Function(PayForRidePaymentStatusRedirect value) redirect,
    required TResult Function(PayForRidePaymentStatusSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRidePaymentStatusInitial value)? initial,
    TResult? Function(PayForRidePaymentStatusLoading value)? loading,
    TResult? Function(PayForRidePaymentStatusError value)? error,
    TResult? Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult? Function(PayForRidePaymentStatusSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRidePaymentStatusInitial value)? initial,
    TResult Function(PayForRidePaymentStatusLoading value)? loading,
    TResult Function(PayForRidePaymentStatusError value)? error,
    TResult Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult Function(PayForRidePaymentStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PayForRidePaymentStatusInitial
    implements PayForRidePaymentStatus {
  const factory PayForRidePaymentStatusInitial() =
      _$PayForRidePaymentStatusInitialImpl;
}

/// @nodoc
abstract class _$$PayForRidePaymentStatusLoadingImplCopyWith<$Res> {
  factory _$$PayForRidePaymentStatusLoadingImplCopyWith(
          _$PayForRidePaymentStatusLoadingImpl value,
          $Res Function(_$PayForRidePaymentStatusLoadingImpl) then) =
      __$$PayForRidePaymentStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PayForRidePaymentStatusLoadingImplCopyWithImpl<$Res>
    extends _$PayForRidePaymentStatusCopyWithImpl<$Res,
        _$PayForRidePaymentStatusLoadingImpl>
    implements _$$PayForRidePaymentStatusLoadingImplCopyWith<$Res> {
  __$$PayForRidePaymentStatusLoadingImplCopyWithImpl(
      _$PayForRidePaymentStatusLoadingImpl _value,
      $Res Function(_$PayForRidePaymentStatusLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PayForRidePaymentStatusLoadingImpl
    implements PayForRidePaymentStatusLoading {
  const _$PayForRidePaymentStatusLoadingImpl();

  @override
  String toString() {
    return 'PayForRidePaymentStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayForRidePaymentStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String url) redirect,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(String url)? redirect,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String url)? redirect,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRidePaymentStatusInitial value) initial,
    required TResult Function(PayForRidePaymentStatusLoading value) loading,
    required TResult Function(PayForRidePaymentStatusError value) error,
    required TResult Function(PayForRidePaymentStatusRedirect value) redirect,
    required TResult Function(PayForRidePaymentStatusSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRidePaymentStatusInitial value)? initial,
    TResult? Function(PayForRidePaymentStatusLoading value)? loading,
    TResult? Function(PayForRidePaymentStatusError value)? error,
    TResult? Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult? Function(PayForRidePaymentStatusSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRidePaymentStatusInitial value)? initial,
    TResult Function(PayForRidePaymentStatusLoading value)? loading,
    TResult Function(PayForRidePaymentStatusError value)? error,
    TResult Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult Function(PayForRidePaymentStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PayForRidePaymentStatusLoading
    implements PayForRidePaymentStatus {
  const factory PayForRidePaymentStatusLoading() =
      _$PayForRidePaymentStatusLoadingImpl;
}

/// @nodoc
abstract class _$$PayForRidePaymentStatusErrorImplCopyWith<$Res> {
  factory _$$PayForRidePaymentStatusErrorImplCopyWith(
          _$PayForRidePaymentStatusErrorImpl value,
          $Res Function(_$PayForRidePaymentStatusErrorImpl) then) =
      __$$PayForRidePaymentStatusErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$PayForRidePaymentStatusErrorImplCopyWithImpl<$Res>
    extends _$PayForRidePaymentStatusCopyWithImpl<$Res,
        _$PayForRidePaymentStatusErrorImpl>
    implements _$$PayForRidePaymentStatusErrorImplCopyWith<$Res> {
  __$$PayForRidePaymentStatusErrorImplCopyWithImpl(
      _$PayForRidePaymentStatusErrorImpl _value,
      $Res Function(_$PayForRidePaymentStatusErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$PayForRidePaymentStatusErrorImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$PayForRidePaymentStatusErrorImpl
    implements PayForRidePaymentStatusError {
  const _$PayForRidePaymentStatusErrorImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PayForRidePaymentStatus.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayForRidePaymentStatusErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayForRidePaymentStatusErrorImplCopyWith<
          _$PayForRidePaymentStatusErrorImpl>
      get copyWith => __$$PayForRidePaymentStatusErrorImplCopyWithImpl<
          _$PayForRidePaymentStatusErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String url) redirect,
    required TResult Function() success,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(String url)? redirect,
    TResult? Function()? success,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String url)? redirect,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRidePaymentStatusInitial value) initial,
    required TResult Function(PayForRidePaymentStatusLoading value) loading,
    required TResult Function(PayForRidePaymentStatusError value) error,
    required TResult Function(PayForRidePaymentStatusRedirect value) redirect,
    required TResult Function(PayForRidePaymentStatusSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRidePaymentStatusInitial value)? initial,
    TResult? Function(PayForRidePaymentStatusLoading value)? loading,
    TResult? Function(PayForRidePaymentStatusError value)? error,
    TResult? Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult? Function(PayForRidePaymentStatusSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRidePaymentStatusInitial value)? initial,
    TResult Function(PayForRidePaymentStatusLoading value)? loading,
    TResult Function(PayForRidePaymentStatusError value)? error,
    TResult Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult Function(PayForRidePaymentStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PayForRidePaymentStatusError implements PayForRidePaymentStatus {
  const factory PayForRidePaymentStatusError({required final Failure failure}) =
      _$PayForRidePaymentStatusErrorImpl;

  Failure get failure;

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayForRidePaymentStatusErrorImplCopyWith<
          _$PayForRidePaymentStatusErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayForRidePaymentStatusRedirectImplCopyWith<$Res> {
  factory _$$PayForRidePaymentStatusRedirectImplCopyWith(
          _$PayForRidePaymentStatusRedirectImpl value,
          $Res Function(_$PayForRidePaymentStatusRedirectImpl) then) =
      __$$PayForRidePaymentStatusRedirectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$PayForRidePaymentStatusRedirectImplCopyWithImpl<$Res>
    extends _$PayForRidePaymentStatusCopyWithImpl<$Res,
        _$PayForRidePaymentStatusRedirectImpl>
    implements _$$PayForRidePaymentStatusRedirectImplCopyWith<$Res> {
  __$$PayForRidePaymentStatusRedirectImplCopyWithImpl(
      _$PayForRidePaymentStatusRedirectImpl _value,
      $Res Function(_$PayForRidePaymentStatusRedirectImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$PayForRidePaymentStatusRedirectImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PayForRidePaymentStatusRedirectImpl
    implements PayForRidePaymentStatusRedirect {
  const _$PayForRidePaymentStatusRedirectImpl({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'PayForRidePaymentStatus.redirect(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayForRidePaymentStatusRedirectImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayForRidePaymentStatusRedirectImplCopyWith<
          _$PayForRidePaymentStatusRedirectImpl>
      get copyWith => __$$PayForRidePaymentStatusRedirectImplCopyWithImpl<
          _$PayForRidePaymentStatusRedirectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String url) redirect,
    required TResult Function() success,
  }) {
    return redirect(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(String url)? redirect,
    TResult? Function()? success,
  }) {
    return redirect?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String url)? redirect,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRidePaymentStatusInitial value) initial,
    required TResult Function(PayForRidePaymentStatusLoading value) loading,
    required TResult Function(PayForRidePaymentStatusError value) error,
    required TResult Function(PayForRidePaymentStatusRedirect value) redirect,
    required TResult Function(PayForRidePaymentStatusSuccess value) success,
  }) {
    return redirect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRidePaymentStatusInitial value)? initial,
    TResult? Function(PayForRidePaymentStatusLoading value)? loading,
    TResult? Function(PayForRidePaymentStatusError value)? error,
    TResult? Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult? Function(PayForRidePaymentStatusSuccess value)? success,
  }) {
    return redirect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRidePaymentStatusInitial value)? initial,
    TResult Function(PayForRidePaymentStatusLoading value)? loading,
    TResult Function(PayForRidePaymentStatusError value)? error,
    TResult Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult Function(PayForRidePaymentStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(this);
    }
    return orElse();
  }
}

abstract class PayForRidePaymentStatusRedirect
    implements PayForRidePaymentStatus {
  const factory PayForRidePaymentStatusRedirect({required final String url}) =
      _$PayForRidePaymentStatusRedirectImpl;

  String get url;

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayForRidePaymentStatusRedirectImplCopyWith<
          _$PayForRidePaymentStatusRedirectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayForRidePaymentStatusSuccessImplCopyWith<$Res> {
  factory _$$PayForRidePaymentStatusSuccessImplCopyWith(
          _$PayForRidePaymentStatusSuccessImpl value,
          $Res Function(_$PayForRidePaymentStatusSuccessImpl) then) =
      __$$PayForRidePaymentStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PayForRidePaymentStatusSuccessImplCopyWithImpl<$Res>
    extends _$PayForRidePaymentStatusCopyWithImpl<$Res,
        _$PayForRidePaymentStatusSuccessImpl>
    implements _$$PayForRidePaymentStatusSuccessImplCopyWith<$Res> {
  __$$PayForRidePaymentStatusSuccessImplCopyWithImpl(
      _$PayForRidePaymentStatusSuccessImpl _value,
      $Res Function(_$PayForRidePaymentStatusSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayForRidePaymentStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PayForRidePaymentStatusSuccessImpl
    implements PayForRidePaymentStatusSuccess {
  const _$PayForRidePaymentStatusSuccessImpl();

  @override
  String toString() {
    return 'PayForRidePaymentStatus.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayForRidePaymentStatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(String url) redirect,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(String url)? redirect,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(String url)? redirect,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PayForRidePaymentStatusInitial value) initial,
    required TResult Function(PayForRidePaymentStatusLoading value) loading,
    required TResult Function(PayForRidePaymentStatusError value) error,
    required TResult Function(PayForRidePaymentStatusRedirect value) redirect,
    required TResult Function(PayForRidePaymentStatusSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PayForRidePaymentStatusInitial value)? initial,
    TResult? Function(PayForRidePaymentStatusLoading value)? loading,
    TResult? Function(PayForRidePaymentStatusError value)? error,
    TResult? Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult? Function(PayForRidePaymentStatusSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PayForRidePaymentStatusInitial value)? initial,
    TResult Function(PayForRidePaymentStatusLoading value)? loading,
    TResult Function(PayForRidePaymentStatusError value)? error,
    TResult Function(PayForRidePaymentStatusRedirect value)? redirect,
    TResult Function(PayForRidePaymentStatusSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PayForRidePaymentStatusSuccess
    implements PayForRidePaymentStatus {
  const factory PayForRidePaymentStatusSuccess() =
      _$PayForRidePaymentStatusSuccessImpl;
}
