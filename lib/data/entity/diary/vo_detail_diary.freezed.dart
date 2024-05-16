// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_detail_diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailDiary {
  int get id => throw _privateConstructorUsedError;
  List<String>? get tag => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  Itinerary get itinerary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailDiaryCopyWith<DetailDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDiaryCopyWith<$Res> {
  factory $DetailDiaryCopyWith(
          DetailDiary value, $Res Function(DetailDiary) then) =
      _$DetailDiaryCopyWithImpl<$Res, DetailDiary>;
  @useResult
  $Res call(
      {int id,
      List<String>? tag,
      String date,
      String title,
      String content,
      List<String> photos,
      Account account,
      Itinerary itinerary});

  $AccountCopyWith<$Res> get account;
  $ItineraryCopyWith<$Res> get itinerary;
}

/// @nodoc
class _$DetailDiaryCopyWithImpl<$Res, $Val extends DetailDiary>
    implements $DetailDiaryCopyWith<$Res> {
  _$DetailDiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = freezed,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = null,
    Object? account = null,
    Object? itinerary = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as Itinerary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItineraryCopyWith<$Res> get itinerary {
    return $ItineraryCopyWith<$Res>(_value.itinerary, (value) {
      return _then(_value.copyWith(itinerary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailDiaryCopyWith<$Res>
    implements $DetailDiaryCopyWith<$Res> {
  factory _$$_DetailDiaryCopyWith(
          _$_DetailDiary value, $Res Function(_$_DetailDiary) then) =
      __$$_DetailDiaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<String>? tag,
      String date,
      String title,
      String content,
      List<String> photos,
      Account account,
      Itinerary itinerary});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $ItineraryCopyWith<$Res> get itinerary;
}

/// @nodoc
class __$$_DetailDiaryCopyWithImpl<$Res>
    extends _$DetailDiaryCopyWithImpl<$Res, _$_DetailDiary>
    implements _$$_DetailDiaryCopyWith<$Res> {
  __$$_DetailDiaryCopyWithImpl(
      _$_DetailDiary _value, $Res Function(_$_DetailDiary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = freezed,
    Object? date = null,
    Object? title = null,
    Object? content = null,
    Object? photos = null,
    Object? account = null,
    Object? itinerary = null,
  }) {
    return _then(_$_DetailDiary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: freezed == tag
          ? _value._tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as Itinerary,
    ));
  }
}

/// @nodoc

class _$_DetailDiary implements _DetailDiary {
  const _$_DetailDiary(
      {required this.id,
      required final List<String>? tag,
      required this.date,
      required this.title,
      required this.content,
      required final List<String> photos,
      required this.account,
      required this.itinerary})
      : _tag = tag,
        _photos = photos;

  @override
  final int id;
  final List<String>? _tag;
  @override
  List<String>? get tag {
    final value = _tag;
    if (value == null) return null;
    if (_tag is EqualUnmodifiableListView) return _tag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
  final Account account;
  @override
  final Itinerary itinerary;

  @override
  String toString() {
    return 'DetailDiary(id: $id, tag: $tag, date: $date, title: $title, content: $content, photos: $photos, account: $account, itinerary: $itinerary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailDiary &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._tag, _tag) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.itinerary, itinerary) ||
                other.itinerary == itinerary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_tag),
      date,
      title,
      content,
      const DeepCollectionEquality().hash(_photos),
      account,
      itinerary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailDiaryCopyWith<_$_DetailDiary> get copyWith =>
      __$$_DetailDiaryCopyWithImpl<_$_DetailDiary>(this, _$identity);
}

abstract class _DetailDiary implements DetailDiary {
  const factory _DetailDiary(
      {required final int id,
      required final List<String>? tag,
      required final String date,
      required final String title,
      required final String content,
      required final List<String> photos,
      required final Account account,
      required final Itinerary itinerary}) = _$_DetailDiary;

  @override
  int get id;
  @override
  List<String>? get tag;
  @override
  String get date;
  @override
  String get title;
  @override
  String get content;
  @override
  List<String> get photos;
  @override
  Account get account;
  @override
  Itinerary get itinerary;
  @override
  @JsonKey(ignore: true)
  _$$_DetailDiaryCopyWith<_$_DetailDiary> get copyWith =>
      throw _privateConstructorUsedError;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String get accountRole => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({int id, String nickname, String? photoUrl, String accountRole});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

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
    Object? accountRole = null,
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
      accountRole: null == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(
          _$_Account value, $Res Function(_$_Account) then) =
      __$$_AccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String? photoUrl, String accountRole});
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$_Account>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
    Object? accountRole = null,
  }) {
    return _then(_$_Account(
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
      accountRole: null == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Account implements _Account {
  const _$_Account(
      {required this.id,
      required this.nickname,
      required this.photoUrl,
      required this.accountRole});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$$_AccountFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String? photoUrl;
  @override
  final String accountRole;

  @override
  String toString() {
    return 'Account(id: $id, nickname: $nickname, photoUrl: $photoUrl, accountRole: $accountRole)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.accountRole, accountRole) ||
                other.accountRole == accountRole));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, photoUrl, accountRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final int id,
      required final String nickname,
      required final String? photoUrl,
      required final String accountRole}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String? get photoUrl;
  @override
  String get accountRole;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      throw _privateConstructorUsedError;
}

Itinerary _$ItineraryFromJson(Map<String, dynamic> json) {
  return _Itinerary.fromJson(json);
}

/// @nodoc
mixin _$Itinerary {
  int get itineraryId => throw _privateConstructorUsedError;
  List<String>? get type => throw _privateConstructorUsedError;
  List<String>? get style => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get transportation => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  Map<String, List<Place>?> get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItineraryCopyWith<Itinerary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryCopyWith<$Res> {
  factory $ItineraryCopyWith(Itinerary value, $Res Function(Itinerary) then) =
      _$ItineraryCopyWithImpl<$Res, Itinerary>;
  @useResult
  $Res call(
      {int itineraryId,
      List<String>? type,
      List<String>? style,
      String name,
      String transportation,
      String area,
      DateTime startDate,
      DateTime endDate,
      Map<String, List<Place>?> place});
}

/// @nodoc
class _$ItineraryCopyWithImpl<$Res, $Val extends Itinerary>
    implements $ItineraryCopyWith<$Res> {
  _$ItineraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itineraryId = null,
    Object? type = freezed,
    Object? style = freezed,
    Object? name = null,
    Object? transportation = null,
    Object? area = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? place = null,
  }) {
    return _then(_value.copyWith(
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      transportation: null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Place>?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItineraryCopyWith<$Res> implements $ItineraryCopyWith<$Res> {
  factory _$$_ItineraryCopyWith(
          _$_Itinerary value, $Res Function(_$_Itinerary) then) =
      __$$_ItineraryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itineraryId,
      List<String>? type,
      List<String>? style,
      String name,
      String transportation,
      String area,
      DateTime startDate,
      DateTime endDate,
      Map<String, List<Place>?> place});
}

/// @nodoc
class __$$_ItineraryCopyWithImpl<$Res>
    extends _$ItineraryCopyWithImpl<$Res, _$_Itinerary>
    implements _$$_ItineraryCopyWith<$Res> {
  __$$_ItineraryCopyWithImpl(
      _$_Itinerary _value, $Res Function(_$_Itinerary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itineraryId = null,
    Object? type = freezed,
    Object? style = freezed,
    Object? name = null,
    Object? transportation = null,
    Object? area = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? place = null,
  }) {
    return _then(_$_Itinerary(
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as int,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      style: freezed == style
          ? _value._style
          : style // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      transportation: null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      place: null == place
          ? _value._place
          : place // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Place>?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Itinerary implements _Itinerary {
  const _$_Itinerary(
      {required this.itineraryId,
      required final List<String>? type,
      required final List<String>? style,
      required this.name,
      required this.transportation,
      required this.area,
      required this.startDate,
      required this.endDate,
      required final Map<String, List<Place>?> place})
      : _type = type,
        _style = style,
        _place = place;

  factory _$_Itinerary.fromJson(Map<String, dynamic> json) =>
      _$$_ItineraryFromJson(json);

  @override
  final int itineraryId;
  final List<String>? _type;
  @override
  List<String>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _style;
  @override
  List<String>? get style {
    final value = _style;
    if (value == null) return null;
    if (_style is EqualUnmodifiableListView) return _style;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String name;
  @override
  final String transportation;
  @override
  final String area;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  final Map<String, List<Place>?> _place;
  @override
  Map<String, List<Place>?> get place {
    if (_place is EqualUnmodifiableMapView) return _place;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_place);
  }

  @override
  String toString() {
    return 'Itinerary(itineraryId: $itineraryId, type: $type, style: $style, name: $name, transportation: $transportation, area: $area, startDate: $startDate, endDate: $endDate, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Itinerary &&
            (identical(other.itineraryId, itineraryId) ||
                other.itineraryId == itineraryId) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality().equals(other._style, _style) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.transportation, transportation) ||
                other.transportation == transportation) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality().equals(other._place, _place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itineraryId,
      const DeepCollectionEquality().hash(_type),
      const DeepCollectionEquality().hash(_style),
      name,
      transportation,
      area,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_place));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItineraryCopyWith<_$_Itinerary> get copyWith =>
      __$$_ItineraryCopyWithImpl<_$_Itinerary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItineraryToJson(
      this,
    );
  }
}

abstract class _Itinerary implements Itinerary {
  const factory _Itinerary(
      {required final int itineraryId,
      required final List<String>? type,
      required final List<String>? style,
      required final String name,
      required final String transportation,
      required final String area,
      required final DateTime startDate,
      required final DateTime endDate,
      required final Map<String, List<Place>?> place}) = _$_Itinerary;

  factory _Itinerary.fromJson(Map<String, dynamic> json) =
      _$_Itinerary.fromJson;

  @override
  int get itineraryId;
  @override
  List<String>? get type;
  @override
  List<String>? get style;
  @override
  String get name;
  @override
  String get transportation;
  @override
  String get area;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  Map<String, List<Place>?> get place;
  @override
  @JsonKey(ignore: true)
  _$$_ItineraryCopyWith<_$_Itinerary> get copyWith =>
      throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  int get day => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  String get placeType => throw _privateConstructorUsedError;
  String get placeNum => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  String get addr1 => throw _privateConstructorUsedError;
  double get mapx => throw _privateConstructorUsedError;
  double get mapy => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  Review? get review => throw _privateConstructorUsedError;
  int get placeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {int day,
      String startTime,
      String endTime,
      String placeType,
      String placeNum,
      String placeName,
      String addr1,
      double mapx,
      double mapy,
      String? memo,
      Review? review,
      int placeId});

  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? placeType = null,
    Object? placeNum = null,
    Object? placeName = null,
    Object? addr1 = null,
    Object? mapx = null,
    Object? mapy = null,
    Object? memo = freezed,
    Object? review = freezed,
    Object? placeId = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String,
      placeNum: null == placeNum
          ? _value.placeNum
          : placeNum // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as double,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as double,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$_PlaceCopyWith(_$_Place value, $Res Function(_$_Place) then) =
      __$$_PlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int day,
      String startTime,
      String endTime,
      String placeType,
      String placeNum,
      String placeName,
      String addr1,
      double mapx,
      double mapy,
      String? memo,
      Review? review,
      int placeId});

  @override
  $ReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$_PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res, _$_Place>
    implements _$$_PlaceCopyWith<$Res> {
  __$$_PlaceCopyWithImpl(_$_Place _value, $Res Function(_$_Place) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? placeType = null,
    Object? placeNum = null,
    Object? placeName = null,
    Object? addr1 = null,
    Object? mapx = null,
    Object? mapy = null,
    Object? memo = freezed,
    Object? review = freezed,
    Object? placeId = null,
  }) {
    return _then(_$_Place(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String,
      placeNum: null == placeNum
          ? _value.placeNum
          : placeNum // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as double,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as double,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review?,
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Place implements _Place {
  const _$_Place(
      {required this.day,
      required this.startTime,
      required this.endTime,
      required this.placeType,
      required this.placeNum,
      required this.placeName,
      required this.addr1,
      required this.mapx,
      required this.mapy,
      required this.memo,
      required this.review,
      required this.placeId});

  factory _$_Place.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceFromJson(json);

  @override
  final int day;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String placeType;
  @override
  final String placeNum;
  @override
  final String placeName;
  @override
  final String addr1;
  @override
  final double mapx;
  @override
  final double mapy;
  @override
  final String? memo;
  @override
  final Review? review;
  @override
  final int placeId;

  @override
  String toString() {
    return 'Place(day: $day, startTime: $startTime, endTime: $endTime, placeType: $placeType, placeNum: $placeNum, placeName: $placeName, addr1: $addr1, mapx: $mapx, mapy: $mapy, memo: $memo, review: $review, placeId: $placeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Place &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.placeType, placeType) ||
                other.placeType == placeType) &&
            (identical(other.placeNum, placeNum) ||
                other.placeNum == placeNum) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.addr1, addr1) || other.addr1 == addr1) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.placeId, placeId) || other.placeId == placeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, startTime, endTime,
      placeType, placeNum, placeName, addr1, mapx, mapy, memo, review, placeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      __$$_PlaceCopyWithImpl<_$_Place>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {required final int day,
      required final String startTime,
      required final String endTime,
      required final String placeType,
      required final String placeNum,
      required final String placeName,
      required final String addr1,
      required final double mapx,
      required final double mapy,
      required final String? memo,
      required final Review? review,
      required final int placeId}) = _$_Place;

  factory _Place.fromJson(Map<String, dynamic> json) = _$_Place.fromJson;

  @override
  int get day;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  String get placeType;
  @override
  String get placeNum;
  @override
  String get placeName;
  @override
  String get addr1;
  @override
  double get mapx;
  @override
  double get mapy;
  @override
  String? get memo;
  @override
  Review? get review;
  @override
  int get placeId;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceCopyWith<_$_Place> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  int? get reviewId => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<String>? get reviewPhotoURLList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {int? reviewId,
      double? rating,
      String? content,
      List<String>? reviewPhotoURLList});
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
    Object? reviewId = freezed,
    Object? rating = freezed,
    Object? content = freezed,
    Object? reviewPhotoURLList = freezed,
  }) {
    return _then(_value.copyWith(
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewPhotoURLList: freezed == reviewPhotoURLList
          ? _value.reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? reviewId,
      double? rating,
      String? content,
      List<String>? reviewPhotoURLList});
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
    Object? reviewId = freezed,
    Object? rating = freezed,
    Object? content = freezed,
    Object? reviewPhotoURLList = freezed,
  }) {
    return _then(_$_Review(
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewPhotoURLList: freezed == reviewPhotoURLList
          ? _value._reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {required this.reviewId,
      required this.rating,
      required this.content,
      required final List<String>? reviewPhotoURLList})
      : _reviewPhotoURLList = reviewPhotoURLList;

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final int? reviewId;
  @override
  final double? rating;
  @override
  final String? content;
  final List<String>? _reviewPhotoURLList;
  @override
  List<String>? get reviewPhotoURLList {
    final value = _reviewPhotoURLList;
    if (value == null) return null;
    if (_reviewPhotoURLList is EqualUnmodifiableListView)
      return _reviewPhotoURLList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Review(reviewId: $reviewId, rating: $rating, content: $content, reviewPhotoURLList: $reviewPhotoURLList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._reviewPhotoURLList, _reviewPhotoURLList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reviewId, rating, content,
      const DeepCollectionEquality().hash(_reviewPhotoURLList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final int? reviewId,
      required final double? rating,
      required final String? content,
      required final List<String>? reviewPhotoURLList}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  int? get reviewId;
  @override
  double? get rating;
  @override
  String? get content;
  @override
  List<String>? get reviewPhotoURLList;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}
