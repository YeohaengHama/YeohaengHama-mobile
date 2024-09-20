// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_review_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewDetail _$ReviewDetailFromJson(Map<String, dynamic> json) {
  return _ReviewDetail.fromJson(json);
}

/// @nodoc
mixin _$ReviewDetail {
  int get contentId => throw _privateConstructorUsedError;
  int get contentTypeId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get reviewPhotoURLList => throw _privateConstructorUsedError;

  /// Serializes this ReviewDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewDetailCopyWith<ReviewDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDetailCopyWith<$Res> {
  factory $ReviewDetailCopyWith(
          ReviewDetail value, $Res Function(ReviewDetail) then) =
      _$ReviewDetailCopyWithImpl<$Res, ReviewDetail>;
  @useResult
  $Res call(
      {int contentId,
      int contentTypeId,
      int rating,
      String content,
      List<String> reviewPhotoURLList});
}

/// @nodoc
class _$ReviewDetailCopyWithImpl<$Res, $Val extends ReviewDetail>
    implements $ReviewDetailCopyWith<$Res> {
  _$ReviewDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? rating = null,
    Object? content = null,
    Object? reviewPhotoURLList = null,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      reviewPhotoURLList: null == reviewPhotoURLList
          ? _value.reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewDetailImplCopyWith<$Res>
    implements $ReviewDetailCopyWith<$Res> {
  factory _$$ReviewDetailImplCopyWith(
          _$ReviewDetailImpl value, $Res Function(_$ReviewDetailImpl) then) =
      __$$ReviewDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int contentId,
      int contentTypeId,
      int rating,
      String content,
      List<String> reviewPhotoURLList});
}

/// @nodoc
class __$$ReviewDetailImplCopyWithImpl<$Res>
    extends _$ReviewDetailCopyWithImpl<$Res, _$ReviewDetailImpl>
    implements _$$ReviewDetailImplCopyWith<$Res> {
  __$$ReviewDetailImplCopyWithImpl(
      _$ReviewDetailImpl _value, $Res Function(_$ReviewDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? rating = null,
    Object? content = null,
    Object? reviewPhotoURLList = null,
  }) {
    return _then(_$ReviewDetailImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      reviewPhotoURLList: null == reviewPhotoURLList
          ? _value._reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewDetailImpl implements _ReviewDetail {
  _$ReviewDetailImpl(
      {required this.contentId,
      required this.contentTypeId,
      required this.rating,
      required this.content,
      required final List<String> reviewPhotoURLList})
      : _reviewPhotoURLList = reviewPhotoURLList;

  factory _$ReviewDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDetailImplFromJson(json);

  @override
  final int contentId;
  @override
  final int contentTypeId;
  @override
  final int rating;
  @override
  final String content;
  final List<String> _reviewPhotoURLList;
  @override
  List<String> get reviewPhotoURLList {
    if (_reviewPhotoURLList is EqualUnmodifiableListView)
      return _reviewPhotoURLList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewPhotoURLList);
  }

  @override
  String toString() {
    return 'ReviewDetail(contentId: $contentId, contentTypeId: $contentTypeId, rating: $rating, content: $content, reviewPhotoURLList: $reviewPhotoURLList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDetailImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._reviewPhotoURLList, _reviewPhotoURLList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contentId, contentTypeId, rating,
      content, const DeepCollectionEquality().hash(_reviewPhotoURLList));

  /// Create a copy of ReviewDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDetailImplCopyWith<_$ReviewDetailImpl> get copyWith =>
      __$$ReviewDetailImplCopyWithImpl<_$ReviewDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDetailImplToJson(
      this,
    );
  }
}

abstract class _ReviewDetail implements ReviewDetail {
  factory _ReviewDetail(
      {required final int contentId,
      required final int contentTypeId,
      required final int rating,
      required final String content,
      required final List<String> reviewPhotoURLList}) = _$ReviewDetailImpl;

  factory _ReviewDetail.fromJson(Map<String, dynamic> json) =
      _$ReviewDetailImpl.fromJson;

  @override
  int get contentId;
  @override
  int get contentTypeId;
  @override
  int get rating;
  @override
  String get content;
  @override
  List<String> get reviewPhotoURLList;

  /// Create a copy of ReviewDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewDetailImplCopyWith<_$ReviewDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
