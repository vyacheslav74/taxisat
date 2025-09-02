// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RateOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(ReviewParameterEntity parameter)
        onParameterTapped,
    required TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)
        onReviewSubmitted,
    required TResult Function(String orderId) skipReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult? Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult? Function(String orderId)? skipReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult Function(String orderId)? skipReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnParameterTapped value) onParameterTapped,
    required TResult Function(_OnReviewSubmitted value) onReviewSubmitted,
    required TResult Function(_SkipReview value) skipReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnParameterTapped value)? onParameterTapped,
    TResult? Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult? Function(_SkipReview value)? skipReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnParameterTapped value)? onParameterTapped,
    TResult Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult Function(_SkipReview value)? skipReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateOrderEventCopyWith<$Res> {
  factory $RateOrderEventCopyWith(
          RateOrderEvent value, $Res Function(RateOrderEvent) then) =
      _$RateOrderEventCopyWithImpl<$Res, RateOrderEvent>;
}

/// @nodoc
class _$RateOrderEventCopyWithImpl<$Res, $Val extends RateOrderEvent>
    implements $RateOrderEventCopyWith<$Res> {
  _$RateOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnStartedImplCopyWith<$Res> {
  factory _$$OnStartedImplCopyWith(
          _$OnStartedImpl value, $Res Function(_$OnStartedImpl) then) =
      __$$OnStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnStartedImplCopyWithImpl<$Res>
    extends _$RateOrderEventCopyWithImpl<$Res, _$OnStartedImpl>
    implements _$$OnStartedImplCopyWith<$Res> {
  __$$OnStartedImplCopyWithImpl(
      _$OnStartedImpl _value, $Res Function(_$OnStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnStartedImpl implements _OnStarted {
  const _$OnStartedImpl();

  @override
  String toString() {
    return 'RateOrderEvent.onStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(ReviewParameterEntity parameter)
        onParameterTapped,
    required TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)
        onReviewSubmitted,
    required TResult Function(String orderId) skipReview,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult? Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult? Function(String orderId)? skipReview,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult Function(String orderId)? skipReview,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnParameterTapped value) onParameterTapped,
    required TResult Function(_OnReviewSubmitted value) onReviewSubmitted,
    required TResult Function(_SkipReview value) skipReview,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnParameterTapped value)? onParameterTapped,
    TResult? Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult? Function(_SkipReview value)? skipReview,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnParameterTapped value)? onParameterTapped,
    TResult Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult Function(_SkipReview value)? skipReview,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements RateOrderEvent {
  const factory _OnStarted() = _$OnStartedImpl;
}

/// @nodoc
abstract class _$$OnParameterTappedImplCopyWith<$Res> {
  factory _$$OnParameterTappedImplCopyWith(_$OnParameterTappedImpl value,
          $Res Function(_$OnParameterTappedImpl) then) =
      __$$OnParameterTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReviewParameterEntity parameter});

  $ReviewParameterEntityCopyWith<$Res> get parameter;
}

/// @nodoc
class __$$OnParameterTappedImplCopyWithImpl<$Res>
    extends _$RateOrderEventCopyWithImpl<$Res, _$OnParameterTappedImpl>
    implements _$$OnParameterTappedImplCopyWith<$Res> {
  __$$OnParameterTappedImplCopyWithImpl(_$OnParameterTappedImpl _value,
      $Res Function(_$OnParameterTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parameter = null,
  }) {
    return _then(_$OnParameterTappedImpl(
      parameter: null == parameter
          ? _value.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as ReviewParameterEntity,
    ));
  }

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewParameterEntityCopyWith<$Res> get parameter {
    return $ReviewParameterEntityCopyWith<$Res>(_value.parameter, (value) {
      return _then(_value.copyWith(parameter: value));
    });
  }
}

/// @nodoc

class _$OnParameterTappedImpl implements _OnParameterTapped {
  const _$OnParameterTappedImpl({required this.parameter});

  @override
  final ReviewParameterEntity parameter;

  @override
  String toString() {
    return 'RateOrderEvent.onParameterTapped(parameter: $parameter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnParameterTappedImpl &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parameter);

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnParameterTappedImplCopyWith<_$OnParameterTappedImpl> get copyWith =>
      __$$OnParameterTappedImplCopyWithImpl<_$OnParameterTappedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(ReviewParameterEntity parameter)
        onParameterTapped,
    required TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)
        onReviewSubmitted,
    required TResult Function(String orderId) skipReview,
  }) {
    return onParameterTapped(parameter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult? Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult? Function(String orderId)? skipReview,
  }) {
    return onParameterTapped?.call(parameter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult Function(String orderId)? skipReview,
    required TResult orElse(),
  }) {
    if (onParameterTapped != null) {
      return onParameterTapped(parameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnParameterTapped value) onParameterTapped,
    required TResult Function(_OnReviewSubmitted value) onReviewSubmitted,
    required TResult Function(_SkipReview value) skipReview,
  }) {
    return onParameterTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnParameterTapped value)? onParameterTapped,
    TResult? Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult? Function(_SkipReview value)? skipReview,
  }) {
    return onParameterTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnParameterTapped value)? onParameterTapped,
    TResult Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult Function(_SkipReview value)? skipReview,
    required TResult orElse(),
  }) {
    if (onParameterTapped != null) {
      return onParameterTapped(this);
    }
    return orElse();
  }
}

