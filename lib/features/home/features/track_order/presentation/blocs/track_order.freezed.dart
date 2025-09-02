// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        onStarted,
    required TResult Function(String? cancelReasonId, String? cancelReasonNote)
        cancelRide,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function(TrackOrderPage page) changePage,
    required TResult Function() hideChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult? Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function(TrackOrderPage page)? changePage,
    TResult? Function()? hideChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function(TrackOrderPage page)? changePage,
    TResult Function()? hideChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_CancelRide value) cancelRide,
    required TResult Function(_SendMessage value) messageSent,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_HideChat value) hideChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_CancelRide value)? cancelRide,
    TResult? Function(_SendMessage value)? messageSent,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_HideChat value)? hideChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_CancelRide value)? cancelRide,
    TResult Function(_SendMessage value)? messageSent,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_HideChat value)? hideChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderEventCopyWith<$Res> {
  factory $TrackOrderEventCopyWith(
          TrackOrderEvent value, $Res Function(TrackOrderEvent) then) =
      _$TrackOrderEventCopyWithImpl<$Res, TrackOrderEvent>;
}

/// @nodoc
class _$TrackOrderEventCopyWithImpl<$Res, $Val extends TrackOrderEvent>
    implements $TrackOrderEventCopyWith<$Res> {
  _$TrackOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnStartedImplCopyWith<$Res> {
  factory _$$OnStartedImplCopyWith(
          _$OnStartedImpl value, $Res Function(_$OnStartedImpl) then) =
      __$$OnStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderEntity order, DriverLocation? driverLocation});

  $OrderEntityCopyWith<$Res> get order;
  $DriverLocationCopyWith<$Res>? get driverLocation;
}

/// @nodoc
class __$$OnStartedImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$OnStartedImpl>
    implements _$$OnStartedImplCopyWith<$Res> {
  __$$OnStartedImplCopyWithImpl(
      _$OnStartedImpl _value, $Res Function(_$OnStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? driverLocation = freezed,
  }) {
    return _then(_$OnStartedImpl(
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

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get order {
    return $OrderEntityCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }

  /// Create a copy of TrackOrderEvent
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

class _$OnStartedImpl extends _OnStarted {
  const _$OnStartedImpl({required this.order, required this.driverLocation})
      : super._();

  @override
  final OrderEntity order;
  @override
  final DriverLocation? driverLocation;

  @override
  String toString() {
    return 'TrackOrderEvent.onStarted(order: $order, driverLocation: $driverLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStartedImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, driverLocation);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      __$$OnStartedImplCopyWithImpl<_$OnStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        onStarted,
    required TResult Function(String? cancelReasonId, String? cancelReasonNote)
        cancelRide,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function(TrackOrderPage page) changePage,
    required TResult Function() hideChat,
  }) {
    return onStarted(order, driverLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult? Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function(TrackOrderPage page)? changePage,
    TResult? Function()? hideChat,
  }) {
    return onStarted?.call(order, driverLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function(TrackOrderPage page)? changePage,
    TResult Function()? hideChat,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(order, driverLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_CancelRide value) cancelRide,
    required TResult Function(_SendMessage value) messageSent,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_HideChat value) hideChat,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_CancelRide value)? cancelRide,
    TResult? Function(_SendMessage value)? messageSent,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_HideChat value)? hideChat,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_CancelRide value)? cancelRide,
    TResult Function(_SendMessage value)? messageSent,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_HideChat value)? hideChat,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted extends TrackOrderEvent {
  const factory _OnStarted(
      {required final OrderEntity order,
      required final DriverLocation? driverLocation}) = _$OnStartedImpl;
  const _OnStarted._() : super._();

  OrderEntity get order;
  DriverLocation? get driverLocation;

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelRideImplCopyWith<$Res> {
  factory _$$CancelRideImplCopyWith(
          _$CancelRideImpl value, $Res Function(_$CancelRideImpl) then) =
      __$$CancelRideImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? cancelReasonId, String? cancelReasonNote});
}

