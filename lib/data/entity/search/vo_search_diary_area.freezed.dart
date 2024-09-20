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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Serializes this SearchDiaryArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchDiaryArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SearchDiaryArea
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of SearchDiaryArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountShowDTOCopyWith<$Res> get accountShowDTO {
    return $AccountShowDTOCopyWith<$Res>(_value.accountShowDTO, (value) {
      return _then(_value.copyWith(accountShowDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchDiaryAreaImplCopyWith<$Res>
    implements $SearchDiaryAreaCopyWith<$Res> {
  factory _$$SearchDiaryAreaImplCopyWith(_$SearchDiaryAreaImpl value,
          $Res Function(_$SearchDiaryAreaImpl) then) =
      __$$SearchDiaryAreaImplCopyWithImpl<$Res>;
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
class __$$SearchDiaryAreaImplCopyWithImpl<$Res>
    extends _$SearchDiaryAreaCopyWithImpl<$Res, _$SearchDiaryAreaImpl>
    implements _$$SearchDiaryAreaImplCopyWith<$Res> {
  __$$SearchDiaryAreaImplCopyWithImpl(
      _$SearchDiaryAreaImpl _value, $Res Function(_$SearchDiaryAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchDiaryArea
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$SearchDiaryAreaImpl(
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
class _$SearchDiaryAreaImpl implements _SearchDiaryArea {
  const _$SearchDiaryAreaImpl(
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

  factory _$SearchDiaryAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDiaryAreaImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDiaryAreaImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of SearchDiaryArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDiaryAreaImplCopyWith<_$SearchDiaryAreaImpl> get copyWith =>
      __$$SearchDiaryAreaImplCopyWithImpl<_$SearchDiaryAreaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDiaryAreaImplToJson(
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
      required final AccountShowDTO accountShowDTO}) = _$SearchDiaryAreaImpl;

  factory _SearchDiaryArea.fromJson(Map<String, dynamic> json) =
      _$SearchDiaryAreaImpl.fromJson;

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

  /// Create a copy of SearchDiaryArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchDiaryAreaImplCopyWith<_$SearchDiaryAreaImpl> get copyWith =>
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

  /// Serializes this AccountShowDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountShowDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AccountShowDTO
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$AccountShowDTOImplCopyWith<$Res>
    implements $AccountShowDTOCopyWith<$Res> {
  factory _$$AccountShowDTOImplCopyWith(_$AccountShowDTOImpl value,
          $Res Function(_$AccountShowDTOImpl) then) =
      __$$AccountShowDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String? photoUrl});
}

/// @nodoc
class __$$AccountShowDTOImplCopyWithImpl<$Res>
    extends _$AccountShowDTOCopyWithImpl<$Res, _$AccountShowDTOImpl>
    implements _$$AccountShowDTOImplCopyWith<$Res> {
  __$$AccountShowDTOImplCopyWithImpl(
      _$AccountShowDTOImpl _value, $Res Function(_$AccountShowDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountShowDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
  }) {
    return _then(_$AccountShowDTOImpl(
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
class _$AccountShowDTOImpl implements _AccountShowDTO {
  const _$AccountShowDTOImpl(
      {required this.id, required this.nickname, this.photoUrl});

  factory _$AccountShowDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountShowDTOImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountShowDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname, photoUrl);

  /// Create a copy of AccountShowDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountShowDTOImplCopyWith<_$AccountShowDTOImpl> get copyWith =>
      __$$AccountShowDTOImplCopyWithImpl<_$AccountShowDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountShowDTOImplToJson(
      this,
    );
  }
}

abstract class _AccountShowDTO implements AccountShowDTO {
  const factory _AccountShowDTO(
      {required final int id,
      required final String nickname,
      final String? photoUrl}) = _$AccountShowDTOImpl;

  factory _AccountShowDTO.fromJson(Map<String, dynamic> json) =
      _$AccountShowDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String? get photoUrl;

  /// Create a copy of AccountShowDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountShowDTOImplCopyWith<_$AccountShowDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
