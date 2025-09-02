// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_number_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyNumberResponse {
  bool get isExistingUser => throw _privateConstructorUsedError;
  String? get hash => throw _privateConstructorUsedError;

  /// Create a copy of VerifyNumberResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyNumberResponseCopyWith<VerifyNumberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyNumberResponseCopyWith<$Res> {
  factory $VerifyNumberResponseCopyWith(VerifyNumberResponse value,
          $Res Function(VerifyNumberResponse) then) =
      _$VerifyNumberResponseCopyWithImpl<$Res, VerifyNumberResponse>;
  @useResult
  $Res call({bool isExistingUser, String? hash});
}

/// @nodoc
class _$VerifyNumberResponseCopyWithImpl<$Res,
        $Val extends VerifyNumberResponse>
    implements $VerifyNumberResponseCopyWith<$Res> {
  _$VerifyNumberResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyNumberResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExistingUser = null,
    Object? hash = freezed,
  }) {
    return _then(_value.copyWith(
      isExistingUser: null == isExistingUser
          ? _value.isExistingUser
          : isExistingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyNumberResponseImplCopyWith<$Res>
    implements $VerifyNumberResponseCopyWith<$Res> {
  factory _$$VerifyNumberResponseImplCopyWith(_$VerifyNumberResponseImpl value,
          $Res Function(_$VerifyNumberResponseImpl) then) =
      __$$VerifyNumberResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isExistingUser, String? hash});
}

/// @nodoc
class __$$VerifyNumberResponseImplCopyWithImpl<$Res>
    extends _$VerifyNumberResponseCopyWithImpl<$Res, _$VerifyNumberResponseImpl>
    implements _$$VerifyNumberResponseImplCopyWith<$Res> {
  __$$VerifyNumberResponseImplCopyWithImpl(_$VerifyNumberResponseImpl _value,
      $Res Function(_$VerifyNumberResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyNumberResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExistingUser = null,
    Object? hash = freezed,
  }) {
    return _then(_$VerifyNumberResponseImpl(
      isExistingUser: null == isExistingUser
          ? _value.isExistingUser
          : isExistingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyNumberResponseImpl implements _VerifyNumberResponse {
  const _$VerifyNumberResponseImpl({required this.isExistingUser, this.hash});

  @override
  final bool isExistingUser;
  @override
  final String? hash;

  @override
  String toString() {
    return 'VerifyNumberResponse(isExistingUser: $isExistingUser, hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyNumberResponseImpl &&
            (identical(other.isExistingUser, isExistingUser) ||
                other.isExistingUser == isExistingUser) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isExistingUser, hash);

  /// Create a copy of VerifyNumberResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyNumberResponseImplCopyWith<_$VerifyNumberResponseImpl>
      get copyWith =>
          __$$VerifyNumberResponseImplCopyWithImpl<_$VerifyNumberResponseImpl>(
              this, _$identity);
}

abstract class _VerifyNumberResponse implements VerifyNumberResponse {
  const factory _VerifyNumberResponse(
      {required final bool isExistingUser,
      final String? hash}) = _$VerifyNumberResponseImpl;

  @override
  bool get isExistingUser;
  @override
  String? get hash;

  /// Create a copy of VerifyNumberResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyNumberResponseImplCopyWith<_$VerifyNumberResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
