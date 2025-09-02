// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditFavoriteLocationState {
  AddressType? get addressType => throw _privateConstructorUsedError;
  String? get addressName => throw _privateConstructorUsedError;
  PlaceEntity? get selectedLocation => throw _privateConstructorUsedError;
  AppFormState<void> get formState => throw _privateConstructorUsedError;

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditFavoriteLocationStateCopyWith<EditFavoriteLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditFavoriteLocationStateCopyWith<$Res> {
  factory $EditFavoriteLocationStateCopyWith(EditFavoriteLocationState value,
          $Res Function(EditFavoriteLocationState) then) =
      _$EditFavoriteLocationStateCopyWithImpl<$Res, EditFavoriteLocationState>;
  @useResult
  $Res call(
      {AddressType? addressType,
      String? addressName,
      PlaceEntity? selectedLocation,
      AppFormState<void> formState});

  $PlaceEntityCopyWith<$Res>? get selectedLocation;
  $AppFormStateCopyWith<void, $Res> get formState;
}

/// @nodoc
class _$EditFavoriteLocationStateCopyWithImpl<$Res,
        $Val extends EditFavoriteLocationState>
    implements $EditFavoriteLocationStateCopyWith<$Res> {
  _$EditFavoriteLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? addressName = freezed,
    Object? selectedLocation = freezed,
    Object? formState = null,
  }) {
    return _then(_value.copyWith(
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as AddressType?,
      addressName: freezed == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as PlaceEntity?,
      formState: null == formState
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as AppFormState<void>,
    ) as $Val);
  }

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceEntityCopyWith<$Res>? get selectedLocation {
    if (_value.selectedLocation == null) {
      return null;
    }

    return $PlaceEntityCopyWith<$Res>(_value.selectedLocation!, (value) {
      return _then(_value.copyWith(selectedLocation: value) as $Val);
    });
  }

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppFormStateCopyWith<void, $Res> get formState {
    return $AppFormStateCopyWith<void, $Res>(_value.formState, (value) {
      return _then(_value.copyWith(formState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditFavoriteLocationStateImplCopyWith<$Res>
    implements $EditFavoriteLocationStateCopyWith<$Res> {
  factory _$$EditFavoriteLocationStateImplCopyWith(
          _$EditFavoriteLocationStateImpl value,
          $Res Function(_$EditFavoriteLocationStateImpl) then) =
      __$$EditFavoriteLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressType? addressType,
      String? addressName,
      PlaceEntity? selectedLocation,
      AppFormState<void> formState});

  @override
  $PlaceEntityCopyWith<$Res>? get selectedLocation;
  @override
  $AppFormStateCopyWith<void, $Res> get formState;
}

/// @nodoc
class __$$EditFavoriteLocationStateImplCopyWithImpl<$Res>
    extends _$EditFavoriteLocationStateCopyWithImpl<$Res,
        _$EditFavoriteLocationStateImpl>
    implements _$$EditFavoriteLocationStateImplCopyWith<$Res> {
  __$$EditFavoriteLocationStateImplCopyWithImpl(
      _$EditFavoriteLocationStateImpl _value,
      $Res Function(_$EditFavoriteLocationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? addressName = freezed,
    Object? selectedLocation = freezed,
    Object? formState = null,
  }) {
    return _then(_$EditFavoriteLocationStateImpl(
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as AddressType?,
      addressName: freezed == addressName
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as PlaceEntity?,
      formState: null == formState
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as AppFormState<void>,
    ));
  }
}

/// @nodoc

class _$EditFavoriteLocationStateImpl implements _EditFavoriteLocationState {
  const _$EditFavoriteLocationStateImpl(
      {required this.addressType,
      required this.addressName,
      required this.selectedLocation,
      required this.formState});

  @override
  final AddressType? addressType;
  @override
  final String? addressName;
  @override
  final PlaceEntity? selectedLocation;
  @override
  final AppFormState<void> formState;

  @override
  String toString() {
    return 'EditFavoriteLocationState(addressType: $addressType, addressName: $addressName, selectedLocation: $selectedLocation, formState: $formState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditFavoriteLocationStateImpl &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.formState, formState) ||
                other.formState == formState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, addressType, addressName, selectedLocation, formState);

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditFavoriteLocationStateImplCopyWith<_$EditFavoriteLocationStateImpl>
      get copyWith => __$$EditFavoriteLocationStateImplCopyWithImpl<
          _$EditFavoriteLocationStateImpl>(this, _$identity);
}

abstract class _EditFavoriteLocationState implements EditFavoriteLocationState {
  const factory _EditFavoriteLocationState(
          {required final AddressType? addressType,
          required final String? addressName,
          required final PlaceEntity? selectedLocation,
          required final AppFormState<void> formState}) =
      _$EditFavoriteLocationStateImpl;

  @override
  AddressType? get addressType;
  @override
  String? get addressName;
  @override
  PlaceEntity? get selectedLocation;
  @override
  AppFormState<void> get formState;

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditFavoriteLocationStateImplCopyWith<_$EditFavoriteLocationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
