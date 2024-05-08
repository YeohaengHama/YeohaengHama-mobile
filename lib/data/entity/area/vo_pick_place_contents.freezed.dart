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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PickPlaceContents {
  String get contentId => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get firstImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_PickPlaceContentsCopyWith<$Res>
    implements $PickPlaceContentsCopyWith<$Res> {
  factory _$$_PickPlaceContentsCopyWith(_$_PickPlaceContents value,
          $Res Function(_$_PickPlaceContents) then) =
      __$$_PickPlaceContentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String title,
      String firstImage});
}

/// @nodoc
class __$$_PickPlaceContentsCopyWithImpl<$Res>
    extends _$PickPlaceContentsCopyWithImpl<$Res, _$_PickPlaceContents>
    implements _$$_PickPlaceContentsCopyWith<$Res> {
  __$$_PickPlaceContentsCopyWithImpl(
      _$_PickPlaceContents _value, $Res Function(_$_PickPlaceContents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? title = null,
    Object? firstImage = null,
  }) {
    return _then(_$_PickPlaceContents(
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

class _$_PickPlaceContents implements _PickPlaceContents {
  const _$_PickPlaceContents(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickPlaceContents &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickPlaceContentsCopyWith<_$_PickPlaceContents> get copyWith =>
      __$$_PickPlaceContentsCopyWithImpl<_$_PickPlaceContents>(
          this, _$identity);
}

abstract class _PickPlaceContents implements PickPlaceContents {
  const factory _PickPlaceContents(
      {required final String contentId,
      required final String contentTypeId,
      required final String title,
      required final String firstImage}) = _$_PickPlaceContents;

  @override
  String get contentId;
  @override
  String get contentTypeId;
  @override
  String get title;
  @override
  String get firstImage;
  @override
  @JsonKey(ignore: true)
  _$$_PickPlaceContentsCopyWith<_$_PickPlaceContents> get copyWith =>
      throw _privateConstructorUsedError;
}