abstract class _OnParameterTapped implements RateOrderEvent {
  const factory _OnParameterTapped(
          {required final ReviewParameterEntity parameter}) =
      _$OnParameterTappedImpl;

  ReviewParameterEntity get parameter;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnParameterTappedImplCopyWith<_$OnParameterTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnReviewSubmittedImplCopyWith<$Res> {
  factory _$$OnReviewSubmittedImplCopyWith(_$OnReviewSubmittedImpl value,
          $Res Function(_$OnReviewSubmittedImpl) then) =
      __$$OnReviewSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String orderId,
      int rating,
      String? comment,
      List<ReviewParameterEntity> parameters,
      bool isFavorite});
}

/// @nodoc
class __$$OnReviewSubmittedImplCopyWithImpl<$Res>
    extends _$RateOrderEventCopyWithImpl<$Res, _$OnReviewSubmittedImpl>
    implements _$$OnReviewSubmittedImplCopyWith<$Res> {
  __$$OnReviewSubmittedImplCopyWithImpl(_$OnReviewSubmittedImpl _value,
      $Res Function(_$OnReviewSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? parameters = null,
    Object? isFavorite = null,
  }) {
    return _then(_$OnReviewSubmittedImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ReviewParameterEntity>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnReviewSubmittedImpl implements _OnReviewSubmitted {
  const _$OnReviewSubmittedImpl(
      {required this.orderId,
      required this.rating,
      required this.comment,
      required final List<ReviewParameterEntity> parameters,
      required this.isFavorite})
      : _parameters = parameters;

  @override
  final String orderId;
  @override
  final int rating;
  @override
  final String? comment;
  final List<ReviewParameterEntity> _parameters;
  @override
  List<ReviewParameterEntity> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'RateOrderEvent.onReviewSubmitted(orderId: $orderId, rating: $rating, comment: $comment, parameters: $parameters, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnReviewSubmittedImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, rating, comment,
      const DeepCollectionEquality().hash(_parameters), isFavorite);

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnReviewSubmittedImplCopyWith<_$OnReviewSubmittedImpl> get copyWith =>
      __$$OnReviewSubmittedImplCopyWithImpl<_$OnReviewSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(ReviewParameterEntity parameter)
        onParameterTapped,
    required TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)
        onReviewSubmitted,
    required TResult Function(String orderId) skipReview,
  }) {
    return onReviewSubmitted(orderId, rating, comment, parameters, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult? Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult? Function(String orderId)? skipReview,
  }) {
    return onReviewSubmitted?.call(
        orderId, rating, comment, parameters, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult Function(String orderId)? skipReview,
    required TResult orElse(),
  }) {
    if (onReviewSubmitted != null) {
      return onReviewSubmitted(
          orderId, rating, comment, parameters, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnParameterTapped value) onParameterTapped,
    required TResult Function(_OnReviewSubmitted value) onReviewSubmitted,
    required TResult Function(_SkipReview value) skipReview,
  }) {
    return onReviewSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnParameterTapped value)? onParameterTapped,
    TResult? Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult? Function(_SkipReview value)? skipReview,
  }) {
    return onReviewSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnParameterTapped value)? onParameterTapped,
    TResult Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult Function(_SkipReview value)? skipReview,
    required TResult orElse(),
  }) {
    if (onReviewSubmitted != null) {
      return onReviewSubmitted(this);
    }
    return orElse();
  }
}

