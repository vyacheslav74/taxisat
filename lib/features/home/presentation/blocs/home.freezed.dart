// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _Loading.fromJson(json);
    case 'welcome':
      return WelcomeState.fromJson(json);
    case 'inputWaypoints':
      return InputWaypointsState.fromJson(json);
    case 'confirmLocation':
      return ConfirmLocationState.fromJson(json);
    case 'ridePreview':
      return RidePreviewState.fromJson(json);
    case 'rideInProgress':
      return RideInProgressState.fromJson(json);
    case 'rateDriver':
      return RateDriverState.fromJson(json);
    case 'error':
      return _Error.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HomeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
        List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
    welcome,
    required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
    required TResult Function(List<PlaceEntity?> waypoints, int index,
        PlaceEntity selectedLocation)
    confirmLocation,
    required TResult Function(
        List<PlaceEntity> waypoints, List<LatLngEntity> directions)
    ridePreview,
    required TResult Function(OrderEntity order, DriverLocation? driverLocation)
    rideInProgress,
    required TResult Function(OrderEntity order) rateDriver,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
        List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
    welcome,
    TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
    TResult? Function(List<PlaceEntity?> waypoints, int index,
        PlaceEntity selectedLocation)?
    confirmLocation,
    TResult? Function(
        List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
    ridePreview,
    TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
    rideInProgress,
    TResult? Function(OrderEntity order)? rateDriver,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
  TResult Function()? loading,
  TResult Function(
  List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
  welcome,
  TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
  TResult Function(List<PlaceEntity?> waypoints, int index,
  PlaceEntity selectedLocation)?
  confirmLocation,
  TResult Function(
  List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
  ridePreview,
  TResult Function(OrderEntity order, DriverLocation? driverLocation)?
  rideInProgress,
  TResult Function(OrderEntity order)? rateDriver,
  TResult Function(String error)? error,
  required TResult orElse(),
}) =>
throw _privateConstructorUsedError;
@optionalTypeArgs
TResult map<TResult extends Object?>({
  required TResult Function(_Loading value) loading,
  required TResult Function(WelcomeState value) welcome,
  required TResult Function(InputWaypointsState value) inputWaypoints,
  required TResult Function(ConfirmLocationState value) confirmLocation,
  required TResult Function(RidePreviewState value) ridePreview,
  required TResult Function(RideInProgressState value) rideInProgress,
  required TResult Function(RateDriverState value) rateDriver,
  required TResult Function(_Error value) error,
}) =>
    throw _privateConstructorUsedError;
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
  TResult? Function(_Loading value)? loading,
  TResult? Function(WelcomeState value)? welcome,
  TResult? Function(InputWaypointsState value)? inputWaypoints,
  TResult? Function(ConfirmLocationState value)? confirmLocation,
  TResult? Function(RidePreviewState value)? ridePreview,
  TResult? Function(RideInProgressState value)? rideInProgress,
  TResult? Function(RateDriverState value)? rateDriver,
  TResult? Function(_Error value)? error,
}) =>
    throw _privateConstructorUsedError;
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) =>
throw _privateConstructorUsedError;

/// Serializes this HomeState to a JSON map.
Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
_$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
implements $HomeStateCopyWith<$Res> {
_$HomeStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
final $Val _value;
// ignore: unused_field
final $Res Function($Val) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
factory _$$LoadingImplCopyWith(
_$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
__$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
extends _$HomeStateCopyWithImpl<$Res, _$LoadingImpl>
implements _$$LoadingImplCopyWith<$Res> {
__$$LoadingImplCopyWithImpl(
_$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
    : super(_value, _then);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LoadingImpl extends _Loading {
const _$LoadingImpl({final String? $type})
    : $type = $type ?? 'loading',
super._();

factory _$LoadingImpl.fromJson(Map<String, dynamic> json) =>
_$$LoadingImplFromJson(json);

@JsonKey(name: 'runtimeType')
final String $type;

@override
String toString() {
return 'HomeState.loading()';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType && other is _$LoadingImpl);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loading,
required TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
welcome,
required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
required TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)
confirmLocation,
required TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)
ridePreview,
required TResult Function(OrderEntity order, DriverLocation? driverLocation)
rideInProgress,
required TResult Function(OrderEntity order) rateDriver,
required TResult Function(String error) error,
}) {
return loading();
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loading,
TResult? Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult? Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult? Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult? Function(OrderEntity order)? rateDriver,
TResult? Function(String error)? error,
}) {
return loading?.call();
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loading,
TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult Function(OrderEntity order)? rateDriver,
TResult Function(String error)? error,
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
required TResult Function(_Loading value) loading,
required TResult Function(WelcomeState value) welcome,
required TResult Function(InputWaypointsState value) inputWaypoints,
required TResult Function(ConfirmLocationState value) confirmLocation,
required TResult Function(RidePreviewState value) ridePreview,
required TResult Function(RideInProgressState value) rideInProgress,
required TResult Function(RateDriverState value) rateDriver,
required TResult Function(_Error value) error,
}) {
return loading(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_Loading value)? loading,
TResult? Function(WelcomeState value)? welcome,
TResult? Function(InputWaypointsState value)? inputWaypoints,
TResult? Function(ConfirmLocationState value)? confirmLocation,
TResult? Function(RidePreviewState value)? ridePreview,
TResult? Function(RideInProgressState value)? rideInProgress,
TResult? Function(RateDriverState value)? rateDriver,
TResult? Function(_Error value)? error,
}) {
return loading?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) {
if (loading != null) {
return loading(this);
}
return orElse();
}

