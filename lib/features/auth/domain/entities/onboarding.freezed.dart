// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnBoardingItem {
  String get imagePath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnBoardingItemCopyWith<OnBoardingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingItemCopyWith<$Res> {
  factory $OnBoardingItemCopyWith(
          OnBoardingItem value, $Res Function(OnBoardingItem) then) =
      _$OnBoardingItemCopyWithImpl<$Res, OnBoardingItem>;
  @useResult
  $Res call({String imagePath, String title, String description});
}

/// @nodoc
class _$OnBoardingItemCopyWithImpl<$Res, $Val extends OnBoardingItem>
    implements $OnBoardingItemCopyWith<$Res> {
  _$OnBoardingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnBoardItemImplCopyWith<$Res>
    implements $OnBoardingItemCopyWith<$Res> {
  factory _$$OnBoardItemImplCopyWith(
          _$OnBoardItemImpl value, $Res Function(_$OnBoardItemImpl) then) =
      __$$OnBoardItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath, String title, String description});
}

/// @nodoc
class __$$OnBoardItemImplCopyWithImpl<$Res>
    extends _$OnBoardingItemCopyWithImpl<$Res, _$OnBoardItemImpl>
    implements _$$OnBoardItemImplCopyWith<$Res> {
  __$$OnBoardItemImplCopyWithImpl(
      _$OnBoardItemImpl _value, $Res Function(_$OnBoardItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$OnBoardItemImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnBoardItemImpl implements _OnBoardItem {
  const _$OnBoardItemImpl(
      {required this.imagePath,
      required this.title,
      required this.description});

  @override
  final String imagePath;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'OnBoardingItem(imagePath: $imagePath, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardItemImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, title, description);

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardItemImplCopyWith<_$OnBoardItemImpl> get copyWith =>
      __$$OnBoardItemImplCopyWithImpl<_$OnBoardItemImpl>(this, _$identity);
}

abstract class _OnBoardItem implements OnBoardingItem {
  const factory _OnBoardItem(
      {required final String imagePath,
      required final String title,
      required final String description}) = _$OnBoardItemImpl;

  @override
  String get imagePath;
  @override
  String get title;
  @override
  String get description;

  /// Create a copy of OnBoardingItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnBoardItemImplCopyWith<_$OnBoardItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
