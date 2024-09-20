// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Diary {
  User get user => throw _privateConstructorUsedError;
  int get diaryId => throw _privateConstructorUsedError;
  String get diaryTitle => throw _privateConstructorUsedError;
  String get diaryContent => throw _privateConstructorUsedError;
  List<String> get diaryImages => throw _privateConstructorUsedError;
  List<String> get diaryTag => throw _privateConstructorUsedError;

  /// Create a copy of Diary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiaryCopyWith<Diary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCopyWith<$Res> {
  factory $DiaryCopyWith(Diary value, $Res Function(Diary) then) =
      _$DiaryCopyWithImpl<$Res, Diary>;
  @useResult
  $Res call(
      {User user,
      int diaryId,
      String diaryTitle,
      String diaryContent,
      List<String> diaryImages,
      List<String> diaryTag});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DiaryCopyWithImpl<$Res, $Val extends Diary>
    implements $DiaryCopyWith<$Res> {
  _$DiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Diary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? diaryId = null,
    Object? diaryTitle = null,
    Object? diaryContent = null,
    Object? diaryImages = null,
    Object? diaryTag = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      diaryId: null == diaryId
          ? _value.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      diaryTitle: null == diaryTitle
          ? _value.diaryTitle
          : diaryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      diaryContent: null == diaryContent
          ? _value.diaryContent
          : diaryContent // ignore: cast_nullable_to_non_nullable
              as String,
      diaryImages: null == diaryImages
          ? _value.diaryImages
          : diaryImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      diaryTag: null == diaryTag
          ? _value.diaryTag
          : diaryTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of Diary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiaryImplCopyWith<$Res> implements $DiaryCopyWith<$Res> {
  factory _$$DiaryImplCopyWith(
          _$DiaryImpl value, $Res Function(_$DiaryImpl) then) =
      __$$DiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      int diaryId,
      String diaryTitle,
      String diaryContent,
      List<String> diaryImages,
      List<String> diaryTag});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$DiaryImplCopyWithImpl<$Res>
    extends _$DiaryCopyWithImpl<$Res, _$DiaryImpl>
    implements _$$DiaryImplCopyWith<$Res> {
  __$$DiaryImplCopyWithImpl(
      _$DiaryImpl _value, $Res Function(_$DiaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Diary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? diaryId = null,
    Object? diaryTitle = null,
    Object? diaryContent = null,
    Object? diaryImages = null,
    Object? diaryTag = null,
  }) {
    return _then(_$DiaryImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      null == diaryId
          ? _value.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      null == diaryTitle
          ? _value.diaryTitle
          : diaryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == diaryContent
          ? _value.diaryContent
          : diaryContent // ignore: cast_nullable_to_non_nullable
              as String,
      null == diaryImages
          ? _value._diaryImages
          : diaryImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == diaryTag
          ? _value._diaryTag
          : diaryTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DiaryImpl implements _Diary {
  const _$DiaryImpl(this.user, this.diaryId, this.diaryTitle, this.diaryContent,
      final List<String> diaryImages, final List<String> diaryTag)
      : _diaryImages = diaryImages,
        _diaryTag = diaryTag;

  @override
  final User user;
  @override
  final int diaryId;
  @override
  final String diaryTitle;
  @override
  final String diaryContent;
  final List<String> _diaryImages;
  @override
  List<String> get diaryImages {
    if (_diaryImages is EqualUnmodifiableListView) return _diaryImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diaryImages);
  }

  final List<String> _diaryTag;
  @override
  List<String> get diaryTag {
    if (_diaryTag is EqualUnmodifiableListView) return _diaryTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diaryTag);
  }

  @override
  String toString() {
    return 'Diary(user: $user, diaryId: $diaryId, diaryTitle: $diaryTitle, diaryContent: $diaryContent, diaryImages: $diaryImages, diaryTag: $diaryTag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.diaryTitle, diaryTitle) ||
                other.diaryTitle == diaryTitle) &&
            (identical(other.diaryContent, diaryContent) ||
                other.diaryContent == diaryContent) &&
            const DeepCollectionEquality()
                .equals(other._diaryImages, _diaryImages) &&
            const DeepCollectionEquality().equals(other._diaryTag, _diaryTag));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      diaryId,
      diaryTitle,
      diaryContent,
      const DeepCollectionEquality().hash(_diaryImages),
      const DeepCollectionEquality().hash(_diaryTag));

  /// Create a copy of Diary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryImplCopyWith<_$DiaryImpl> get copyWith =>
      __$$DiaryImplCopyWithImpl<_$DiaryImpl>(this, _$identity);
}

abstract class _Diary implements Diary {
  const factory _Diary(
      final User user,
      final int diaryId,
      final String diaryTitle,
      final String diaryContent,
      final List<String> diaryImages,
      final List<String> diaryTag) = _$DiaryImpl;

  @override
  User get user;
  @override
  int get diaryId;
  @override
  String get diaryTitle;
  @override
  String get diaryContent;
  @override
  List<String> get diaryImages;
  @override
  List<String> get diaryTag;

  /// Create a copy of Diary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiaryImplCopyWith<_$DiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
