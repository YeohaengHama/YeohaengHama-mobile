// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_find_all_diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FindAllDiary _$FindAllDiaryFromJson(Map<String, dynamic> json) {
  return _FindAllDiary.fromJson(json);
}

/// @nodoc
mixin _$FindAllDiary {
  int get itineraryId => throw _privateConstructorUsedError;
  int get diaryId => throw _privateConstructorUsedError;
  List<String> get tag => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError; // 수정된 부분
  AccountShowDTO get accountShowDTO => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindAllDiaryCopyWith<FindAllDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindAllDiaryCopyWith<$Res> {
  factory $FindAllDiaryCopyWith(
          FindAllDiary value, $Res Function(FindAllDiary) then) =
      _$FindAllDiaryCopyWithImpl<$Res, FindAllDiary>;
  @useResult
  $Res call(
      {int itineraryId,
      int diaryId,
      List<String> tag,
      String date,
      String title,
      String content,
      List<String> photos,
      AccountShowDTO accountShowDTO});

  $AccountShowDTOCopyWith<$Res> get accountShowDTO;
}

/// @nodoc
class _$FindAllDiaryCopyWithImpl<$Res, $Val extends FindAllDiary>
    implements $FindAllDiaryCopyWith<$Res> {
  _$FindAllDiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itineraryId = null,
    Object? diaryId = null,
    Object? tag = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = null,
    Object? accountShowDTO = null,
  }) {
    return _then(_value.copyWith(
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as int,
      diaryId: null == diaryId
          ? _value.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accountShowDTO: null == accountShowDTO
          ? _value.accountShowDTO
          : accountShowDTO // ignore: cast_nullable_to_non_nullable
              as AccountShowDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountShowDTOCopyWith<$Res> get accountShowDTO {
    return $AccountShowDTOCopyWith<$Res>(_value.accountShowDTO, (value) {
      return _then(_value.copyWith(accountShowDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FindAllDiaryCopyWith<$Res>
    implements $FindAllDiaryCopyWith<$Res> {
  factory _$$_FindAllDiaryCopyWith(
          _$_FindAllDiary value, $Res Function(_$_FindAllDiary) then) =
      __$$_FindAllDiaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itineraryId,
      int diaryId,
      List<String> tag,
      String date,
      String title,
      String content,
      List<String> photos,
      AccountShowDTO accountShowDTO});

  @override
  $AccountShowDTOCopyWith<$Res> get accountShowDTO;
}

/// @nodoc
class __$$_FindAllDiaryCopyWithImpl<$Res>
    extends _$FindAllDiaryCopyWithImpl<$Res, _$_FindAllDiary>
    implements _$$_FindAllDiaryCopyWith<$Res> {
  __$$_FindAllDiaryCopyWithImpl(
      _$_FindAllDiary _value, $Res Function(_$_FindAllDiary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itineraryId = null,
    Object? diaryId = null,
    Object? tag = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = null,
    Object? accountShowDTO = null,
  }) {
    return _then(_$_FindAllDiary(
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as int,
      diaryId: null == diaryId
          ? _value.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value._tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      accountShowDTO: null == accountShowDTO
          ? _value.accountShowDTO
          : accountShowDTO // ignore: cast_nullable_to_non_nullable
              as AccountShowDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindAllDiary implements _FindAllDiary {
  const _$_FindAllDiary(
      {required this.itineraryId,
      required this.diaryId,
      required final List<String> tag,
      required this.date,
      required this.title,
      required this.content,
      required final List<String> photos,
      required this.accountShowDTO})
      : _tag = tag,
        _photos = photos;

  factory _$_FindAllDiary.fromJson(Map<String, dynamic> json) =>
      _$$_FindAllDiaryFromJson(json);

  @override
  final int itineraryId;
  @override
  final int diaryId;
  final List<String> _tag;
  @override
  List<String> get tag {
    if (_tag is EqualUnmodifiableListView) return _tag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tag);
  }

  @override
  final String date;
  @override
  final String title;
  @override
  final String content;
  final List<String> _photos;
  @override
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

// 수정된 부분
  @override
  final AccountShowDTO accountShowDTO;

  @override
  String toString() {
    return 'FindAllDiary(itineraryId: $itineraryId, diaryId: $diaryId, tag: $tag, date: $date, title: $title, content: $content, photos: $photos, accountShowDTO: $accountShowDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FindAllDiary &&
            (identical(other.itineraryId, itineraryId) ||
                other.itineraryId == itineraryId) &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            const DeepCollectionEquality().equals(other._tag, _tag) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.accountShowDTO, accountShowDTO) ||
                other.accountShowDTO == accountShowDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itineraryId,
      diaryId,
      const DeepCollectionEquality().hash(_tag),
      date,
      title,
      content,
      const DeepCollectionEquality().hash(_photos),
      accountShowDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FindAllDiaryCopyWith<_$_FindAllDiary> get copyWith =>
      __$$_FindAllDiaryCopyWithImpl<_$_FindAllDiary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FindAllDiaryToJson(
      this,
    );
  }
}

abstract class _FindAllDiary implements FindAllDiary {
  const factory _FindAllDiary(
      {required final int itineraryId,
      required final int diaryId,
      required final List<String> tag,
      required final String date,
      required final String title,
      required final String content,
      required final List<String> photos,
      required final AccountShowDTO accountShowDTO}) = _$_FindAllDiary;

  factory _FindAllDiary.fromJson(Map<String, dynamic> json) =
      _$_FindAllDiary.fromJson;

  @override
  int get itineraryId;
  @override
  int get diaryId;
  @override
  List<String> get tag;
  @override
  String get date;
  @override
  String get title;
  @override
  String get content;
  @override
  List<String> get photos;
  @override // 수정된 부분
  AccountShowDTO get accountShowDTO;
  @override
  @JsonKey(ignore: true)
  _$$_FindAllDiaryCopyWith<_$_FindAllDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountShowDTO _$AccountShowDTOFromJson(Map<String, dynamic> json) {
  return _AccountShowDTO.fromJson(json);
}

/// @nodoc
mixin _$AccountShowDTO {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountShowDTOCopyWith<AccountShowDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountShowDTOCopyWith<$Res> {
  factory $AccountShowDTOCopyWith(
          AccountShowDTO value, $Res Function(AccountShowDTO) then) =
      _$AccountShowDTOCopyWithImpl<$Res, AccountShowDTO>;
  @useResult
  $Res call({int id, String nickname, String? photoUrl});
}

/// @nodoc
class _$AccountShowDTOCopyWithImpl<$Res, $Val extends AccountShowDTO>
    implements $AccountShowDTOCopyWith<$Res> {
  _$AccountShowDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountShowDTOCopyWith<$Res>
    implements $AccountShowDTOCopyWith<$Res> {
  factory _$$_AccountShowDTOCopyWith(
          _$_AccountShowDTO value, $Res Function(_$_AccountShowDTO) then) =
      __$$_AccountShowDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String? photoUrl});
}

/// @nodoc
class __$$_AccountShowDTOCopyWithImpl<$Res>
    extends _$AccountShowDTOCopyWithImpl<$Res, _$_AccountShowDTO>
    implements _$$_AccountShowDTOCopyWith<$Res> {
  __$$_AccountShowDTOCopyWithImpl(
      _$_AccountShowDTO _value, $Res Function(_$_AccountShowDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_AccountShowDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountShowDTO implements _AccountShowDTO {
  const _$_AccountShowDTO(
      {required this.id, required this.nickname, this.photoUrl});

  factory _$_AccountShowDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AccountShowDTOFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'AccountShowDTO(id: $id, nickname: $nickname, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountShowDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountShowDTOCopyWith<_$_AccountShowDTO> get copyWith =>
      __$$_AccountShowDTOCopyWithImpl<_$_AccountShowDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountShowDTOToJson(
      this,
    );
  }
}

abstract class _AccountShowDTO implements AccountShowDTO {
  const factory _AccountShowDTO(
      {required final int id,
      required final String nickname,
      final String? photoUrl}) = _$_AccountShowDTO;

  factory _AccountShowDTO.fromJson(Map<String, dynamic> json) =
      _$_AccountShowDTO.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AccountShowDTOCopyWith<_$_AccountShowDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