@override
Map<String, dynamic> toJson() {
return _$$LoadingImplToJson(
this,
);
}
}

abstract class _Loading extends HomeState {
const factory _Loading() = _$LoadingImpl;
const _Loading._() : super._();

factory _Loading.fromJson(Map<String, dynamic> json) = _$LoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$WelcomeStateImplCopyWith<$Res> {
factory _$$WelcomeStateImplCopyWith(
_$WelcomeStateImpl value, $Res Function(_$WelcomeStateImpl) then) =
__$$WelcomeStateImplCopyWithImpl<$Res>;
@useResult
$Res call({List<PlaceEntity?> waypoints, List<DriverLocation> driversAround});
}

/// @nodoc
class __$$WelcomeStateImplCopyWithImpl<$Res>
extends _$HomeStateCopyWithImpl<$Res, _$WelcomeStateImpl>
implements _$$WelcomeStateImplCopyWith<$Res> {
__$$WelcomeStateImplCopyWithImpl(
_$WelcomeStateImpl _value, $Res Function(_$WelcomeStateImpl) _then)
    : super(_value, _then);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline')
@override
$Res call({
Object? waypoints = null,
Object? driversAround = null,
}) {
return _then(_$WelcomeStateImpl(
waypoints: null == waypoints
? _value._waypoints
    : waypoints // ignore: cast_nullable_to_non_nullable
as List<PlaceEntity?>,
driversAround: null == driversAround
? _value._driversAround
    : driversAround // ignore: cast_nullable_to_non_nullable
as List<DriverLocation>,
));
}
}

/// @nodoc
@JsonSerializable()
class _$WelcomeStateImpl extends WelcomeState {
const _$WelcomeStateImpl(
{required final List<PlaceEntity?> waypoints,
required final List<DriverLocation> driversAround,
final String? $type})
    : _waypoints = waypoints,
_driversAround = driversAround,
$type = $type ?? 'welcome',
super._();

factory _$WelcomeStateImpl.fromJson(Map<String, dynamic> json) =>
_$$WelcomeStateImplFromJson(json);

final List<PlaceEntity?> _waypoints;
@override
List<PlaceEntity?> get waypoints {
if (_waypoints is EqualUnmodifiableListView) return _waypoints;
// ignore: implicit_dynamic_type
return EqualUnmodifiableListView(_waypoints);
}

final List<DriverLocation> _driversAround;
@override
List<DriverLocation> get driversAround {
if (_driversAround is EqualUnmodifiableListView) return _driversAround;
// ignore: implicit_dynamic_type
return EqualUnmodifiableListView(_driversAround);
}

@JsonKey(name: 'runtimeType')
final String $type;

@override
String toString() {
return 'HomeState.welcome(waypoints: $waypoints, driversAround: $driversAround)';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType &&
other is _$WelcomeStateImpl &&
const DeepCollectionEquality()
    .equals(other._waypoints, _waypoints) &&
const DeepCollectionEquality()
    .equals(other._driversAround, _driversAround));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(
runtimeType,
const DeepCollectionEquality().hash(_waypoints),
const DeepCollectionEquality().hash(_driversAround));

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$WelcomeStateImplCopyWith<_$WelcomeStateImpl> get copyWith =>
__$$WelcomeStateImplCopyWithImpl<_$WelcomeStateImpl>(this, _$identity);

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loading,
required TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
welcome,
required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
required TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)
confirmLocation,
required TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)
ridePreview,
required TResult Function(OrderEntity order, DriverLocation? driverLocation)
rideInProgress,
required TResult Function(OrderEntity order) rateDriver,
required TResult Function(String error) error,
}) {
return welcome(waypoints, driversAround);
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loading,
TResult? Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult? Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult? Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult? Function(OrderEntity order)? rateDriver,
TResult? Function(String error)? error,
}) {
return welcome?.call(waypoints, driversAround);
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loading,
TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult Function(OrderEntity order)? rateDriver,
TResult Function(String error)? error,
required TResult orElse(),
}) {
if (welcome != null) {
return welcome(waypoints, driversAround);
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(_Loading value) loading,
required TResult Function(WelcomeState value) welcome,
required TResult Function(InputWaypointsState value) inputWaypoints,
required TResult Function(ConfirmLocationState value) confirmLocation,
required TResult Function(RidePreviewState value) ridePreview,
required TResult Function(RideInProgressState value) rideInProgress,
required TResult Function(RateDriverState value) rateDriver,
required TResult Function(_Error value) error,
}) {
return welcome(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_Loading value)? loading,
TResult? Function(WelcomeState value)? welcome,
TResult? Function(InputWaypointsState value)? inputWaypoints,
TResult? Function(ConfirmLocationState value)? confirmLocation,
TResult? Function(RidePreviewState value)? ridePreview,
TResult? Function(RideInProgressState value)? rideInProgress,
TResult? Function(RateDriverState value)? rateDriver,
TResult? Function(_Error value)? error,
}) {
return welcome?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) {
if (welcome != null) {
return welcome(this);
}
return orElse();
}