/// @nodoc
class __$$CancelRideImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$CancelRideImpl>
    implements _$$CancelRideImplCopyWith<$Res> {
  __$$CancelRideImplCopyWithImpl(
      _$CancelRideImpl _value, $Res Function(_$CancelRideImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancelReasonId = freezed,
    Object? cancelReasonNote = freezed,
  }) {
    return _then(_$CancelRideImpl(
      cancelReasonId: freezed == cancelReasonId
          ? _value.cancelReasonId
          : cancelReasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReasonNote: freezed == cancelReasonNote
          ? _value.cancelReasonNote
          : cancelReasonNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CancelRideImpl extends _CancelRide {
  const _$CancelRideImpl(
      {required this.cancelReasonId, required this.cancelReasonNote})
      : super._();

  @override
  final String? cancelReasonId;
  @override
  final String? cancelReasonNote;

  @override
  String toString() {
    return 'TrackOrderEvent.cancelRide(cancelReasonId: $cancelReasonId, cancelReasonNote: $cancelReasonNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelRideImpl &&
            (identical(other.cancelReasonId, cancelReasonId) ||
                other.cancelReasonId == cancelReasonId) &&
            (identical(other.cancelReasonNote, cancelReasonNote) ||
                other.cancelReasonNote == cancelReasonNote));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cancelReasonId, cancelReasonNote);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelRideImplCopyWith<_$CancelRideImpl> get copyWith =>
      __$$CancelRideImplCopyWithImpl<_$CancelRideImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        onStarted,
    required TResult Function(String? cancelReasonId, String? cancelReasonNote)
        cancelRide,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function(TrackOrderPage page) changePage,
    required TResult Function() hideChat,
  }) {
    return cancelRide(cancelReasonId, cancelReasonNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult? Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function(TrackOrderPage page)? changePage,
    TResult? Function()? hideChat,
  }) {
    return cancelRide?.call(cancelReasonId, cancelReasonNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function(TrackOrderPage page)? changePage,
    TResult Function()? hideChat,
    required TResult orElse(),
  }) {
    if (cancelRide != null) {
      return cancelRide(cancelReasonId, cancelReasonNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_CancelRide value) cancelRide,
    required TResult Function(_SendMessage value) messageSent,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_HideChat value) hideChat,
  }) {
    return cancelRide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_CancelRide value)? cancelRide,
    TResult? Function(_SendMessage value)? messageSent,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_HideChat value)? hideChat,
  }) {
    return cancelRide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_CancelRide value)? cancelRide,
    TResult Function(_SendMessage value)? messageSent,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_HideChat value)? hideChat,
    required TResult orElse(),
  }) {
    if (cancelRide != null) {
      return cancelRide(this);
    }
    return orElse();
  }
}

abstract class _CancelRide extends TrackOrderEvent {
  const factory _CancelRide(
      {required final String? cancelReasonId,
      required final String? cancelReasonNote}) = _$CancelRideImpl;
  const _CancelRide._() : super._();

