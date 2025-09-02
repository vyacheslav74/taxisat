// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderPreviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)
        loaded,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        orderSubmitted,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(OrderPreviewLoadedState value) loaded,
    required TResult Function(_OrderSubmitted value) orderSubmitted,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(OrderPreviewLoadedState value)? loaded,
    TResult? Function(_OrderSubmitted value)? orderSubmitted,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(OrderPreviewLoadedState value)? loaded,
    TResult Function(_OrderSubmitted value)? orderSubmitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPreviewStateCopyWith<$Res> {
  factory $OrderPreviewStateCopyWith(
          OrderPreviewState value, $Res Function(OrderPreviewState) then) =
      _$OrderPreviewStateCopyWithImpl<$Res, OrderPreviewState>;
}

/// @nodoc
class _$OrderPreviewStateCopyWithImpl<$Res, $Val extends OrderPreviewState>
    implements $OrderPreviewStateCopyWith<$Res> {
  _$OrderPreviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrderPreviewStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'OrderPreviewState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)
        loaded,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        orderSubmitted,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(OrderPreviewLoadedState value) loaded,
    required TResult Function(_OrderSubmitted value) orderSubmitted,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(OrderPreviewLoadedState value)? loaded,
    TResult? Function(_OrderSubmitted value)? orderSubmitted,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(OrderPreviewLoadedState value)? loaded,
    TResult Function(_OrderSubmitted value)? orderSubmitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends OrderPreviewState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OrderPreviewStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'OrderPreviewState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)
        loaded,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        orderSubmitted,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult Function(String message)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(OrderPreviewLoadedState value) loaded,
    required TResult Function(_OrderSubmitted value) orderSubmitted,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(OrderPreviewLoadedState value)? loaded,
    TResult? Function(_OrderSubmitted value)? orderSubmitted,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(OrderPreviewLoadedState value)? loaded,
    TResult Function(_OrderSubmitted value)? orderSubmitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends OrderPreviewState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$OrderPreviewLoadedStateImplCopyWith<$Res> {
  factory _$$OrderPreviewLoadedStateImplCopyWith(
          _$OrderPreviewLoadedStateImpl value,
          $Res Function(_$OrderPreviewLoadedStateImpl) then) =
      __$$OrderPreviewLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PaymentMethodUnion> paymentMethods,
      List<ServiceCategoryEntity> serviceCategories,
      String currency,
      List<LatLngEntity> directions,
      double walletCredit,
      bool isLoading,
      OrderPreviewPage selectedPage});
}

/// @nodoc
class __$$OrderPreviewLoadedStateImplCopyWithImpl<$Res>
    extends _$OrderPreviewStateCopyWithImpl<$Res, _$OrderPreviewLoadedStateImpl>
    implements _$$OrderPreviewLoadedStateImplCopyWith<$Res> {
  __$$OrderPreviewLoadedStateImplCopyWithImpl(
      _$OrderPreviewLoadedStateImpl _value,
      $Res Function(_$OrderPreviewLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethods = null,
    Object? serviceCategories = null,
    Object? currency = null,
    Object? directions = null,
    Object? walletCredit = null,
    Object? isLoading = null,
    Object? selectedPage = null,
  }) {
    return _then(_$OrderPreviewLoadedStateImpl(
      paymentMethods: null == paymentMethods
          ? _value._paymentMethods
          : paymentMethods // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodUnion>,
      serviceCategories: null == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategoryEntity>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      directions: null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      walletCredit: null == walletCredit
          ? _value.walletCredit
          : walletCredit // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as OrderPreviewPage,
    ));
  }
}

/// @nodoc

