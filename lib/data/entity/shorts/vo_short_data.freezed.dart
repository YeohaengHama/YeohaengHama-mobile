// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_short_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShortsData _$ShortsDataFromJson(Map<String, dynamic> json) {
  return _ShortsData.fromJson(json);
}

/// @nodoc
mixin _$ShortsData {
  Account get account => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Itinerary get itinerary => throw _privateConstructorUsedError;

  /// Serializes this ShortsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShortsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShortsDataCopyWith<ShortsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortsDataCopyWith<$Res> {
  factory $ShortsDataCopyWith(
          ShortsData value, $Res Function(ShortsData) then) =
      _$ShortsDataCopyWithImpl<$Res, ShortsData>;
  @useResult
  $Res call(
      {Account account,
      String videoUrl,
      String title,
      String content,
      Itinerary itinerary});

  $AccountCopyWith<$Res> get account;
  $ItineraryCopyWith<$Res> get itinerary;
}

/// @nodoc
class _$ShortsDataCopyWithImpl<$Res, $Val extends ShortsData>
    implements $ShortsDataCopyWith<$Res> {
  _$ShortsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShortsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? videoUrl = null,
    Object? title = null,
    Object? content = null,
    Object? itinerary = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as Itinerary,
    ) as $Val);
  }

  /// Create a copy of ShortsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of ShortsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItineraryCopyWith<$Res> get itinerary {
    return $ItineraryCopyWith<$Res>(_value.itinerary, (value) {
      return _then(_value.copyWith(itinerary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShortsDataImplCopyWith<$Res>
    implements $ShortsDataCopyWith<$Res> {
  factory _$$ShortsDataImplCopyWith(
          _$ShortsDataImpl value, $Res Function(_$ShortsDataImpl) then) =
      __$$ShortsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Account account,
      String videoUrl,
      String title,
      String content,
      Itinerary itinerary});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $ItineraryCopyWith<$Res> get itinerary;
}

/// @nodoc
class __$$ShortsDataImplCopyWithImpl<$Res>
    extends _$ShortsDataCopyWithImpl<$Res, _$ShortsDataImpl>
    implements _$$ShortsDataImplCopyWith<$Res> {
  __$$ShortsDataImplCopyWithImpl(
      _$ShortsDataImpl _value, $Res Function(_$ShortsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShortsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? videoUrl = null,
    Object? title = null,
    Object? content = null,
    Object? itinerary = null,
  }) {
    return _then(_$ShortsDataImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      itinerary: null == itinerary
          ? _value.itinerary
          : itinerary // ignore: cast_nullable_to_non_nullable
              as Itinerary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShortsDataImpl implements _ShortsData {
  const _$ShortsDataImpl(
      {required this.account,
      required this.videoUrl,
      required this.title,
      required this.content,
      required this.itinerary});

  factory _$ShortsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShortsDataImplFromJson(json);

  @override
  final Account account;
  @override
  final String videoUrl;
  @override
  final String title;
  @override
  final String content;
  @override
  final Itinerary itinerary;

  @override
  String toString() {
    return 'ShortsData(account: $account, videoUrl: $videoUrl, title: $title, content: $content, itinerary: $itinerary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortsDataImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.itinerary, itinerary) ||
                other.itinerary == itinerary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, account, videoUrl, title, content, itinerary);

  /// Create a copy of ShortsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortsDataImplCopyWith<_$ShortsDataImpl> get copyWith =>
      __$$ShortsDataImplCopyWithImpl<_$ShortsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShortsDataImplToJson(
      this,
    );
  }
}

abstract class _ShortsData implements ShortsData {
  const factory _ShortsData(
      {required final Account account,
      required final String videoUrl,
      required final String title,
      required final String content,
      required final Itinerary itinerary}) = _$ShortsDataImpl;

  factory _ShortsData.fromJson(Map<String, dynamic> json) =
      _$ShortsDataImpl.fromJson;

  @override
  Account get account;
  @override
  String get videoUrl;
  @override
  String get title;
  @override
  String get content;
  @override
  Itinerary get itinerary;

  /// Create a copy of ShortsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShortsDataImplCopyWith<_$ShortsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get accountRole => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({int id, String nickname, String photoUrl, String accountRole});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = null,
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
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accountRole: null == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String photoUrl, String accountRole});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = null,
    Object? accountRole = null,
  }) {
    return _then(_$AccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accountRole: null == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.id,
      required this.nickname,
      required this.photoUrl,
      required this.accountRole});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String photoUrl;
  @override
  final String accountRole;

  @override
  String toString() {
    return 'Account(id: $id, nickname: $nickname, photoUrl: $photoUrl, accountRole: $accountRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.accountRole, accountRole) ||
                other.accountRole == accountRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, photoUrl, accountRole);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final int id,
      required final String nickname,
      required final String photoUrl,
      required final String accountRole}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String get photoUrl;
  @override
  String get accountRole;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Itinerary _$ItineraryFromJson(Map<String, dynamic> json) {
  return _Itinerary.fromJson(json);
}

