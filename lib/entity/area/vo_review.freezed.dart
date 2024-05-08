// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Review {
  Tourism get tourism => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  DateTime get wirteTime => throw _privateConstructorUsedError;
  List<String>? get Images => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {Tourism tourism,
      int id,
      User user,
      double score,
      DateTime wirteTime,
      List<String>? Images,
      String contents});

  $TourismCopyWith<$Res> get tourism;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourism = null,
    Object? id = null,
    Object? user = null,
    Object? score = null,
    Object? wirteTime = null,
    Object? Images = freezed,
    Object? contents = null,
  }) {
    return _then(_value.copyWith(
      tourism: null == tourism
          ? _value.tourism
          : tourism // ignore: cast_nullable_to_non_nullable
              as Tourism,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      wirteTime: null == wirteTime
          ? _value.wirteTime
          : wirteTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      Images: freezed == Images
          ? _value.Images
          : Images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TourismCopyWith<$Res> get tourism {
    return $TourismCopyWith<$Res>(_value.tourism, (value) {
      return _then(_value.copyWith(tourism: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Tourism tourism,
      int id,
      User user,
      double score,
      DateTime wirteTime,
      List<String>? Images,
      String contents});

  @override
  $TourismCopyWith<$Res> get tourism;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourism = null,
    Object? id = null,
    Object? user = null,
    Object? score = null,
    Object? wirteTime = null,
    Object? Images = freezed,
    Object? contents = null,
  }) {
    return _then(_$_Review(
      tourism: null == tourism
          ? _value.tourism
          : tourism // ignore: cast_nullable_to_non_nullable
              as Tourism,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      wirteTime: null == wirteTime
          ? _value.wirteTime
          : wirteTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      Images: freezed == Images
          ? _value._Images
          : Images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Review implements _Review {
  const _$_Review(
      {required this.tourism,
      required this.id,
      required this.user,
      required this.score,
      required this.wirteTime,
      final List<String>? Images = const [],
      required this.contents})
      : _Images = Images;

  @override
  final Tourism tourism;
  @override
  final int id;
  @override
  final User user;
  @override
  final double score;
  @override
  final DateTime wirteTime;
  final List<String>? _Images;
  @override
  @JsonKey()
  List<String>? get Images {
    final value = _Images;
    if (value == null) return null;
    if (_Images is EqualUnmodifiableListView) return _Images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String contents;

  @override
  String toString() {
    return 'Review(tourism: $tourism, id: $id, user: $user, score: $score, wirteTime: $wirteTime, Images: $Images, contents: $contents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.tourism, tourism) || other.tourism == tourism) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.wirteTime, wirteTime) ||
                other.wirteTime == wirteTime) &&
            const DeepCollectionEquality().equals(other._Images, _Images) &&
            (identical(other.contents, contents) ||
                other.contents == contents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tourism, id, user, score,
      wirteTime, const DeepCollectionEquality().hash(_Images), contents);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);
}

abstract class _Review implements Review {
  const factory _Review(
      {required final Tourism tourism,
      required final int id,
      required final User user,
      required final double score,
      required final DateTime wirteTime,
      final List<String>? Images,
      required final String contents}) = _$_Review;

  @override
  Tourism get tourism;
  @override
  int get id;
  @override
  User get user;
  @override
  double get score;
  @override
  DateTime get wirteTime;
  @override
  List<String>? get Images;
  @override
  String get contents;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