class _$OrderPreviewLoadedStateImpl extends OrderPreviewLoadedState {
  const _$OrderPreviewLoadedStateImpl(
      {required final List<PaymentMethodUnion> paymentMethods,
      required final List<ServiceCategoryEntity> serviceCategories,
      required this.currency,
      required final List<LatLngEntity> directions,
      required this.walletCredit,
      this.isLoading = false,
      this.selectedPage = OrderPreviewPage.services})
      : _paymentMethods = paymentMethods,
        _serviceCategories = serviceCategories,
        _directions = directions,
        super._();

  final List<PaymentMethodUnion> _paymentMethods;
  @override
  List<PaymentMethodUnion> get paymentMethods {
    if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMethods);
  }

  final List<ServiceCategoryEntity> _serviceCategories;
  @override
  List<ServiceCategoryEntity> get serviceCategories {
    if (_serviceCategories is EqualUnmodifiableListView)
      return _serviceCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceCategories);
  }

  @override
  final String currency;
  final List<LatLngEntity> _directions;
  @override
  List<LatLngEntity> get directions {
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directions);
  }

  @override
  final double walletCredit;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final OrderPreviewPage selectedPage;

  @override
  String toString() {
    return 'OrderPreviewState.loaded(paymentMethods: $paymentMethods, serviceCategories: $serviceCategories, currency: $currency, directions: $directions, walletCredit: $walletCredit, isLoading: $isLoading, selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPreviewLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._paymentMethods, _paymentMethods) &&
            const DeepCollectionEquality()
                .equals(other._serviceCategories, _serviceCategories) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions) &&
            (identical(other.walletCredit, walletCredit) ||
                other.walletCredit == walletCredit) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedPage, selectedPage) ||
                other.selectedPage == selectedPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paymentMethods),
      const DeepCollectionEquality().hash(_serviceCategories),
      currency,
      const DeepCollectionEquality().hash(_directions),
      walletCredit,
      isLoading,
      selectedPage);

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPreviewLoadedStateImplCopyWith<_$OrderPreviewLoadedStateImpl>
      get copyWith => __$$OrderPreviewLoadedStateImplCopyWithImpl<
          _$OrderPreviewLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)
        loaded,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        orderSubmitted,
    required TResult Function(String message) error,
  }) {
    return loaded(paymentMethods, serviceCategories, currency, directions,
        walletCredit, isLoading, selectedPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(paymentMethods, serviceCategories, currency, directions,
        walletCredit, isLoading, selectedPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(paymentMethods, serviceCategories, currency, directions,
          walletCredit, isLoading, selectedPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(OrderPreviewLoadedState value) loaded,
    required TResult Function(_OrderSubmitted value) orderSubmitted,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(OrderPreviewLoadedState value)? loaded,
    TResult? Function(_OrderSubmitted value)? orderSubmitted,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(OrderPreviewLoadedState value)? loaded,
    TResult Function(_OrderSubmitted value)? orderSubmitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class OrderPreviewLoadedState extends OrderPreviewState {
  const factory OrderPreviewLoadedState(
      {required final List<PaymentMethodUnion> paymentMethods,
      required final List<ServiceCategoryEntity> serviceCategories,
      required final String currency,
      required final List<LatLngEntity> directions,
      required final double walletCredit,
      final bool isLoading,
      final OrderPreviewPage selectedPage}) = _$OrderPreviewLoadedStateImpl;
  const OrderPreviewLoadedState._() : super._();

  List<PaymentMethodUnion> get paymentMethods;
  List<ServiceCategoryEntity> get serviceCategories;
  String get currency;
  List<LatLngEntity> get directions;
  double get walletCredit;
  bool get isLoading;
  OrderPreviewPage get selectedPage;

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPreviewLoadedStateImplCopyWith<_$OrderPreviewLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderSubmittedImplCopyWith<$Res> {
  factory _$$OrderSubmittedImplCopyWith(_$OrderSubmittedImpl value,
          $Res Function(_$OrderSubmittedImpl) then) =
      __$$OrderSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderEntity order, DriverLocation? driverLocation});

  $OrderEntityCopyWith<$Res> get order;
  $DriverLocationCopyWith<$Res>? get driverLocation;
}

/// @nodoc
class __$$OrderSubmittedImplCopyWithImpl<$Res>
    extends _$OrderPreviewStateCopyWithImpl<$Res, _$OrderSubmittedImpl>
    implements _$$OrderSubmittedImplCopyWith<$Res> {
  __$$OrderSubmittedImplCopyWithImpl(
      _$OrderSubmittedImpl _value, $Res Function(_$OrderSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? driverLocation = freezed,
  }) {
    return _then(_$OrderSubmittedImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
      driverLocation: freezed == driverLocation
          ? _value.driverLocation
          : driverLocation // ignore: cast_nullable_to_non_nullable
              as DriverLocation?,
    ));
  }

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get order {
    return $OrderEntityCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverLocationCopyWith<$Res>? get driverLocation {
    if (_value.driverLocation == null) {
      return null;
    }

    return $DriverLocationCopyWith<$Res>(_value.driverLocation!, (value) {
      return _then(_value.copyWith(driverLocation: value));
    });
  }
}

/// @nodoc

class _$OrderSubmittedImpl extends _OrderSubmitted {
  const _$OrderSubmittedImpl(
      {required this.order, required this.driverLocation})
      : super._();

  @override
  final OrderEntity order;
  @override
  final DriverLocation? driverLocation;

  @override
  String toString() {
    return 'OrderPreviewState.orderSubmitted(order: $order, driverLocation: $driverLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderSubmittedImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, driverLocation);

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderSubmittedImplCopyWith<_$OrderSubmittedImpl> get copyWith =>
      __$$OrderSubmittedImplCopyWithImpl<_$OrderSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)
        loaded,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        orderSubmitted,
    required TResult Function(String message) error,
  }) {
    return orderSubmitted(order, driverLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult? Function(String message)? error,
  }) {
    return orderSubmitted?.call(order, driverLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (orderSubmitted != null) {
      return orderSubmitted(order, driverLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(OrderPreviewLoadedState value) loaded,
    required TResult Function(_OrderSubmitted value) orderSubmitted,
    required TResult Function(_Error value) error,
  }) {
    return orderSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(OrderPreviewLoadedState value)? loaded,
    TResult? Function(_OrderSubmitted value)? orderSubmitted,
    TResult? Function(_Error value)? error,
  }) {
    return orderSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(OrderPreviewLoadedState value)? loaded,
    TResult Function(_OrderSubmitted value)? orderSubmitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (orderSubmitted != null) {
      return orderSubmitted(this);
    }
    return orElse();
  }
}

abstract class _OrderSubmitted extends OrderPreviewState {
  const factory _OrderSubmitted(
      {required final OrderEntity order,
      required final DriverLocation? driverLocation}) = _$OrderSubmittedImpl;
  const _OrderSubmitted._() : super._();

  OrderEntity get order;
  DriverLocation? get driverLocation;

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderSubmittedImplCopyWith<_$OrderSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$OrderPreviewStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'OrderPreviewState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)
        loaded,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        orderSubmitted,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PaymentMethodUnion> paymentMethods,
            List<ServiceCategoryEntity> serviceCategories,
            String currency,
            List<LatLngEntity> directions,
            double walletCredit,
            bool isLoading,
            OrderPreviewPage selectedPage)?
        loaded,
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        orderSubmitted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(OrderPreviewLoadedState value) loaded,
    required TResult Function(_OrderSubmitted value) orderSubmitted,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(OrderPreviewLoadedState value)? loaded,
    TResult? Function(_OrderSubmitted value)? orderSubmitted,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(OrderPreviewLoadedState value)? loaded,
    TResult Function(_OrderSubmitted value)? orderSubmitted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends OrderPreviewState {
  const factory _Error(final String message) = _$ErrorImpl;
  const _Error._() : super._();

  String get message;

  /// Create a copy of OrderPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