  String? get cancelReasonId;
  String? get cancelReasonNote;

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelRideImplCopyWith<_$CancelRideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageEntity message});

  $ChatMessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity,
    ));
  }

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageEntityCopyWith<$Res> get message {
    return $ChatMessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$SendMessageImpl extends _SendMessage {
  const _$SendMessageImpl({required this.message}) : super._();

  @override
  final ChatMessageEntity message;

  @override
  String toString() {
    return 'TrackOrderEvent.messageSent(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        onStarted,
    required TResult Function(String? cancelReasonId, String? cancelReasonNote)
        cancelRide,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function(TrackOrderPage page) changePage,
    required TResult Function() hideChat,
  }) {
    return messageSent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult? Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function(TrackOrderPage page)? changePage,
    TResult? Function()? hideChat,
  }) {
    return messageSent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function(TrackOrderPage page)? changePage,
    TResult Function()? hideChat,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_CancelRide value) cancelRide,
    required TResult Function(_SendMessage value) messageSent,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_HideChat value) hideChat,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_CancelRide value)? cancelRide,
    TResult? Function(_SendMessage value)? messageSent,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_HideChat value)? hideChat,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_CancelRide value)? cancelRide,
    TResult Function(_SendMessage value)? messageSent,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_HideChat value)? hideChat,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _SendMessage extends TrackOrderEvent {
  const factory _SendMessage({required final ChatMessageEntity message}) =
      _$SendMessageImpl;
  const _SendMessage._() : super._();

  ChatMessageEntity get message;

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackOrderPage page});

  $TrackOrderPageCopyWith<$Res> get page;
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$ChangePageImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as TrackOrderPage,
    ));
  }

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackOrderPageCopyWith<$Res> get page {
    return $TrackOrderPageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc

class _$ChangePageImpl extends _ChangePage {
  const _$ChangePageImpl(this.page) : super._();

  @override
  final TrackOrderPage page;

  @override
  String toString() {
    return 'TrackOrderEvent.changePage(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        onStarted,
    required TResult Function(String? cancelReasonId, String? cancelReasonNote)
        cancelRide,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function(TrackOrderPage page) changePage,
    required TResult Function() hideChat,
  }) {
    return changePage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult? Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function(TrackOrderPage page)? changePage,
    TResult? Function()? hideChat,
  }) {
    return changePage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function(TrackOrderPage page)? changePage,
    TResult Function()? hideChat,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_CancelRide value) cancelRide,
    required TResult Function(_SendMessage value) messageSent,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_HideChat value) hideChat,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_CancelRide value)? cancelRide,
    TResult? Function(_SendMessage value)? messageSent,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_HideChat value)? hideChat,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_CancelRide value)? cancelRide,
    TResult Function(_SendMessage value)? messageSent,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_HideChat value)? hideChat,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage extends TrackOrderEvent {
  const factory _ChangePage(final TrackOrderPage page) = _$ChangePageImpl;
  const _ChangePage._() : super._();

  TrackOrderPage get page;

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideChatImplCopyWith<$Res> {
  factory _$$HideChatImplCopyWith(
          _$HideChatImpl value, $Res Function(_$HideChatImpl) then) =
      __$$HideChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideChatImplCopyWithImpl<$Res>
    extends _$TrackOrderEventCopyWithImpl<$Res, _$HideChatImpl>
    implements _$$HideChatImplCopyWith<$Res> {
  __$$HideChatImplCopyWithImpl(
      _$HideChatImpl _value, $Res Function(_$HideChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideChatImpl extends _HideChat {
  const _$HideChatImpl() : super._();

  @override
  String toString() {
    return 'TrackOrderEvent.hideChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
        onStarted,
    required TResult Function(String? cancelReasonId, String? cancelReasonNote)
        cancelRide,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function(TrackOrderPage page) changePage,
    required TResult Function() hideChat,
  }) {
    return hideChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult? Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function(TrackOrderPage page)? changePage,
    TResult? Function()? hideChat,
  }) {
    return hideChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderEntity order, DriverLocation? driverLocation)?
        onStarted,
    TResult Function(String? cancelReasonId, String? cancelReasonNote)?
        cancelRide,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function(TrackOrderPage page)? changePage,
    TResult Function()? hideChat,
    required TResult orElse(),
  }) {
    if (hideChat != null) {
      return hideChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_CancelRide value) cancelRide,
    required TResult Function(_SendMessage value) messageSent,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_HideChat value) hideChat,
  }) {
    return hideChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_CancelRide value)? cancelRide,
    TResult? Function(_SendMessage value)? messageSent,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_HideChat value)? hideChat,
  }) {
    return hideChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_CancelRide value)? cancelRide,
    TResult Function(_SendMessage value)? messageSent,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_HideChat value)? hideChat,
    required TResult orElse(),
  }) {
    if (hideChat != null) {
      return hideChat(this);
    }
    return orElse();
  }
}

abstract class _HideChat extends TrackOrderEvent {
  const factory _HideChat() = _$HideChatImpl;
  const _HideChat._() : super._();
}

TrackOrderState _$TrackOrderStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _Initial.fromJson(json);
    case 'orderInProgres':
      return _OrderInProgress.fromJson(json);
    case 'done':
      return _Done.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TrackOrderState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TrackOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)
        orderInProgres,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)?
        orderInProgres,
    TResult? Function()? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)?
        orderInProgres,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OrderInProgress value) orderInProgres,
    required TResult Function(_Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderInProgress value)? orderInProgres,
    TResult? Function(_Done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderInProgress value)? orderInProgres,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TrackOrderState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderStateCopyWith<$Res> {
  factory $TrackOrderStateCopyWith(
          TrackOrderState value, $Res Function(TrackOrderState) then) =
      _$TrackOrderStateCopyWithImpl<$Res, TrackOrderState>;
}