abstract class _OnReviewSubmitted implements RateOrderEvent {
  const factory _OnReviewSubmitted(
      {required final String orderId,
      required final int rating,
      required final String? comment,
      required final List<ReviewParameterEntity> parameters,
      required final bool isFavorite}) = _$OnReviewSubmittedImpl;

  String get orderId;
  int get rating;
  String? get comment;
  List<ReviewParameterEntity> get parameters;
  bool get isFavorite;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnReviewSubmittedImplCopyWith<_$OnReviewSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SkipReviewImplCopyWith<$Res> {
  factory _$$SkipReviewImplCopyWith(
          _$SkipReviewImpl value, $Res Function(_$SkipReviewImpl) then) =
      __$$SkipReviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$SkipReviewImplCopyWithImpl<$Res>
    extends _$RateOrderEventCopyWithImpl<$Res, _$SkipReviewImpl>
    implements _$$SkipReviewImplCopyWith<$Res> {
  __$$SkipReviewImplCopyWithImpl(
      _$SkipReviewImpl _value, $Res Function(_$SkipReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$SkipReviewImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SkipReviewImpl implements _SkipReview {
  const _$SkipReviewImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'RateOrderEvent.skipReview(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkipReviewImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SkipReviewImplCopyWith<_$SkipReviewImpl> get copyWith =>
      __$$SkipReviewImplCopyWithImpl<_$SkipReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(ReviewParameterEntity parameter)
        onParameterTapped,
    required TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)
        onReviewSubmitted,
    required TResult Function(String orderId) skipReview,
  }) {
    return skipReview(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult? Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult? Function(String orderId)? skipReview,
  }) {
    return skipReview?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(ReviewParameterEntity parameter)? onParameterTapped,
    TResult Function(String orderId, int rating, String? comment,
            List<ReviewParameterEntity> parameters, bool isFavorite)?
        onReviewSubmitted,
    TResult Function(String orderId)? skipReview,
    required TResult orElse(),
  }) {
    if (skipReview != null) {
      return skipReview(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnParameterTapped value) onParameterTapped,
    required TResult Function(_OnReviewSubmitted value) onReviewSubmitted,
    required TResult Function(_SkipReview value) skipReview,
  }) {
    return skipReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnParameterTapped value)? onParameterTapped,
    TResult? Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult? Function(_SkipReview value)? skipReview,
  }) {
    return skipReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnParameterTapped value)? onParameterTapped,
    TResult Function(_OnReviewSubmitted value)? onReviewSubmitted,
    TResult Function(_SkipReview value)? skipReview,
    required TResult orElse(),
  }) {
    if (skipReview != null) {
      return skipReview(this);
    }
    return orElse();
  }
}

abstract class _SkipReview implements RateOrderEvent {
  const factory _SkipReview({required final String orderId}) = _$SkipReviewImpl;

  String get orderId;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SkipReviewImplCopyWith<_$SkipReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RateOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)
        parametersLoaded,
    required TResult Function() reviewSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult? Function()? reviewSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult Function()? reviewSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ParametersLoaded value) parametersLoaded,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ParametersLoaded value)? parametersLoaded,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ParametersLoaded value)? parametersLoaded,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateOrderStateCopyWith<$Res> {
  factory $RateOrderStateCopyWith(
          RateOrderState value, $Res Function(RateOrderState) then) =
      _$RateOrderStateCopyWithImpl<$Res, RateOrderState>;
}

