// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_lookup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceLookupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String? query, LatLng? latLng, int radius,
            String language, MapProviderEnum mapProvider)
        onQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String? query, LatLng? latLng, int radius,
            String language, MapProviderEnum mapProvider)?
        onQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String? query, LatLng? latLng, int radius, String language,
            MapProviderEnum mapProvider)?
        onQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnQueryChanged value)? onQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceLookupEventCopyWith<$Res> {
  factory $PlaceLookupEventCopyWith(
          PlaceLookupEvent value, $Res Function(PlaceLookupEvent) then) =
      _$PlaceLookupEventCopyWithImpl<$Res, PlaceLookupEvent>;
}

/// @nodoc
class _$PlaceLookupEventCopyWithImpl<$Res, $Val extends PlaceLookupEvent>
    implements $PlaceLookupEventCopyWith<$Res> {
  _$PlaceLookupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceLookupEvent
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
    extends _$PlaceLookupEventCopyWithImpl<$Res, _$OnStartedImpl>
    implements _$$OnStartedImplCopyWith<$Res> {
  __$$OnStartedImplCopyWithImpl(
      _$OnStartedImpl _value, $Res Function(_$OnStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceLookupEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnStartedImpl implements _OnStarted {
  const _$OnStartedImpl();

  @override
  String toString() {
    return 'PlaceLookupEvent.onStarted()';
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
    required TResult Function(String? query, LatLng? latLng, int radius,
            String language, MapProviderEnum mapProvider)
        onQueryChanged,
  }) {
    return onStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String? query, LatLng? latLng, int radius,
            String language, MapProviderEnum mapProvider)?
        onQueryChanged,
  }) {
    return onStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String? query, LatLng? latLng, int radius, String language,
            MapProviderEnum mapProvider)?
        onQueryChanged,
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
    required TResult Function(_OnQueryChanged value) onQueryChanged,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnQueryChanged value)? onQueryChanged,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements PlaceLookupEvent {
  const factory _OnStarted() = _$OnStartedImpl;
}

/// @nodoc
abstract class _$$OnQueryChangedImplCopyWith<$Res> {
  factory _$$OnQueryChangedImplCopyWith(_$OnQueryChangedImpl value,
          $Res Function(_$OnQueryChangedImpl) then) =
      __$$OnQueryChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? query,
      LatLng? latLng,
      int radius,
      String language,
      MapProviderEnum mapProvider});
}

/// @nodoc
class __$$OnQueryChangedImplCopyWithImpl<$Res>
    extends _$PlaceLookupEventCopyWithImpl<$Res, _$OnQueryChangedImpl>
    implements _$$OnQueryChangedImplCopyWith<$Res> {
  __$$OnQueryChangedImplCopyWithImpl(
      _$OnQueryChangedImpl _value, $Res Function(_$OnQueryChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceLookupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? latLng = freezed,
    Object? radius = null,
    Object? language = null,
    Object? mapProvider = null,
  }) {
    return _then(_$OnQueryChangedImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      latLng: freezed == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      mapProvider: null == mapProvider
          ? _value.mapProvider
          : mapProvider // ignore: cast_nullable_to_non_nullable
              as MapProviderEnum,
    ));
  }
}

/// @nodoc

class _$OnQueryChangedImpl implements _OnQueryChanged {
  const _$OnQueryChangedImpl(
      {required this.query,
      required this.latLng,
      required this.radius,
      required this.language,
      required this.mapProvider});

  @override
  final String? query;
  @override
  final LatLng? latLng;
  @override
  final int radius;
  @override
  final String language;
  @override
  final MapProviderEnum mapProvider;