@override
Map<String, dynamic> toJson() {
return _$$WelcomeStateImplToJson(
this,
);
}
}

abstract class WelcomeState extends HomeState {
const factory WelcomeState(
{required final List<PlaceEntity?> waypoints,
required final List<DriverLocation> driversAround}) = _$WelcomeStateImpl;
const WelcomeState._() : super._();

factory WelcomeState.fromJson(Map<String, dynamic> json) =
_$WelcomeStateImpl.fromJson;

List<PlaceEntity?> get waypoints;
List<DriverLocation> get driversAround;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$WelcomeStateImplCopyWith<_$WelcomeStateImpl> get copyWith =>
throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputWaypointsStateImplCopyWith<$Res> {
factory _$$InputWaypointsStateImplCopyWith(_$InputWaypointsStateImpl value,
$Res Function(_$InputWaypointsStateImpl) then) =
__$$InputWaypointsStateImplCopyWithImpl<$Res>;
@useResult
$Res call({List<PlaceEntity?> waypoints});
}

/// @nodoc
class __$$InputWaypointsStateImplCopyWithImpl<$Res>
extends _$HomeStateCopyWithImpl<$Res, _$InputWaypointsStateImpl>
implements _$$InputWaypointsStateImplCopyWith<$Res> {
__$$InputWaypointsStateImplCopyWithImpl(_$InputWaypointsStateImpl _value,
$Res Function(_$InputWaypointsStateImpl) _then)
    : super(_value, _then);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline')
@override
$Res call({
Object? waypoints = null,
}) {
return _then(_$InputWaypointsStateImpl(
waypoints: null == waypoints
? _value._waypoints
    : waypoints // ignore: cast_nullable_to_non_nullable
as List<PlaceEntity?>,
));
}
}

/// @nodoc
@JsonSerializable()
class _$InputWaypointsStateImpl extends InputWaypointsState {
const _$InputWaypointsStateImpl(
{required final List<PlaceEntity?> waypoints, final String? $type})
    : _waypoints = waypoints,
$type = $type ?? 'inputWaypoints',
super._();

factory _$InputWaypointsStateImpl.fromJson(Map<String, dynamic> json) =>
_$$InputWaypointsStateImplFromJson(json);

final List<PlaceEntity?> _waypoints;
@override
List<PlaceEntity?> get waypoints {
if (_waypoints is EqualUnmodifiableListView) return _waypoints;
// ignore: implicit_dynamic_type
return EqualUnmodifiableListView(_waypoints);
}

@JsonKey(name: 'runtimeType')
final String $type;

@override
String toString() {
return 'HomeState.inputWaypoints(waypoints: $waypoints)';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType &&
other is _$InputWaypointsStateImpl &&
const DeepCollectionEquality()
    .equals(other._waypoints, _waypoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode =>
Object.hash(runtimeType, const DeepCollectionEquality().hash(_waypoints));

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$InputWaypointsStateImplCopyWith<_$InputWaypointsStateImpl> get copyWith =>
__$$InputWaypointsStateImplCopyWithImpl<_$InputWaypointsStateImpl>(
this, _$identity);

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loading,
required TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
welcome,
required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
required TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)
confirmLocation,
required TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)
ridePreview,
required TResult Function(OrderEntity order, DriverLocation? driverLocation)
rideInProgress,
required TResult Function(OrderEntity order) rateDriver,
required TResult Function(String error) error,
}) {
return inputWaypoints(waypoints);
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loading,
TResult? Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult? Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult? Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult? Function(OrderEntity order)? rateDriver,
TResult? Function(String error)? error,
}) {
return inputWaypoints?.call(waypoints);
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loading,
TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult Function(OrderEntity order)? rateDriver,
TResult Function(String error)? error,
required TResult orElse(),
}) {
if (inputWaypoints != null) {
return inputWaypoints(waypoints);
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(_Loading value) loading,
required TResult Function(WelcomeState value) welcome,
required TResult Function(InputWaypointsState value) inputWaypoints,
required TResult Function(ConfirmLocationState value) confirmLocation,
required TResult Function(RidePreviewState value) ridePreview,
required TResult Function(RideInProgressState value) rideInProgress,
required TResult Function(RateDriverState value) rateDriver,
required TResult Function(_Error value) error,
}) {
return inputWaypoints(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_Loading value)? loading,
TResult? Function(WelcomeState value)? welcome,
TResult? Function(InputWaypointsState value)? inputWaypoints,
TResult? Function(ConfirmLocationState value)? confirmLocation,
TResult? Function(RidePreviewState value)? ridePreview,
TResult? Function(RideInProgressState value)? rideInProgress,
TResult? Function(RateDriverState value)? rateDriver,
TResult? Function(_Error value)? error,
}) {
return inputWaypoints?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) {
if (inputWaypoints != null) {
return inputWaypoints(this);
}
return orElse();
}

