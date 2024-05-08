// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_save_diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SaveDiary {
  int get itinerary => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveDiaryCopyWith<SaveDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveDiaryCopyWith<$Res> {
  factory $SaveDiaryCopyWith(SaveDiary value, $Res Function(SaveDiary) then) =
      _$SaveDiaryCopyWithImpl<$Res, SaveDiary>;
  @useResult
  $Res call(
      {int itinerary,
      String date,
      String title,
      String content,
      List<String>? photos});
}

/// @nodoc
class _$SaveDiaryCopyWithImpl<$Res, $Val extends SaveDiary>
    implements $SaveDiaryCopyWith<$Res> {
  _$SaveDiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itinerary = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_SaveDiaryCopyWith<$Res> implements $SaveDiaryCopyWith<$Res> {
  factory _$$_SaveDiaryCopyWith(
          _$_SaveDiary value, $Res Function(_$_SaveDiary) then) =
      __$$_SaveDiaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itinerary,
      String date,
      String title,
      String content,
      List<String>? photos});
}

/// @nodoc
class __$$_SaveDiaryCopyWithImpl<$Res>
    extends _$SaveDiaryCopyWithImpl<$Res, _$_SaveDiary>
    implements _$$_SaveDiaryCopyWith<$Res> {
  __$$_SaveDiaryCopyWithImpl(
      _$_SaveDiary _value, $Res Function(_$_SaveDiary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itinerary = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = freezed,
  }) {
    return _then(_$_SaveDiary(
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_SaveDiary implements _SaveDiary {
  const _$_SaveDiary(
      {required this.itinerary,
      required this.date,
      required this.title,
      required this.content,
      final List<String>? photos = const []})
      : _photos = photos;

  @override
  final int itinerary;
  @override
  final String date;
  @override
  final String title;
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
    return 'SaveDiary(itinerary: $itinerary, date: $date, title: $title, content: $content, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveDiary &&
            (identical(other.itinerary, itinerary) ||
                other.itinerary == itinerary) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itinerary, date, title, content,
      const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveDiaryCopyWith<_$_SaveDiary> get copyWith =>
      __$$_SaveDiaryCopyWithImpl<_$_SaveDiary>(this, _$identity);
}

abstract class _SaveDiary implements SaveDiary {
  const factory _SaveDiary(
      {required final int itinerary,
      required final String date,
      required final String title,
      required final String content,
      final List<String>? photos}) = _$_SaveDiary;

  @override
  int get itinerary;
  @override
  String get date;
  @override
  String get title;
  @override
  String get content;
  @override
  List<String>? get photos;
  @override
  @JsonKey(ignore: true)
  _$$_SaveDiaryCopyWith<_$_SaveDiary> get copyWith =>
      throw _privateConstructorUsedError;
}
