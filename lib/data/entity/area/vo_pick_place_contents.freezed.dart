// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_pick_place_contents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickPlaceContents {
  String get contentId => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get firstImage => throw _privateConstructorUsedError;

  /// Create a copy of PickPlaceContents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PickPlaceContentsCopyWith<PickPlaceContents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickPlaceContentsCopyWith<$Res> {
  factory $PickPlaceContentsCopyWith(
          PickPlaceContents value, $Res Function(PickPlaceContents) then) =
      _$PickPlaceContentsCopyWithImpl<$Res, PickPlaceContents>;
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String title,
      String firstImage});
}

/// @nodoc
class _$PickPlaceContentsCopyWithImpl<$Res, $Val extends PickPlaceContents>
    implements $PickPlaceContentsCopyWith<$Res> {
  _$PickPlaceContentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PickPlaceContents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? title = null,
    Object? firstImage = null,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstImage: null == firstImage
          ? _value.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickPlaceContentsImplCopyWith<$Res>
    implements $PickPlaceContentsCopyWith<$Res> {
  factory _$$PickPlaceContentsImplCopyWith(_$PickPlaceContentsImpl value,
          $Res Function(_$PickPlaceContentsImpl) then) =
      __$$PickPlaceContentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String title,
      String firstImage});
}

/// @nodoc
class __$$PickPlaceContentsImplCopyWithImpl<$Res>
    extends _$PickPlaceContentsCopyWithImpl<$Res, _$PickPlaceContentsImpl>
    implements _$$PickPlaceContentsImplCopyWith<$Res> {
  __$$PickPlaceContentsImplCopyWithImpl(_$PickPlaceContentsImpl _value,
      $Res Function(_$PickPlaceContentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickPlaceContents
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? title = null,
    Object? firstImage = null,
  }) {
    return _then(_$PickPlaceContentsImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstImage: null == firstImage
          ? _value.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickPlaceContentsImpl implements _PickPlaceContents {
  const _$PickPlaceContentsImpl(
      {required this.contentId,
      required this.contentTypeId,
      required this.title,
      required this.firstImage});

  @override
  final String contentId;
  @override
  final String contentTypeId;
  @override
  final String title;
  @override
  final String firstImage;

  @override
  String toString() {
    return 'PickPlaceContents(contentId: $contentId, contentTypeId: $contentTypeId, title: $title, firstImage: $firstImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickPlaceContentsImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, contentId, contentTypeId, title, firstImage);

  /// Create a copy of PickPlaceContents
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickPlaceContentsImplCopyWith<_$PickPlaceContentsImpl> get copyWith =>
      __$$PickPlaceContentsImplCopyWithImpl<_$PickPlaceContentsImpl>(
          this, _$identity);
}

abstract class _PickPlaceContents implements PickPlaceContents {
  const factory _PickPlaceContents(
      {required final String contentId,
      required final String contentTypeId,
      required final String title,
      required final String firstImage}) = _$PickPlaceContentsImpl;

  @override
  String get contentId;
  @override
  String get contentTypeId;
  @override
  String get title;
  @override
  String get firstImage;

  /// Create a copy of PickPlaceContents
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickPlaceContentsImplCopyWith<_$PickPlaceContentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