/// @nodoc
class _$RateOrderStateCopyWithImpl<$Res, $Val extends RateOrderState>
    implements $RateOrderStateCopyWith<$Res> {
  _$RateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateOrderState
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
    extends _$RateOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RateOrderState.initial()';
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
    required TResult Function(String message) error,
    required TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)
        parametersLoaded,
    required TResult Function() reviewSubmitted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult? Function()? reviewSubmitted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult Function()? reviewSubmitted,
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
    required TResult Function(_Error value) error,
    required TResult Function(ParametersLoaded value) parametersLoaded,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ParametersLoaded value)? parametersLoaded,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ParametersLoaded value)? parametersLoaded,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RateOrderState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RateOrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RateOrderState.loading()';
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
    required TResult Function(String message) error,
    required TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)
        parametersLoaded,
    required TResult Function() reviewSubmitted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult? Function()? reviewSubmitted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult Function()? reviewSubmitted,
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
    required TResult Function(_Error value) error,
    required TResult Function(ParametersLoaded value) parametersLoaded,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ParametersLoaded value)? parametersLoaded,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ParametersLoaded value)? parametersLoaded,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RateOrderState {
  const factory _Loading() = _$LoadingImpl;
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
    extends _$RateOrderStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RateOrderState.error(message: $message)';
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

  /// Create a copy of RateOrderState
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
    required TResult Function(String message) error,
    required TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)
        parametersLoaded,
    required TResult Function() reviewSubmitted,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult? Function()? reviewSubmitted,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult Function()? reviewSubmitted,
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
    required TResult Function(_Error value) error,
    required TResult Function(ParametersLoaded value) parametersLoaded,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ParametersLoaded value)? parametersLoaded,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ParametersLoaded value)? parametersLoaded,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RateOrderState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParametersLoadedImplCopyWith<$Res> {
  factory _$$ParametersLoadedImplCopyWith(_$ParametersLoadedImpl value,
          $Res Function(_$ParametersLoadedImpl) then) =
      __$$ParametersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ReviewParameterEntity> strengthParameters,
      List<ReviewParameterEntity> weaknessParameters,
      List<ReviewParameterEntity> selectedParameters});
}

/// @nodoc
class __$$ParametersLoadedImplCopyWithImpl<$Res>
    extends _$RateOrderStateCopyWithImpl<$Res, _$ParametersLoadedImpl>
    implements _$$ParametersLoadedImplCopyWith<$Res> {
  __$$ParametersLoadedImplCopyWithImpl(_$ParametersLoadedImpl _value,
      $Res Function(_$ParametersLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strengthParameters = null,
    Object? weaknessParameters = null,
    Object? selectedParameters = null,
  }) {
    return _then(_$ParametersLoadedImpl(
      strengthParameters: null == strengthParameters
          ? _value._strengthParameters
          : strengthParameters // ignore: cast_nullable_to_non_nullable
              as List<ReviewParameterEntity>,
      weaknessParameters: null == weaknessParameters
          ? _value._weaknessParameters
          : weaknessParameters // ignore: cast_nullable_to_non_nullable
              as List<ReviewParameterEntity>,
      selectedParameters: null == selectedParameters
          ? _value._selectedParameters
          : selectedParameters // ignore: cast_nullable_to_non_nullable
              as List<ReviewParameterEntity>,
    ));
  }
}

/// @nodoc

class _$ParametersLoadedImpl implements ParametersLoaded {
  const _$ParametersLoadedImpl(
      {required final List<ReviewParameterEntity> strengthParameters,
      required final List<ReviewParameterEntity> weaknessParameters,
      final List<ReviewParameterEntity> selectedParameters = const []})
      : _strengthParameters = strengthParameters,
        _weaknessParameters = weaknessParameters,
        _selectedParameters = selectedParameters;