@override
Map<String, dynamic> toJson() {
return _$$InputWaypointsStateImplToJson(
this,
);
}
}

abstract class InputWaypointsState extends HomeState {
const factory InputWaypointsState(
{required final List<PlaceEntity?> waypoints}) =
_$InputWaypointsStateImpl;
const InputWaypointsState._() : super._();

factory InputWaypointsState.fromJson(Map<String, dynamic> json) =
_$InputWaypointsStateImpl.fromJson;

List<PlaceEntity?> get waypoints;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$InputWaypointsStateImplCopyWith<_$InputWaypointsStateImpl> get copyWith =>
throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmLocationStateImplCopyWith<$Res> {
factory _$$ConfirmLocationStateImplCopyWith(_$ConfirmLocationStateImpl value,
$Res Function(_$ConfirmLocationStateImpl) then) =
__$$ConfirmLocationStateImplCopyWithImpl<$Res>;
@useResult
$Res call(
{List<PlaceEntity?> waypoints, int index, PlaceEntity selectedLocation});

$PlaceEntityCopyWith<$Res> get selectedLocation;
}

/// @nodoc
class __$$ConfirmLocationStateImplCopyWithImpl<$Res>
extends _$HomeStateCopyWithImpl<$Res, _$ConfirmLocationStateImpl>
implements _$$ConfirmLocationStateImplCopyWith<$Res> {
__$$ConfirmLocationStateImplCopyWithImpl(_$ConfirmLocationStateImpl _value,
$Res Function(_$ConfirmLocationStateImpl) _then)
    : super(_value, _then);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline')
@override
$Res call({
Object? waypoints = null,
Object? index = null,
Object? selectedLocation = null,
}) {
return _then(_$ConfirmLocationStateImpl(
waypoints: null == waypoints
? _value._waypoints
    : waypoints // ignore: cast_nullable_to_non_nullable
as List<PlaceEntity?>,
index: null == index
? _value.index
    : index // ignore: cast_nullable_to_non_nullable
as int,
selectedLocation: null == selectedLocation
? _value.selectedLocation
    : selectedLocation // ignore: cast_nullable_to_non_nullable
as PlaceEntity,
));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceEntityCopyWith<$Res> get selectedLocation {
return $PlaceEntityCopyWith<$Res>(_value.selectedLocation, (value) {
return _then(_value.copyWith(selectedLocation: value));
});
}
}

/// @nodoc
@JsonSerializable()
class _$ConfirmLocationStateImpl extends ConfirmLocationState {
const _$ConfirmLocationStateImpl(
{required final List<PlaceEntity?> waypoints,
required this.index,
required this.selectedLocation,
final String? $type})
    : _waypoints = waypoints,
$type = $type ?? 'confirmLocation',
super._();

factory _$ConfirmLocationStateImpl.fromJson(Map<String, dynamic> json) =>
_$$ConfirmLocationStateImplFromJson(json);

final List<PlaceEntity?> _waypoints;
@override
List<PlaceEntity?> get waypoints {
if (_waypoints is EqualUnmodifiableListView) return _waypoints;
// ignore: implicit_dynamic_type
return EqualUnmodifiableListView(_waypoints);
}

@override
final int index;
@override
final PlaceEntity selectedLocation;

@JsonKey(name: 'runtimeType')
final String $type;

@override
String toString() {
return 'HomeState.confirmLocation(waypoints: $waypoints, index: $index, selectedLocation: $selectedLocation)';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType &&
other is _$ConfirmLocationStateImpl &&
const DeepCollectionEquality()
    .equals(other._waypoints, _waypoints) &&
(identical(other.index, index) || other.index == index) &&
(identical(other.selectedLocation, selectedLocation) ||
other.selectedLocation == selectedLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,
const DeepCollectionEquality().hash(_waypoints), index, selectedLocation);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ConfirmLocationStateImplCopyWith<_$ConfirmLocationStateImpl>
get copyWith =>
__$$ConfirmLocationStateImplCopyWithImpl<_$ConfirmLocationStateImpl>(
this, _$identity);

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loading,
required TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
welcome,
required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
required TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)
confirmLocation,
required TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)
ridePreview,
required TResult Function(OrderEntity order, DriverLocation? driverLocation)
rideInProgress,
required TResult Function(OrderEntity order) rateDriver,
required TResult Function(String error) error,
}) {
return confirmLocation(waypoints, index, selectedLocation);
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loading,
TResult? Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult? Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult? Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult? Function(OrderEntity order)? rateDriver,
TResult? Function(String error)? error,
}) {
return confirmLocation?.call(waypoints, index, selectedLocation);
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loading,
TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult Function(OrderEntity order)? rateDriver,
TResult Function(String error)? error,
required TResult orElse(),
}) {
if (confirmLocation != null) {
return confirmLocation(waypoints, index, selectedLocation);
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(_Loading value) loading,
required TResult Function(WelcomeState value) welcome,
required TResult Function(InputWaypointsState value) inputWaypoints,
required TResult Function(ConfirmLocationState value) confirmLocation,
required TResult Function(RidePreviewState value) ridePreview,
required TResult Function(RideInProgressState value) rideInProgress,
required TResult Function(RateDriverState value) rateDriver,
required TResult Function(_Error value) error,
}) {
return confirmLocation(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_Loading value)? loading,
TResult? Function(WelcomeState value)? welcome,
TResult? Function(InputWaypointsState value)? inputWaypoints,
TResult? Function(ConfirmLocationState value)? confirmLocation,
TResult? Function(RidePreviewState value)? ridePreview,
TResult? Function(RideInProgressState value)? rideInProgress,
TResult? Function(RateDriverState value)? rateDriver,
TResult? Function(_Error value)? error,
}) {
return confirmLocation?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) {
if (confirmLocation != null) {
return confirmLocation(this);
}
return orElse();
}