  @override
  String toString() {
    return 'PlaceLookupEvent.onQueryChanged(query: $query, latLng: $latLng, radius: $radius, language: $language, mapProvider: $mapProvider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnQueryChangedImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.latLng, latLng) || other.latLng == latLng) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.mapProvider, mapProvider) ||
                other.mapProvider == mapProvider));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, query, latLng, radius, language, mapProvider);

  /// Create a copy of PlaceLookupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnQueryChangedImplCopyWith<_$OnQueryChangedImpl> get copyWith =>
      __$$OnQueryChangedImplCopyWithImpl<_$OnQueryChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStarted,
    required TResult Function(String? query, LatLng? latLng, int radius,
            String language, MapProviderEnum mapProvider)
        onQueryChanged,
  }) {
    return onQueryChanged(query, latLng, radius, language, mapProvider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStarted,
    TResult? Function(String? query, LatLng? latLng, int radius,
            String language, MapProviderEnum mapProvider)?
        onQueryChanged,
  }) {
    return onQueryChanged?.call(query, latLng, radius, language, mapProvider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStarted,
    TResult Function(String? query, LatLng? latLng, int radius, String language,
            MapProviderEnum mapProvider)?
        onQueryChanged,
    required TResult orElse(),
  }) {
    if (onQueryChanged != null) {
      return onQueryChanged(query, latLng, radius, language, mapProvider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnQueryChanged value) onQueryChanged,
  }) {
    return onQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnQueryChanged value)? onQueryChanged,
  }) {
    return onQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnQueryChanged value)? onQueryChanged,
    required TResult orElse(),
  }) {
    if (onQueryChanged != null) {
      return onQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _OnQueryChanged implements PlaceLookupEvent {
  const factory _OnQueryChanged(
      {required final String? query,
      required final LatLng? latLng,
      required final int radius,
      required final String language,
      required final MapProviderEnum mapProvider}) = _$OnQueryChangedImpl;

  String? get query;
  LatLng? get latLng;
  int get radius;
  String get language;
  MapProviderEnum get mapProvider;

  /// Create a copy of PlaceLookupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnQueryChangedImplCopyWith<_$OnQueryChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceLookupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function() moreCharacters,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function()? moreCharacters,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function()? moreCharacters,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_MoreCharacters value) moreCharacters,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoResults value)? noResults,
    TResult? Function(_MoreCharacters value)? moreCharacters,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_MoreCharacters value)? moreCharacters,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceLookupStateCopyWith<$Res> {
  factory $PlaceLookupStateCopyWith(
          PlaceLookupState value, $Res Function(PlaceLookupState) then) =
      _$PlaceLookupStateCopyWithImpl<$Res, PlaceLookupState>;
}

/// @nodoc
class _$PlaceLookupStateCopyWithImpl<$Res, $Val extends PlaceLookupState>
    implements $PlaceLookupStateCopyWith<$Res> {
  _$PlaceLookupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceLookupState
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
    extends _$PlaceLookupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PlaceLookupState.initial()';
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
    required TResult Function() noResults,
    required TResult Function() moreCharacters,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function()? moreCharacters,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function()? moreCharacters,
    TResult Function(List<PlaceEntity> places)? loaded,
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
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_MoreCharacters value) moreCharacters,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoResults value)? noResults,
    TResult? Function(_MoreCharacters value)? moreCharacters,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_MoreCharacters value)? moreCharacters,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlaceLookupState {
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
    extends _$PlaceLookupStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PlaceLookupState.loading()';
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
    required TResult Function() noResults,
    required TResult Function() moreCharacters,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function()? moreCharacters,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function()? moreCharacters,
    TResult Function(List<PlaceEntity> places)? loaded,
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
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_MoreCharacters value) moreCharacters,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoResults value)? noResults,
    TResult? Function(_MoreCharacters value)? moreCharacters,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_MoreCharacters value)? moreCharacters,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PlaceLookupState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$NoResultsImplCopyWith<$Res> {
  factory _$$NoResultsImplCopyWith(
          _$NoResultsImpl value, $Res Function(_$NoResultsImpl) then) =
      __$$NoResultsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoResultsImplCopyWithImpl<$Res>
    extends _$PlaceLookupStateCopyWithImpl<$Res, _$NoResultsImpl>
    implements _$$NoResultsImplCopyWith<$Res> {
  __$$NoResultsImplCopyWithImpl(
      _$NoResultsImpl _value, $Res Function(_$NoResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoResultsImpl implements _NoResults {
  const _$NoResultsImpl();

  @override
  String toString() {
    return 'PlaceLookupState.noResults()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoResultsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function() moreCharacters,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(String message) error,
  }) {
    return noResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function()? moreCharacters,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(String message)? error,
  }) {
    return noResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function()? moreCharacters,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_MoreCharacters value) moreCharacters,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return noResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoResults value)? noResults,
    TResult? Function(_MoreCharacters value)? moreCharacters,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return noResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_MoreCharacters value)? moreCharacters,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (noResults != null) {
      return noResults(this);
    }
    return orElse();
  }
}