  final List<ReviewParameterEntity> _strengthParameters;
  @override
  List<ReviewParameterEntity> get strengthParameters {
    if (_strengthParameters is EqualUnmodifiableListView)
      return _strengthParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strengthParameters);
  }

  final List<ReviewParameterEntity> _weaknessParameters;
  @override
  List<ReviewParameterEntity> get weaknessParameters {
    if (_weaknessParameters is EqualUnmodifiableListView)
      return _weaknessParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaknessParameters);
  }

  final List<ReviewParameterEntity> _selectedParameters;
  @override
  @JsonKey()
  List<ReviewParameterEntity> get selectedParameters {
    if (_selectedParameters is EqualUnmodifiableListView)
      return _selectedParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedParameters);
  }

  @override
  String toString() {
    return 'RateOrderState.parametersLoaded(strengthParameters: $strengthParameters, weaknessParameters: $weaknessParameters, selectedParameters: $selectedParameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParametersLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._strengthParameters, _strengthParameters) &&
            const DeepCollectionEquality()
                .equals(other._weaknessParameters, _weaknessParameters) &&
            const DeepCollectionEquality()
                .equals(other._selectedParameters, _selectedParameters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_strengthParameters),
      const DeepCollectionEquality().hash(_weaknessParameters),
      const DeepCollectionEquality().hash(_selectedParameters));

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParametersLoadedImplCopyWith<_$ParametersLoadedImpl> get copyWith =>
      __$$ParametersLoadedImplCopyWithImpl<_$ParametersLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)
        parametersLoaded,
    required TResult Function() reviewSubmitted,
  }) {
    return parametersLoaded(
        strengthParameters, weaknessParameters, selectedParameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult? Function()? reviewSubmitted,
  }) {
    return parametersLoaded?.call(
        strengthParameters, weaknessParameters, selectedParameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult Function()? reviewSubmitted,
    required TResult orElse(),
  }) {
    if (parametersLoaded != null) {
      return parametersLoaded(
          strengthParameters, weaknessParameters, selectedParameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ParametersLoaded value) parametersLoaded,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
  }) {
    return parametersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ParametersLoaded value)? parametersLoaded,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
  }) {
    return parametersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ParametersLoaded value)? parametersLoaded,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    required TResult orElse(),
  }) {
    if (parametersLoaded != null) {
      return parametersLoaded(this);
    }
    return orElse();
  }
}

abstract class ParametersLoaded implements RateOrderState {
  const factory ParametersLoaded(
          {required final List<ReviewParameterEntity> strengthParameters,
          required final List<ReviewParameterEntity> weaknessParameters,
          final List<ReviewParameterEntity> selectedParameters}) =
      _$ParametersLoadedImpl;

  List<ReviewParameterEntity> get strengthParameters;
  List<ReviewParameterEntity> get weaknessParameters;
  List<ReviewParameterEntity> get selectedParameters;

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParametersLoadedImplCopyWith<_$ParametersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewSubmittedImplCopyWith<$Res> {
  factory _$$ReviewSubmittedImplCopyWith(_$ReviewSubmittedImpl value,
          $Res Function(_$ReviewSubmittedImpl) then) =
      __$$ReviewSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewSubmittedImplCopyWithImpl<$Res>
    extends _$RateOrderStateCopyWithImpl<$Res, _$ReviewSubmittedImpl>
    implements _$$ReviewSubmittedImplCopyWith<$Res> {
  __$$ReviewSubmittedImplCopyWithImpl(
      _$ReviewSubmittedImpl _value, $Res Function(_$ReviewSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReviewSubmittedImpl implements _ReviewSubmitted {
  const _$ReviewSubmittedImpl();

  @override
  String toString() {
    return 'RateOrderState.reviewSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)
        parametersLoaded,
    required TResult Function() reviewSubmitted,
  }) {
    return reviewSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult? Function()? reviewSubmitted,
  }) {
    return reviewSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(
            List<ReviewParameterEntity> strengthParameters,
            List<ReviewParameterEntity> weaknessParameters,
            List<ReviewParameterEntity> selectedParameters)?
        parametersLoaded,
    TResult Function()? reviewSubmitted,
    required TResult orElse(),
  }) {
    if (reviewSubmitted != null) {
      return reviewSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(ParametersLoaded value) parametersLoaded,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
  }) {
    return reviewSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(ParametersLoaded value)? parametersLoaded,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
  }) {
    return reviewSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(ParametersLoaded value)? parametersLoaded,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    required TResult orElse(),
  }) {
    if (reviewSubmitted != null) {
      return reviewSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ReviewSubmitted implements RateOrderState {
  const factory _ReviewSubmitted() = _$ReviewSubmittedImpl;
}