@override
Map<String, dynamic> toJson() {
return _$$ConfirmLocationStateImplToJson(
this,
);
}
}

abstract class ConfirmLocationState extends HomeState {
const factory ConfirmLocationState(
{required final List<PlaceEntity?> waypoints,
required final int index,
required final PlaceEntity selectedLocation}) =
_$ConfirmLocationStateImpl;
const ConfirmLocationState._() : super._();

factory ConfirmLocationState.fromJson(Map<String, dynamic> json) =
_$ConfirmLocationStateImpl.fromJson;

List<PlaceEntity?> get waypoints;
int get index;
PlaceEntity get selectedLocation;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ConfirmLocationStateImplCopyWith<_$ConfirmLocationStateImpl>
get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RidePreviewStateImplCopyWith<$Res> {
factory _$$RidePreviewStateImplCopyWith(_$RidePreviewStateImpl value,
$Res Function(_$RidePreviewStateImpl) then) =
__$$RidePreviewStateImplCopyWithImpl<$Res>;
@useResult
$Res call({List<PlaceEntity> waypoints, List<LatLngEntity> directions});
}

/// @nodoc
class __$$RidePreviewStateImplCopyWithImpl<$Res>
extends _$HomeStateCopyWithImpl<$Res, _$RidePreviewStateImpl>
implements _$$RidePreviewStateImplCopyWith<$Res> {
__$$RidePreviewStateImplCopyWithImpl(_$RidePreviewStateImpl _value,
$Res Function(_$RidePreviewStateImpl) _then)
    : super(_value, _then);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline')
@override
$Res call({
Object? waypoints = null,
Object? directions = null,
}) {
return _then(_$RidePreviewStateImpl(
waypoints: null == waypoints
? _value._waypoints
    : waypoints // ignore: cast_nullable_to_non_nullable
as List<PlaceEntity>,
directions: null == directions
? _value._directions
    : directions // ignore: cast_nullable_to_non_nullable
as List<LatLngEntity>,
));
}
}

/// @nodoc
@JsonSerializable()
class _$RidePreviewStateImpl extends RidePreviewState {
const _$RidePreviewStateImpl(
{required final List<PlaceEntity> waypoints,
final List<LatLngEntity> directions = const [],
final String? $type})
    : _waypoints = waypoints,
_directions = directions,
$type = $type ?? 'ridePreview',
super._();

factory _$RidePreviewStateImpl.fromJson(Map<String, dynamic> json) =>
_$$RidePreviewStateImplFromJson(json);

final List<PlaceEntity> _waypoints;
@override
List<PlaceEntity> get waypoints {
if (_waypoints is EqualUnmodifiableListView) return _waypoints;
// ignore: implicit_dynamic_type
return EqualUnmodifiableListView(_waypoints);
}

final List<LatLngEntity> _directions;
@override
@JsonKey()
List<LatLngEntity> get directions {
if (_directions is EqualUnmodifiableListView) return _directions;
// ignore: implicit_dynamic_type
return EqualUnmodifiableListView(_directions);
}

@JsonKey(name: 'runtimeType')
final String $type;

@override
String toString() {
return 'HomeState.ridePreview(waypoints: $waypoints, directions: $directions)';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType &&
other is _$RidePreviewStateImpl &&
const DeepCollectionEquality()
    .equals(other._waypoints, _waypoints) &&
const DeepCollectionEquality()
    .equals(other._directions, _directions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(
runtimeType,
const DeepCollectionEquality().hash(_waypoints),
const DeepCollectionEquality().hash(_directions));

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RidePreviewStateImplCopyWith<_$RidePreviewStateImpl> get copyWith =>
__$$RidePreviewStateImplCopyWithImpl<_$RidePreviewStateImpl>(
this, _$identity);

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loading,
required TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
welcome,
required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
required TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)
confirmLocation,
required TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)
ridePreview,
required TResult Function(OrderEntity order, DriverLocation? driverLocation)
rideInProgress,
required TResult Function(OrderEntity order) rateDriver,
required TResult Function(String error) error,
}) {
return ridePreview(waypoints, directions);
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loading,
TResult? Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult? Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult? Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult? Function(OrderEntity order)? rateDriver,
TResult? Function(String error)? error,
}) {
return ridePreview?.call(waypoints, directions);
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loading,
TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult Function(OrderEntity order)? rateDriver,
TResult Function(String error)? error,
required TResult orElse(),
}) {
if (ridePreview != null) {
return ridePreview(waypoints, directions);
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(_Loading value) loading,
required TResult Function(WelcomeState value) welcome,
required TResult Function(InputWaypointsState value) inputWaypoints,
required TResult Function(ConfirmLocationState value) confirmLocation,
required TResult Function(RidePreviewState value) ridePreview,
required TResult Function(RideInProgressState value) rideInProgress,
required TResult Function(RateDriverState value) rateDriver,
required TResult Function(_Error value) error,
}) {
return ridePreview(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_Loading value)? loading,
TResult? Function(WelcomeState value)? welcome,
TResult? Function(InputWaypointsState value)? inputWaypoints,
TResult? Function(ConfirmLocationState value)? confirmLocation,
TResult? Function(RidePreviewState value)? ridePreview,
TResult? Function(RideInProgressState value)? rideInProgress,
TResult? Function(RateDriverState value)? rateDriver,
TResult? Function(_Error value)? error,
}) {
return ridePreview?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) {
if (ridePreview != null) {
return ridePreview(this);
}
return orElse();
}