abstract class _NoResults implements PlaceLookupState {
  const factory _NoResults() = _$NoResultsImpl;
}

/// @nodoc
abstract class _$$MoreCharactersImplCopyWith<$Res> {
  factory _$$MoreCharactersImplCopyWith(_$MoreCharactersImpl value,
          $Res Function(_$MoreCharactersImpl) then) =
      __$$MoreCharactersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoreCharactersImplCopyWithImpl<$Res>
    extends _$PlaceLookupStateCopyWithImpl<$Res, _$MoreCharactersImpl>
    implements _$$MoreCharactersImplCopyWith<$Res> {
  __$$MoreCharactersImplCopyWithImpl(
      _$MoreCharactersImpl _value, $Res Function(_$MoreCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MoreCharactersImpl implements _MoreCharacters {
  const _$MoreCharactersImpl();

  @override
  String toString() {
    return 'PlaceLookupState.moreCharacters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoreCharactersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function() moreCharacters,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(String message) error,
  }) {
    return moreCharacters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function()? moreCharacters,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(String message)? error,
  }) {
    return moreCharacters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function()? moreCharacters,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (moreCharacters != null) {
      return moreCharacters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_MoreCharacters value) moreCharacters,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return moreCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoResults value)? noResults,
    TResult? Function(_MoreCharacters value)? moreCharacters,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return moreCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_MoreCharacters value)? moreCharacters,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (moreCharacters != null) {
      return moreCharacters(this);
    }
    return orElse();
  }
}

abstract class _MoreCharacters implements PlaceLookupState {
  const factory _MoreCharacters() = _$MoreCharactersImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlaceEntity> places});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PlaceLookupStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$LoadedImpl(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required final List<PlaceEntity> places})
      : _places = places;

  final List<PlaceEntity> _places;
  @override
  List<PlaceEntity> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlaceLookupState.loaded(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() noResults,
    required TResult Function() moreCharacters,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function()? moreCharacters,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function()? moreCharacters,
    TResult Function(List<PlaceEntity> places)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_MoreCharacters value) moreCharacters,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoResults value)? noResults,
    TResult? Function(_MoreCharacters value)? moreCharacters,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_MoreCharacters value)? moreCharacters,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements PlaceLookupState {
  const factory _Loaded({required final List<PlaceEntity> places}) =
      _$LoadedImpl;

  List<PlaceEntity> get places;

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$PlaceLookupStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceLookupState
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

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PlaceLookupState.error(message: $message)';
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

  /// Create a copy of PlaceLookupState
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
    required TResult Function() noResults,
    required TResult Function() moreCharacters,
    required TResult Function(List<PlaceEntity> places) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? noResults,
    TResult? Function()? moreCharacters,
    TResult? Function(List<PlaceEntity> places)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? noResults,
    TResult Function()? moreCharacters,
    TResult Function(List<PlaceEntity> places)? loaded,
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
    required TResult Function(_NoResults value) noResults,
    required TResult Function(_MoreCharacters value) moreCharacters,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_NoResults value)? noResults,
    TResult? Function(_MoreCharacters value)? moreCharacters,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_NoResults value)? noResults,
    TResult Function(_MoreCharacters value)? moreCharacters,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PlaceLookupState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
