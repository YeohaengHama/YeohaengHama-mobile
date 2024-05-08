// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'a_review_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewPost {
  int get contentId => throw _privateConstructorUsedError;
  int get contentType => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewPostCopyWith<ReviewPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewPostCopyWith<$Res> {
  factory $ReviewPostCopyWith(
          ReviewPost value, $Res Function(ReviewPost) then) =
      _$ReviewPostCopyWithImpl<$Res, ReviewPost>;
  @useResult
  $Res call(
      {int contentId,
      int contentType,
      int rating,
      String content,
      List<String>? photos});
}

/// @nodoc
class _$ReviewPostCopyWithImpl<$Res, $Val extends ReviewPost>
    implements $ReviewPostCopyWith<$Res> {
  _$ReviewPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? rating = null,
    Object? content = null,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewPostCopyWith<$Res>
    implements $ReviewPostCopyWith<$Res> {
  factory _$$_ReviewPostCopyWith(
          _$_ReviewPost value, $Res Function(_$_ReviewPost) then) =
      __$$_ReviewPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int contentId,
      int contentType,
      int rating,
      String content,
      List<String>? photos});
}

/// @nodoc
class __$$_ReviewPostCopyWithImpl<$Res>
    extends _$ReviewPostCopyWithImpl<$Res, _$_ReviewPost>
    implements _$$_ReviewPostCopyWith<$Res> {
  __$$_ReviewPostCopyWithImpl(
      _$_ReviewPost _value, $Res Function(_$_ReviewPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentType = null,
    Object? rating = null,
    Object? content = null,
    Object? photos = freezed,
  }) {
    return _then(_$_ReviewPost(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_ReviewPost implements _ReviewPost {
  _$_ReviewPost(
      {required this.contentId,
      required this.contentType,
      required this.rating,
      required this.content,
      final List<String>? photos = const []})
      : _photos = photos;

  @override
  final int contentId;
  @override
  final int contentType;
  @override
  final int rating;
  @override
  final String content;
  final List<String>? _photos;
  @override
  @JsonKey()
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReviewPost(contentId: $contentId, contentType: $contentType, rating: $rating, content: $content, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewPost &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentId, contentType, rating,
      content, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewPostCopyWith<_$_ReviewPost> get copyWith =>
      __$$_ReviewPostCopyWithImpl<_$_ReviewPost>(this, _$identity);
}

abstract class _ReviewPost implements ReviewPost {
  factory _ReviewPost(
      {required final int contentId,
      required final int contentType,
      required final int rating,
      required final String content,
      final List<String>? photos}) = _$_ReviewPost;

  @override
  int get contentId;
  @override
  int get contentType;
  @override
  int get rating;
  @override
  String get content;
  @override
  List<String>? get photos;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewPostCopyWith<_$_ReviewPost> get copyWith =>
      throw _privateConstructorUsedError;
}