@override
Map<String, dynamic> toJson() {
return _$$RidePreviewStateImplToJson(
this,
);
}
}

abstract class RidePreviewState extends HomeState {
const factory RidePreviewState(
{required final List<PlaceEntity> waypoints,
final List<LatLngEntity> directions}) = _$RidePreviewStateImpl;
const RidePreviewState._() : super._();

factory RidePreviewState.fromJson(Map<String, dynamic> json) =
_$RidePreviewStateImpl.fromJson;

List<PlaceEntity> get waypoints;
List<LatLngEntity> get directions;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$RidePreviewStateImplCopyWith<_$RidePreviewStateImpl> get copyWith =>
throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RideInProgressStateImplCopyWith<$Res> {
factory _$$RideInProgressStateImplCopyWith(_$RideInProgressStateImpl value,
$Res Function(_$RideInProgressStateImpl) then) =
__$$RideInProgressStateImplCopyWithImpl<$Res>;
@useResult
$Res call({OrderEntity order, DriverLocation? driverLocation});

$OrderEntityCopyWith<$Res> get order;
$DriverLocationCopyWith<$Res>? get driverLocation;
}

/// @nodoc
class __$$RideInProgressStateImplCopyWithImpl<$Res>
extends _$HomeStateCopyWithImpl<$Res, _$RideInProgressStateImpl>
implements _$$RideInProgressStateImplCopyWith<$Res> {
__$$RideInProgressStateImplCopyWithImpl(_$RideInProgressStateImpl _value,
$Res Function(_$RideInProgressStateImpl) _then)
    : super(_value, _then);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline')
@override
$Res call({
Object? order = null,
Object? driverLocation = freezed,
}) {
return _then(_$RideInProgressStateImpl(
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

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<$Res> get order {
return $OrderEntityCopyWith<$Res>(_value.order, (value) {
return _then(_value.copyWith(order: value));
});
}

/// Create a copy of HomeState
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
@JsonSerializable()
class _$RideInProgressStateImpl extends RideInProgressState {
const _$RideInProgressStateImpl(
{required this.order, required this.driverLocation, final String? $type})
    : $type = $type ?? 'rideInProgress',
super._();

factory _$RideInProgressStateImpl.fromJson(Map<String, dynamic> json) =>
_$$RideInProgressStateImplFromJson(json);

@override
final OrderEntity order;
@override
final DriverLocation? driverLocation;

@JsonKey(name: 'runtimeType')
final String $type;

@override
String toString() {
return 'HomeState.rideInProgress(order: $order, driverLocation: $driverLocation)';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType &&
other is _$RideInProgressStateImpl &&
(identical(other.order, order) || other.order == order) &&
(identical(other.driverLocation, driverLocation) ||
other.driverLocation == driverLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType, order, driverLocation);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RideInProgressStateImplCopyWith<_$RideInProgressStateImpl> get copyWith =>
__$$RideInProgressStateImplCopyWithImpl<_$RideInProgressStateImpl>(
this, _$identity);

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loading,
required TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
welcome,
required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
required TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)
confirmLocation,
required TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)
ridePreview,
required TResult Function(OrderEntity order, DriverLocation? driverLocation)
rideInProgress,
required TResult Function(OrderEntity order) rateDriver,
required TResult Function(String error) error,
}) {
return rideInProgress(order, driverLocation);
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loading,
TResult? Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult? Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult? Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult? Function(OrderEntity order)? rateDriver,
TResult? Function(String error)? error,
}) {
return rideInProgress?.call(order, driverLocation);
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loading,
TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult Function(OrderEntity order)? rateDriver,
TResult Function(String error)? error,
required TResult orElse(),
}) {
if (rideInProgress != null) {
return rideInProgress(order, driverLocation);
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(_Loading value) loading,
required TResult Function(WelcomeState value) welcome,
required TResult Function(InputWaypointsState value) inputWaypoints,
required TResult Function(ConfirmLocationState value) confirmLocation,
required TResult Function(RidePreviewState value) ridePreview,
required TResult Function(RideInProgressState value) rideInProgress,
required TResult Function(RateDriverState value) rateDriver,
required TResult Function(_Error value) error,
}) {
return rideInProgress(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_Loading value)? loading,
TResult? Function(WelcomeState value)? welcome,
TResult? Function(InputWaypointsState value)? inputWaypoints,
TResult? Function(ConfirmLocationState value)? confirmLocation,
TResult? Function(RidePreviewState value)? ridePreview,
TResult? Function(RideInProgressState value)? rideInProgress,
TResult? Function(RateDriverState value)? rateDriver,
TResult? Function(_Error value)? error,
}) {
return rideInProgress?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) {
if (rideInProgress != null) {
return rideInProgress(this);
}
return orElse();
}