/// @nodoc
class _$TrackOrderStateCopyWithImpl<$Res, $Val extends TrackOrderState>
    implements $TrackOrderStateCopyWith<$Res> {
  _$TrackOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackOrderState
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
    extends _$TrackOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl extends _Initial {
  const _$InitialImpl({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackOrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)
        orderInProgres,
    required TResult Function() done,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)?
        orderInProgres,
    TResult? Function()? done,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)?
        orderInProgres,
    TResult Function()? done,
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
    required TResult Function(_OrderInProgress value) orderInProgres,
    required TResult Function(_Done value) done,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderInProgress value)? orderInProgres,
    TResult? Function(_Done value)? done,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderInProgress value)? orderInProgres,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class _Initial extends TrackOrderState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();

  factory _Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;
}

/// @nodoc
abstract class _$$OrderInProgressImplCopyWith<$Res> {
  factory _$$OrderInProgressImplCopyWith(_$OrderInProgressImpl value,
          $Res Function(_$OrderInProgressImpl) then) =
      __$$OrderInProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {OrderEntity order,
      DriverLocation? driverLocation,
      TrackOrderPage page,
      String? error});

  $OrderEntityCopyWith<$Res> get order;
  $DriverLocationCopyWith<$Res>? get driverLocation;
  $TrackOrderPageCopyWith<$Res> get page;
}

/// @nodoc
class __$$OrderInProgressImplCopyWithImpl<$Res>
    extends _$TrackOrderStateCopyWithImpl<$Res, _$OrderInProgressImpl>
    implements _$$OrderInProgressImplCopyWith<$Res> {
  __$$OrderInProgressImplCopyWithImpl(
      _$OrderInProgressImpl _value, $Res Function(_$OrderInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? driverLocation = freezed,
    Object? page = null,
    Object? error = freezed,
  }) {
    return _then(_$OrderInProgressImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
      driverLocation: freezed == driverLocation
          ? _value.driverLocation
          : driverLocation // ignore: cast_nullable_to_non_nullable
              as DriverLocation?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as TrackOrderPage,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TrackOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get order {
    return $OrderEntityCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }

  /// Create a copy of TrackOrderState
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

  /// Create a copy of TrackOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrackOrderPageCopyWith<$Res> get page {
    return $TrackOrderPageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderInProgressImpl extends _OrderInProgress {
  const _$OrderInProgressImpl(
      {required this.order,
      required this.driverLocation,
      required this.page,
      this.error,
      final String? $type})
      : $type = $type ?? 'orderInProgres',
        super._();

  factory _$OrderInProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderInProgressImplFromJson(json);

  @override
  final OrderEntity order;
  @override
  final DriverLocation? driverLocation;
  @override
  final TrackOrderPage page;
  @override
  final String? error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackOrderState.orderInProgres(order: $order, driverLocation: $driverLocation, page: $page, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderInProgressImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, order, driverLocation, page, error);

  /// Create a copy of TrackOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderInProgressImplCopyWith<_$OrderInProgressImpl> get copyWith =>
      __$$OrderInProgressImplCopyWithImpl<_$OrderInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)
        orderInProgres,
    required TResult Function() done,
  }) {
    return orderInProgres(order, driverLocation, page, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)?
        orderInProgres,
    TResult? Function()? done,
  }) {
    return orderInProgres?.call(order, driverLocation, page, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)?
        orderInProgres,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (orderInProgres != null) {
      return orderInProgres(order, driverLocation, page, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OrderInProgress value) orderInProgres,
    required TResult Function(_Done value) done,
  }) {
    return orderInProgres(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderInProgress value)? orderInProgres,
    TResult? Function(_Done value)? done,
  }) {
    return orderInProgres?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderInProgress value)? orderInProgres,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (orderInProgres != null) {
      return orderInProgres(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderInProgressImplToJson(
      this,
    );
  }
}

abstract class _OrderInProgress extends TrackOrderState {
  const factory _OrderInProgress(
      {required final OrderEntity order,
      required final DriverLocation? driverLocation,
      required final TrackOrderPage page,
      final String? error}) = _$OrderInProgressImpl;
  const _OrderInProgress._() : super._();

  factory _OrderInProgress.fromJson(Map<String, dynamic> json) =
      _$OrderInProgressImpl.fromJson;

  OrderEntity get order;
  DriverLocation? get driverLocation;
  TrackOrderPage get page;
  String? get error;

