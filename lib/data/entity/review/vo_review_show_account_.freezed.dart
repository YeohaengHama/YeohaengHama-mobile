// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_review_show_account_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewShowAccount _$ReviewShowAccountFromJson(Map<String, dynamic> json) {
  return _ReviewShowAccount.fromJson(json);
}

/// @nodoc
mixin _$ReviewShowAccount {
  int get reviewId => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  List<String> get reviewPhotoURLList => throw _privateConstructorUsedError;

  /// Serializes this ReviewShowAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewShowAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewShowAccountCopyWith<ReviewShowAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewShowAccountCopyWith<$Res> {
  factory $ReviewShowAccountCopyWith(
          ReviewShowAccount value, $Res Function(ReviewShowAccount) then) =
      _$ReviewShowAccountCopyWithImpl<$Res, ReviewShowAccount>;
  @useResult
  $Res call(
      {int reviewId,
      String placeName,
      double rating,
      String content,
      String date,
      List<String> reviewPhotoURLList});
}

/// @nodoc
class _$ReviewShowAccountCopyWithImpl<$Res, $Val extends ReviewShowAccount>
    implements $ReviewShowAccountCopyWith<$Res> {
  _$ReviewShowAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewShowAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? placeName = null,
    Object? rating = null,
    Object? content = null,
    Object? date = null,
    Object? reviewPhotoURLList = null,
  }) {
    return _then(_value.copyWith(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      reviewPhotoURLList: null == reviewPhotoURLList
          ? _value.reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewShowAccountImplCopyWith<$Res>
    implements $ReviewShowAccountCopyWith<$Res> {
  factory _$$ReviewShowAccountImplCopyWith(_$ReviewShowAccountImpl value,
          $Res Function(_$ReviewShowAccountImpl) then) =
      __$$ReviewShowAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int reviewId,
      String placeName,
      double rating,
      String content,
      String date,
      List<String> reviewPhotoURLList});
}

/// @nodoc
class __$$ReviewShowAccountImplCopyWithImpl<$Res>
    extends _$ReviewShowAccountCopyWithImpl<$Res, _$ReviewShowAccountImpl>
    implements _$$ReviewShowAccountImplCopyWith<$Res> {
  __$$ReviewShowAccountImplCopyWithImpl(_$ReviewShowAccountImpl _value,
      $Res Function(_$ReviewShowAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewShowAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? placeName = null,
    Object? rating = null,
    Object? content = null,
    Object? date = null,
    Object? reviewPhotoURLList = null,
  }) {
    return _then(_$ReviewShowAccountImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
class _$ReviewShowAccountImpl implements _ReviewShowAccount {
  const _$ReviewShowAccountImpl(
      {required this.reviewId,
      required this.placeName,
      required this.rating,
      required this.content,
      required this.date,
      required final List<String> reviewPhotoURLList})
      : _reviewPhotoURLList = reviewPhotoURLList;

  factory _$ReviewShowAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewShowAccountImplFromJson(json);

  @override
  final int reviewId;
  @override
  final String placeName;
  @override
  final double rating;
  @override
  final String content;
  @override
  final String date;
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
    return 'ReviewShowAccount(reviewId: $reviewId, placeName: $placeName, rating: $rating, content: $content, date: $date, reviewPhotoURLList: $reviewPhotoURLList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewShowAccountImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._reviewPhotoURLList, _reviewPhotoURLList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reviewId, placeName, rating,
      content, date, const DeepCollectionEquality().hash(_reviewPhotoURLList));

  /// Create a copy of ReviewShowAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewShowAccountImplCopyWith<_$ReviewShowAccountImpl> get copyWith =>
      __$$ReviewShowAccountImplCopyWithImpl<_$ReviewShowAccountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewShowAccountImplToJson(
      this,
    );
  }
}

abstract class _ReviewShowAccount implements ReviewShowAccount {
  const factory _ReviewShowAccount(
          {required final int reviewId,
          required final String placeName,
          required final double rating,
          required final String content,
          required final String date,
          required final List<String> reviewPhotoURLList}) =
      _$ReviewShowAccountImpl;

  factory _ReviewShowAccount.fromJson(Map<String, dynamic> json) =
      _$ReviewShowAccountImpl.fromJson;

  @override
  int get reviewId;
  @override
  String get placeName;
  @override
  double get rating;
  @override
  String get content;
  @override
  String get date;
  @override
  List<String> get reviewPhotoURLList;

  /// Create a copy of ReviewShowAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewShowAccountImplCopyWith<_$ReviewShowAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