@override
Map<String, dynamic> toJson() {
return _$$RideInProgressStateImplToJson(
this,
);
}
}

abstract class RideInProgressState extends HomeState {
const factory RideInProgressState(
{required final OrderEntity order,
required final DriverLocation? driverLocation}) =
_$RideInProgressStateImpl;
const RideInProgressState._() : super._();

factory RideInProgressState.fromJson(Map<String, dynamic> json) =
_$RideInProgressStateImpl.fromJson;

OrderEntity get order;
DriverLocation? get driverLocation;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$RideInProgressStateImplCopyWith<_$RideInProgressStateImpl> get copyWith =>
throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateDriverStateImplCopyWith<$Res> {
factory _$$RateDriverStateImplCopyWith(_$RateDriverStateImpl value,
$Res Function(_$RateDriverStateImpl) then) =
__$$RateDriverStateImplCopyWithImpl<$Res>;
@useResult
$Res call({OrderEntity order});

$OrderEntityCopyWith<$Res> get order;
}

/// @nodoc
class __$$RateDriverStateImplCopyWithImpl<$Res>
extends _$HomeStateCopyWithImpl<$Res, _$RateDriverStateImpl>
implements _$$RateDriverStateImplCopyWith<$Res> {
__$$RateDriverStateImplCopyWithImpl(
_$RateDriverStateImpl _value, $Res Function(_$RateDriverStateImpl) _then)
    : super(_value, _then);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline')
@override
$Res call({
Object? order = null,
}) {
return _then(_$RateDriverStateImpl(
order: null == order
? _value.order
    : order // ignore: cast_nullable_to_non_nullable
as OrderEntity,
));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<$Res> get order {
return $OrderEntityCopyWith<$Res>(_value.order, (value) {
return _then(_value.copyWith(order: value));
});
}
}

/// @nodoc
@JsonSerializable()
class _$RateDriverStateImpl extends RateDriverState {
const _$RateDriverStateImpl({required this.order, final String? $type})
    : $type = $type ?? 'rateDriver',
super._();

factory _$RateDriverStateImpl.fromJson(Map<String, dynamic> json) =>
_$$RateDriverStateImplFromJson(json);

@override
final OrderEntity order;

@JsonKey(name: 'runtimeType')
final String $type;

@override
String toString() {
return 'HomeState.rateDriver(order: $order)';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType &&
other is _$RateDriverStateImpl &&
(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType, order);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$RateDriverStateImplCopyWith<_$RateDriverStateImpl> get copyWith =>
__$$RateDriverStateImplCopyWithImpl<_$RateDriverStateImpl>(
this, _$identity);

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loading,
required TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
welcome,
required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
required TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)
confirmLocation,
required TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)
ridePreview,
required TResult Function(OrderEntity order, DriverLocation? driverLocation)
rideInProgress,
required TResult Function(OrderEntity order) rateDriver,
required TResult Function(String error) error,
}) {
return rateDriver(order);
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loading,
TResult? Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult? Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult? Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult? Function(OrderEntity order)? rateDriver,
TResult? Function(String error)? error,
}) {
return rateDriver?.call(order);
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loading,
TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult Function(OrderEntity order)? rateDriver,
TResult Function(String error)? error,
required TResult orElse(),
}) {
if (rateDriver != null) {
return rateDriver(order);
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(_Loading value) loading,
required TResult Function(WelcomeState value) welcome,
required TResult Function(InputWaypointsState value) inputWaypoints,
required TResult Function(ConfirmLocationState value) confirmLocation,
required TResult Function(RidePreviewState value) ridePreview,
required TResult Function(RideInProgressState value) rideInProgress,
required TResult Function(RateDriverState value) rateDriver,
required TResult Function(_Error value) error,
}) {
return rateDriver(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_Loading value)? loading,
TResult? Function(WelcomeState value)? welcome,
TResult? Function(InputWaypointsState value)? inputWaypoints,
TResult? Function(ConfirmLocationState value)? confirmLocation,
TResult? Function(RidePreviewState value)? ridePreview,
TResult? Function(RideInProgressState value)? rideInProgress,
TResult? Function(RateDriverState value)? rateDriver,
TResult? Function(_Error value)? error,
}) {
return rateDriver?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) {
if (rateDriver != null) {
return rateDriver(this);
}
return orElse();
}

@override
Map<String, dynamic> toJson() {
return _$$RateDriverStateImplToJson(
this,
);
}
}

