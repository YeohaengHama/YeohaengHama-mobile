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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewPost {
  String get placeName => throw _privateConstructorUsedError;
  int get contentId => throw _privateConstructorUsedError;
  int get contentType => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
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
      {String placeName,
      int contentId,
      int contentType,
      int rating,
      String content,
      String accountId,
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
    Object? placeName = null,
    Object? contentId = null,
    Object? contentType = null,
    Object? rating = null,
    Object? content = null,
    Object? accountId = null,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
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
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewPostImplCopyWith<$Res>
    implements $ReviewPostCopyWith<$Res> {
  factory _$$ReviewPostImplCopyWith(
          _$ReviewPostImpl value, $Res Function(_$ReviewPostImpl) then) =
      __$$ReviewPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String placeName,
      int contentId,
      int contentType,
      int rating,
      String content,
      String accountId,
      List<String>? photos});
}

/// @nodoc
class __$$ReviewPostImplCopyWithImpl<$Res>
    extends _$ReviewPostCopyWithImpl<$Res, _$ReviewPostImpl>
    implements _$$ReviewPostImplCopyWith<$Res> {
  __$$ReviewPostImplCopyWithImpl(
      _$ReviewPostImpl _value, $Res Function(_$ReviewPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeName = null,
    Object? contentId = null,
    Object? contentType = null,
    Object? rating = null,
    Object? content = null,
    Object? accountId = null,
    Object? photos = freezed,
  }) {
    return _then(_$ReviewPostImpl(
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
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
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$ReviewPostImpl implements _ReviewPost {
  _$ReviewPostImpl(
      {required this.placeName,
      required this.contentId,
      required this.contentType,
      required this.rating,
      required this.content,
      required this.accountId,
      final List<String>? photos = const []})
      : _photos = photos;

  @override
  final String placeName;
  @override
  final int contentId;
  @override
  final int contentType;
  @override
  final int rating;
  @override
  final String content;
  @override
  final String accountId;
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
    return 'ReviewPost(placeName: $placeName, contentId: $contentId, contentType: $contentType, rating: $rating, content: $content, accountId: $accountId, photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewPostImpl &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      placeName,
      contentId,
      contentType,
      rating,
      content,
      accountId,
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewPostImplCopyWith<_$ReviewPostImpl> get copyWith =>
      __$$ReviewPostImplCopyWithImpl<_$ReviewPostImpl>(this, _$identity);
}

abstract class _ReviewPost implements ReviewPost {
  factory _ReviewPost(
      {required final String placeName,
      required final int contentId,
      required final int contentType,
      required final int rating,
      required final String content,
      required final String accountId,
      final List<String>? photos}) = _$ReviewPostImpl;

  @override
  String get placeName;
  @override
  int get contentId;
  @override
  int get contentType;
  @override
  int get rating;
  @override
  String get content;
  @override
  String get accountId;
  @override
  List<String>? get photos;
  @override
  @JsonKey(ignore: true)
  _$$ReviewPostImplCopyWith<_$ReviewPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
