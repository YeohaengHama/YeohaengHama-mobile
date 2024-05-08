// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_search_diary_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchDiaryArea _$SearchDiaryAreaFromJson(Map<String, dynamic> json) {
  return _SearchDiaryArea.fromJson(json);
}

/// @nodoc
mixin _$SearchDiaryArea {
  int get diary => throw _privateConstructorUsedError;
  int get itinerary => throw _privateConstructorUsedError;
  List<String> get tag => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  AccountShowDTO get accountShowDTO => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDiaryAreaCopyWith<SearchDiaryArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDiaryAreaCopyWith<$Res> {
  factory $SearchDiaryAreaCopyWith(
          SearchDiaryArea value, $Res Function(SearchDiaryArea) then) =
      _$SearchDiaryAreaCopyWithImpl<$Res, SearchDiaryArea>;
  @useResult
  $Res call(
      {int diary,
      int itinerary,
      List<String> tag,
      String date,
      String title,
      String content,
      List<String> photos,
      AccountShowDTO accountShowDTO});

  $AccountShowDTOCopyWith<$Res> get accountShowDTO;
}

/// @nodoc
class _$SearchDiaryAreaCopyWithImpl<$Res, $Val extends SearchDiaryArea>
    implements $SearchDiaryAreaCopyWith<$Res> {
  _$SearchDiaryAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diary = null,
    Object? itinerary = null,
    Object? tag = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = null,
    Object? accountShowDTO = null,
  }) {
    return _then(_value.copyWith(
      diary: null == diary
          ? _value.diary
          : diary // ignore: cast_nullable_to_non_nullable
              as int,
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SearchDiaryAreaCopyWith<$Res>
    implements $SearchDiaryAreaCopyWith<$Res> {
  factory _$$_SearchDiaryAreaCopyWith(
          _$_SearchDiaryArea value, $Res Function(_$_SearchDiaryArea) then) =
      __$$_SearchDiaryAreaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int diary,
      int itinerary,
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
class __$$_SearchDiaryAreaCopyWithImpl<$Res>
    extends _$SearchDiaryAreaCopyWithImpl<$Res, _$_SearchDiaryArea>
    implements _$$_SearchDiaryAreaCopyWith<$Res> {
  __$$_SearchDiaryAreaCopyWithImpl(
      _$_SearchDiaryArea _value, $Res Function(_$_SearchDiaryArea) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diary = null,
    Object? itinerary = null,
    Object? tag = null,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = null,
    Object? accountShowDTO = null,
  }) {
    return _then(_$_SearchDiaryArea(
      diary: null == diary
          ? _value.diary
          : diary // ignore: cast_nullable_to_non_nullable
              as int,
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
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
class _$_SearchDiaryArea implements _SearchDiaryArea {
  const _$_SearchDiaryArea(
      {required this.diary,
      required this.itinerary,
      required final List<String> tag,
      required this.date,
      required this.title,
      required this.content,
      required final List<String> photos,
      required this.accountShowDTO})
      : _tag = tag,
        _photos = photos;

  factory _$_SearchDiaryArea.fromJson(Map<String, dynamic> json) =>
      _$$_SearchDiaryAreaFromJson(json);

  @override
  final int diary;
  @override
  final int itinerary;
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

  @override
  final AccountShowDTO accountShowDTO;

  @override
  String toString() {
    return 'SearchDiaryArea(diary: $diary, itinerary: $itinerary, tag: $tag, date: $date, title: $title, content: $content, photos: $photos, accountShowDTO: $accountShowDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchDiaryArea &&
            (identical(other.diary, diary) || other.diary == diary) &&
            (identical(other.itinerary, itinerary) ||
                other.itinerary == itinerary) &&
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
      diary,
      itinerary,
      const DeepCollectionEquality().hash(_tag),
      date,
      title,
      content,
      const DeepCollectionEquality().hash(_photos),
      accountShowDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchDiaryAreaCopyWith<_$_SearchDiaryArea> get copyWith =>
      __$$_SearchDiaryAreaCopyWithImpl<_$_SearchDiaryArea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchDiaryAreaToJson(
      this,
    );
  }
}

abstract class _SearchDiaryArea implements SearchDiaryArea {
  const factory _SearchDiaryArea(
      {required final int diary,
      required final int itinerary,
      required final List<String> tag,
      required final String date,
      required final String title,
      required final String content,
      required final List<String> photos,
      required final AccountShowDTO accountShowDTO}) = _$_SearchDiaryArea;

  factory _SearchDiaryArea.fromJson(Map<String, dynamic> json) =
      _$_SearchDiaryArea.fromJson;

  @override
  int get diary;
  @override
  int get itinerary;
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
  @override
  AccountShowDTO get accountShowDTO;
  @override
  @JsonKey(ignore: true)
  _$$_SearchDiaryAreaCopyWith<_$_SearchDiaryArea> get copyWith =>
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