  /// Create a copy of TrackOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderInProgressImplCopyWith<_$OrderInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoneImplCopyWith<$Res> {
  factory _$$DoneImplCopyWith(
          _$DoneImpl value, $Res Function(_$DoneImpl) then) =
      __$$DoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneImplCopyWithImpl<$Res>
    extends _$TrackOrderStateCopyWithImpl<$Res, _$DoneImpl>
    implements _$$DoneImplCopyWith<$Res> {
  __$$DoneImplCopyWithImpl(_$DoneImpl _value, $Res Function(_$DoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$DoneImpl extends _Done {
  const _$DoneImpl({final String? $type})
      : $type = $type ?? 'done',
        super._();

  factory _$DoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoneImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackOrderState.done()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoneImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)
        orderInProgres,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)?
        orderInProgres,
    TResult? Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderEntity order, DriverLocation? driverLocation,
            TrackOrderPage page, String? error)?
        orderInProgres,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OrderInProgress value) orderInProgres,
    required TResult Function(_Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OrderInProgress value)? orderInProgres,
    TResult? Function(_Done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OrderInProgress value)? orderInProgres,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DoneImplToJson(
      this,
    );
  }
}

abstract class _Done extends TrackOrderState {
  const factory _Done() = _$DoneImpl;
  const _Done._() : super._();

  factory _Done.fromJson(Map<String, dynamic> json) = _$DoneImpl.fromJson;
}

TrackOrderPage _$TrackOrderPageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'overview':
      return _Overview.fromJson(json);
    case 'chat':
      return _Chat.fromJson(json);
    case 'payment':
      return _Payment.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TrackOrderPage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TrackOrderPage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TrackOrderPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackOrderPageCopyWith<$Res> {
  factory $TrackOrderPageCopyWith(
          TrackOrderPage value, $Res Function(TrackOrderPage) then) =
      _$TrackOrderPageCopyWithImpl<$Res, TrackOrderPage>;
}

/// @nodoc
class _$TrackOrderPageCopyWithImpl<$Res, $Val extends TrackOrderPage>
    implements $TrackOrderPageCopyWith<$Res> {
  _$TrackOrderPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackOrderPage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OverviewImplCopyWith<$Res> {
  factory _$$OverviewImplCopyWith(
          _$OverviewImpl value, $Res Function(_$OverviewImpl) then) =
      __$$OverviewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OverviewImplCopyWithImpl<$Res>
    extends _$TrackOrderPageCopyWithImpl<$Res, _$OverviewImpl>
    implements _$$OverviewImplCopyWith<$Res> {
  __$$OverviewImplCopyWithImpl(
      _$OverviewImpl _value, $Res Function(_$OverviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderPage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$OverviewImpl implements _Overview {
  const _$OverviewImpl({final String? $type}) : $type = $type ?? 'overview';

  factory _$OverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackOrderPage.overview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OverviewImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
  }) {
    return overview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
  }) {
    return overview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    required TResult orElse(),
  }) {
    if (overview != null) {
      return overview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
  }) {
    return overview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
  }) {
    return overview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    required TResult orElse(),
  }) {
    if (overview != null) {
      return overview(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewImplToJson(
      this,
    );
  }
}

abstract class _Overview implements TrackOrderPage {
  const factory _Overview() = _$OverviewImpl;

  factory _Overview.fromJson(Map<String, dynamic> json) =
      _$OverviewImpl.fromJson;
}

/// @nodoc
abstract class _$$ChatImplCopyWith<$Res> {
  factory _$$ChatImplCopyWith(
          _$ChatImpl value, $Res Function(_$ChatImpl) then) =
      __$$ChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatImplCopyWithImpl<$Res>
    extends _$TrackOrderPageCopyWithImpl<$Res, _$ChatImpl>
    implements _$$ChatImplCopyWith<$Res> {
  __$$ChatImplCopyWithImpl(_$ChatImpl _value, $Res Function(_$ChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderPage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ChatImpl implements _Chat {
  const _$ChatImpl({final String? $type}) : $type = $type ?? 'chat';

  factory _$ChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackOrderPage.chat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
  }) {
    return chat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
  }) {
    return chat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatImplToJson(
      this,
    );
  }
}

abstract class _Chat implements TrackOrderPage {
  const factory _Chat() = _$ChatImpl;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$ChatImpl.fromJson;
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$TrackOrderPageCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackOrderPage
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl({final String? $type}) : $type = $type ?? 'payment';

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TrackOrderPage.payment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
  }) {
    return payment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
  }) {
    return payment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
  }) {
    return payment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
  }) {
    return payment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements TrackOrderPage {
  const factory _Payment() = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;
}