abstract class RateDriverState extends HomeState {
const factory RateDriverState({required final OrderEntity order}) =
_$RateDriverStateImpl;
const RateDriverState._() : super._();

factory RateDriverState.fromJson(Map<String, dynamic> json) =
_$RateDriverStateImpl.fromJson;

OrderEntity get order;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$RateDriverStateImplCopyWith<_$RateDriverStateImpl> get copyWith =>
throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
factory _$$ErrorImplCopyWith(
_$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
__$$ErrorImplCopyWithImpl<$Res>;
@useResult
$Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
extends _$HomeStateCopyWithImpl<$Res, _$ErrorImpl>
implements _$$ErrorImplCopyWith<$Res> {
__$$ErrorImplCopyWithImpl(
_$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
    : super(_value, _then);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline')
@override
$Res call({
Object? error = null,
}) {
return _then(_$ErrorImpl(
error: null == error
? _value.error
    : error // ignore: cast_nullable_to_non_nullable
as String,
));
}
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl extends _Error {
const _$ErrorImpl({required this.error, final String? $type})
    : $type = $type ?? 'error',
super._();

factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
_$$ErrorImplFromJson(json);

@override
final String error;

@JsonKey(name: 'runtimeType')
final String $type;

@override
String toString() {
return 'HomeState.error(error: $error)';
}

@override
bool operator ==(Object other) {
return identical(this, other) ||
(other.runtimeType == runtimeType &&
other is _$ErrorImpl &&
(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType, error);

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@override
@pragma('vm:prefer-inline')
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
__$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

@override
@optionalTypeArgs
TResult when<TResult extends Object?>({
required TResult Function() loading,
required TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)
welcome,
required TResult Function(List<PlaceEntity?> waypoints) inputWaypoints,
required TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)
confirmLocation,
required TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)
ridePreview,
required TResult Function(OrderEntity order, DriverLocation? driverLocation)
rideInProgress,
required TResult Function(OrderEntity order) rateDriver,
required TResult Function(String error) error,
}) {
return error(this.error);
}

@override
@optionalTypeArgs
TResult? whenOrNull<TResult extends Object?>({
TResult? Function()? loading,
TResult? Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult? Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult? Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult? Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult? Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult? Function(OrderEntity order)? rateDriver,
TResult? Function(String error)? error,
}) {
return error?.call(this.error);
}

@override
@optionalTypeArgs
TResult maybeWhen<TResult extends Object?>({
TResult Function()? loading,
TResult Function(
List<PlaceEntity?> waypoints, List<DriverLocation> driversAround)?
welcome,
TResult Function(List<PlaceEntity?> waypoints)? inputWaypoints,
TResult Function(List<PlaceEntity?> waypoints, int index,
PlaceEntity selectedLocation)?
confirmLocation,
TResult Function(
List<PlaceEntity> waypoints, List<LatLngEntity> directions)?
ridePreview,
TResult Function(OrderEntity order, DriverLocation? driverLocation)?
rideInProgress,
TResult Function(OrderEntity order)? rateDriver,
TResult Function(String error)? error,
required TResult orElse(),
}) {
if (error != null) {
return error(this.error);
}
return orElse();
}

@override
@optionalTypeArgs
TResult map<TResult extends Object?>({
required TResult Function(_Loading value) loading,
required TResult Function(WelcomeState value) welcome,
required TResult Function(InputWaypointsState value) inputWaypoints,
required TResult Function(ConfirmLocationState value) confirmLocation,
required TResult Function(RidePreviewState value) ridePreview,
required TResult Function(RideInProgressState value) rideInProgress,
required TResult Function(RateDriverState value) rateDriver,
required TResult Function(_Error value) error,
}) {
return error(this);
}

@override
@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>({
TResult? Function(_Loading value)? loading,
TResult? Function(WelcomeState value)? welcome,
TResult? Function(InputWaypointsState value)? inputWaypoints,
TResult? Function(ConfirmLocationState value)? confirmLocation,
TResult? Function(RidePreviewState value)? ridePreview,
TResult? Function(RideInProgressState value)? rideInProgress,
TResult? Function(RateDriverState value)? rateDriver,
TResult? Function(_Error value)? error,
}) {
return error?.call(this);
}

@override
@optionalTypeArgs
TResult maybeMap<TResult extends Object?>({
TResult Function(_Loading value)? loading,
TResult Function(WelcomeState value)? welcome,
TResult Function(InputWaypointsState value)? inputWaypoints,
TResult Function(ConfirmLocationState value)? confirmLocation,
TResult Function(RidePreviewState value)? ridePreview,
TResult Function(RideInProgressState value)? rideInProgress,
TResult Function(RateDriverState value)? rateDriver,
TResult Function(_Error value)? error,
required TResult orElse(),
}) {
if (error != null) {
return error(this);
}
return orElse();
}

@override
Map<String, dynamic> toJson() {
return _$$ErrorImplToJson(
this,
);
}
}

abstract class _Error extends HomeState {
const factory _Error({required final String error}) = _$ErrorImpl;
const _Error._() : super._();

factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

String get error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
_$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
throw _privateConstructorUsedError;
}
