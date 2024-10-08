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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveDiary {
  int get itinerary => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;

  /// Create a copy of SaveDiary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SaveDiary
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$SaveDiaryImplCopyWith<$Res>
    implements $SaveDiaryCopyWith<$Res> {
  factory _$$SaveDiaryImplCopyWith(
          _$SaveDiaryImpl value, $Res Function(_$SaveDiaryImpl) then) =
      __$$SaveDiaryImplCopyWithImpl<$Res>;
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
class __$$SaveDiaryImplCopyWithImpl<$Res>
    extends _$SaveDiaryCopyWithImpl<$Res, _$SaveDiaryImpl>
    implements _$$SaveDiaryImplCopyWith<$Res> {
  __$$SaveDiaryImplCopyWithImpl(
      _$SaveDiaryImpl _value, $Res Function(_$SaveDiaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SaveDiary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itinerary = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = freezed,
  }) {
    return _then(_$SaveDiaryImpl(
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

class _$SaveDiaryImpl implements _SaveDiary {
  const _$SaveDiaryImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveDiaryImpl &&
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

  /// Create a copy of SaveDiary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveDiaryImplCopyWith<_$SaveDiaryImpl> get copyWith =>
      __$$SaveDiaryImplCopyWithImpl<_$SaveDiaryImpl>(this, _$identity);
}

abstract class _SaveDiary implements SaveDiary {
  const factory _SaveDiary(
      {required final int itinerary,
      required final String date,
      required final String title,
      required final String content,
      final List<String>? photos}) = _$SaveDiaryImpl;

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

  /// Create a copy of SaveDiary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveDiaryImplCopyWith<_$SaveDiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