/// @nodoc
mixin _$Itinerary {
  int get itineraryId => throw _privateConstructorUsedError;
  List<String> get type => throw _privateConstructorUsedError;
  List<String> get style => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get transportation => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;

  /// Serializes this Itinerary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Itinerary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      List<String> type,
      List<String> style,
      String name,
      String transportation,
      String area,
      DateTime startDate,
      DateTime endDate,
      Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$ItineraryCopyWithImpl<$Res, $Val extends Itinerary>
    implements $ItineraryCopyWith<$Res> {
  _$ItineraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Itinerary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itineraryId = null,
    Object? type = null,
    Object? style = null,
    Object? name = null,
    Object? transportation = null,
    Object? area = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ) as $Val);
  }

  /// Create a copy of Itinerary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItineraryImplCopyWith<$Res>
    implements $ItineraryCopyWith<$Res> {
  factory _$$ItineraryImplCopyWith(
          _$ItineraryImpl value, $Res Function(_$ItineraryImpl) then) =
      __$$ItineraryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int itineraryId,
      List<String> type,
      List<String> style,
      String name,
      String transportation,
      String area,
      DateTime startDate,
      DateTime endDate,
      Account account});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$ItineraryImplCopyWithImpl<$Res>
    extends _$ItineraryCopyWithImpl<$Res, _$ItineraryImpl>
    implements _$$ItineraryImplCopyWith<$Res> {
  __$$ItineraryImplCopyWithImpl(
      _$ItineraryImpl _value, $Res Function(_$ItineraryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Itinerary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itineraryId = null,
    Object? type = null,
    Object? style = null,
    Object? name = null,
    Object? transportation = null,
    Object? area = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? account = null,
  }) {
    return _then(_$ItineraryImpl(
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>,
      style: null == style
          ? _value._style
          : style // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItineraryImpl implements _Itinerary {
  const _$ItineraryImpl(
      {required this.itineraryId,
      required final List<String> type,
      required final List<String> style,
      required this.name,
      required this.transportation,
      required this.area,
      required this.startDate,
      required this.endDate,
      required this.account})
      : _type = type,
        _style = style;

  factory _$ItineraryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItineraryImplFromJson(json);

  @override
  final int itineraryId;
  final List<String> _type;
  @override
  List<String> get type {
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  final List<String> _style;
  @override
  List<String> get style {
    if (_style is EqualUnmodifiableListView) return _style;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_style);
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
  @override
  final Account account;

  @override
  String toString() {
    return 'Itinerary(itineraryId: $itineraryId, type: $type, style: $style, name: $name, transportation: $transportation, area: $area, startDate: $startDate, endDate: $endDate, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItineraryImpl &&
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
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      account);

  /// Create a copy of Itinerary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItineraryImplCopyWith<_$ItineraryImpl> get copyWith =>
      __$$ItineraryImplCopyWithImpl<_$ItineraryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItineraryImplToJson(
      this,
    );
  }
}

abstract class _Itinerary implements Itinerary {
  const factory _Itinerary(
      {required final int itineraryId,
      required final List<String> type,
      required final List<String> style,
      required final String name,
      required final String transportation,
      required final String area,
      required final DateTime startDate,
      required final DateTime endDate,
      required final Account account}) = _$ItineraryImpl;

  factory _Itinerary.fromJson(Map<String, dynamic> json) =
      _$ItineraryImpl.fromJson;

  @override
  int get itineraryId;
  @override
  List<String> get type;
  @override
  List<String> get style;
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
  Account get account;

  /// Create a copy of Itinerary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItineraryImplCopyWith<_$ItineraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
