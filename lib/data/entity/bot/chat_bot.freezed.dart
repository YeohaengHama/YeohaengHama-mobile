// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatbotResponse<T> {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  List<Other>? get other => throw _privateConstructorUsedError;

  /// Create a copy of ChatbotResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatbotResponseCopyWith<T, ChatbotResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatbotResponseCopyWith<T, $Res> {
  factory $ChatbotResponseCopyWith(
          ChatbotResponse<T> value, $Res Function(ChatbotResponse<T>) then) =
      _$ChatbotResponseCopyWithImpl<T, $Res, ChatbotResponse<T>>;
  @useResult
  $Res call(
      {String question,
      String answer,
      String type,
      T? result,
      List<Other>? other});
}

/// @nodoc
class _$ChatbotResponseCopyWithImpl<T, $Res, $Val extends ChatbotResponse<T>>
    implements $ChatbotResponseCopyWith<T, $Res> {
  _$ChatbotResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatbotResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? type = null,
    Object? result = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<Other>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatbotResponseImplCopyWith<T, $Res>
    implements $ChatbotResponseCopyWith<T, $Res> {
  factory _$$ChatbotResponseImplCopyWith(_$ChatbotResponseImpl<T> value,
          $Res Function(_$ChatbotResponseImpl<T>) then) =
      __$$ChatbotResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String answer,
      String type,
      T? result,
      List<Other>? other});
}

/// @nodoc
class __$$ChatbotResponseImplCopyWithImpl<T, $Res>
    extends _$ChatbotResponseCopyWithImpl<T, $Res, _$ChatbotResponseImpl<T>>
    implements _$$ChatbotResponseImplCopyWith<T, $Res> {
  __$$ChatbotResponseImplCopyWithImpl(_$ChatbotResponseImpl<T> _value,
      $Res Function(_$ChatbotResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatbotResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? type = null,
    Object? result = freezed,
    Object? other = freezed,
  }) {
    return _then(_$ChatbotResponseImpl<T>(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<Other>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(genericArgumentFactories: true)
class _$ChatbotResponseImpl<T> implements _ChatbotResponse<T> {
  const _$ChatbotResponseImpl(
      {required this.question,
      required this.answer,
      required this.type,
      required this.result,
      final List<Other>? other})
      : _other = other;

  @override
  final String question;
  @override
  final String answer;
  @override
  final String type;
  @override
  final T? result;
  final List<Other>? _other;
  @override
  List<Other>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatbotResponse<$T>(question: $question, answer: $answer, type: $type, result: $result, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatbotResponseImpl<T> &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other._other, this._other));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      answer,
      type,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(_other));

  /// Create a copy of ChatbotResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatbotResponseImplCopyWith<T, _$ChatbotResponseImpl<T>> get copyWith =>
      __$$ChatbotResponseImplCopyWithImpl<T, _$ChatbotResponseImpl<T>>(
          this, _$identity);
}

abstract class _ChatbotResponse<T> implements ChatbotResponse<T> {
  const factory _ChatbotResponse(
      {required final String question,
      required final String answer,
      required final String type,
      required final T? result,
      final List<Other>? other}) = _$ChatbotResponseImpl<T>;

  @override
  String get question;
  @override
  String get answer;
  @override
  String get type;
  @override
  T? get result;
  @override
  List<Other>? get other;

  /// Create a copy of ChatbotResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatbotResponseImplCopyWith<T, _$ChatbotResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

Other _$OtherFromJson(Map<String, dynamic> json) {
  return _Other.fromJson(json);
}

/// @nodoc
mixin _$Other {
  Map<String, double> get map => throw _privateConstructorUsedError;

  /// Serializes this Other to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtherCopyWith<Other> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherCopyWith<$Res> {
  factory $OtherCopyWith(Other value, $Res Function(Other) then) =
      _$OtherCopyWithImpl<$Res, Other>;
  @useResult
  $Res call({Map<String, double> map});
}

/// @nodoc
class _$OtherCopyWithImpl<$Res, $Val extends Other>
    implements $OtherCopyWith<$Res> {
  _$OtherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = null,
  }) {
    return _then(_value.copyWith(
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtherImplCopyWith<$Res> implements $OtherCopyWith<$Res> {
  factory _$$OtherImplCopyWith(
          _$OtherImpl value, $Res Function(_$OtherImpl) then) =
      __$$OtherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, double> map});
}

/// @nodoc
class __$$OtherImplCopyWithImpl<$Res>
    extends _$OtherCopyWithImpl<$Res, _$OtherImpl>
    implements _$$OtherImplCopyWith<$Res> {
  __$$OtherImplCopyWithImpl(
      _$OtherImpl _value, $Res Function(_$OtherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? map = null,
  }) {
    return _then(_$OtherImpl(
      map: null == map
          ? _value._map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$OtherImpl implements _Other {
  const _$OtherImpl({required final Map<String, double> map}) : _map = map;

  factory _$OtherImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherImplFromJson(json);

  final Map<String, double> _map;
  @override
  Map<String, double> get map {
    if (_map is EqualUnmodifiableMapView) return _map;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_map);
  }

  @override
  String toString() {
    return 'Other(map: $map)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherImpl &&
            const DeepCollectionEquality().equals(other._map, _map));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_map));

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      __$$OtherImplCopyWithImpl<_$OtherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherImplToJson(
      this,
    );
  }
}

abstract class _Other implements Other {
  const factory _Other({required final Map<String, double> map}) = _$OtherImpl;

  factory _Other.fromJson(Map<String, dynamic> json) = _$OtherImpl.fromJson;

  @override
  Map<String, double> get map;

  /// Create a copy of Other
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherImplCopyWith<_$OtherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  String get addr1 => throw _privateConstructorUsedError;
  String? get addr2 => throw _privateConstructorUsedError;
  String get contentid => throw _privateConstructorUsedError;
  String get contenttypeid => throw _privateConstructorUsedError;
  String? get tel => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get firstimage => throw _privateConstructorUsedError;
  String? get firstimage2 => throw _privateConstructorUsedError;
  String get mapx => throw _privateConstructorUsedError;
  String get mapy => throw _privateConstructorUsedError;

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {String addr1,
      String? addr2,
      String contentid,
      String contenttypeid,
      String? tel,
      String title,
      String? firstimage,
      String? firstimage2,
      String mapx,
      String mapy});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr1 = null,
    Object? addr2 = freezed,
    Object? contentid = null,
    Object? contenttypeid = null,
    Object? tel = freezed,
    Object? title = null,
    Object? firstimage = freezed,
    Object? firstimage2 = freezed,
    Object? mapx = null,
    Object? mapy = null,
  }) {
    return _then(_value.copyWith(
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      addr2: freezed == addr2
          ? _value.addr2
          : addr2 // ignore: cast_nullable_to_non_nullable
              as String?,
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      contenttypeid: null == contenttypeid
          ? _value.contenttypeid
          : contenttypeid // ignore: cast_nullable_to_non_nullable
              as String,
      tel: freezed == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage: freezed == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String?,
      firstimage2: freezed == firstimage2
          ? _value.firstimage2
          : firstimage2 // ignore: cast_nullable_to_non_nullable
              as String?,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String addr1,
      String? addr2,
      String contentid,
      String contenttypeid,
      String? tel,
      String title,
      String? firstimage,
      String? firstimage2,
      String mapx,
      String mapy});
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr1 = null,
    Object? addr2 = freezed,
    Object? contentid = null,
    Object? contenttypeid = null,
    Object? tel = freezed,
    Object? title = null,
    Object? firstimage = freezed,
    Object? firstimage2 = freezed,
    Object? mapx = null,
    Object? mapy = null,
  }) {
    return _then(_$PlaceImpl(
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      addr2: freezed == addr2
          ? _value.addr2
          : addr2 // ignore: cast_nullable_to_non_nullable
              as String?,
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      contenttypeid: null == contenttypeid
          ? _value.contenttypeid
          : contenttypeid // ignore: cast_nullable_to_non_nullable
              as String,
      tel: freezed == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage: freezed == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String?,
      firstimage2: freezed == firstimage2
          ? _value.firstimage2
          : firstimage2 // ignore: cast_nullable_to_non_nullable
              as String?,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  const _$PlaceImpl(
      {required this.addr1,
      this.addr2,
      required this.contentid,
      required this.contenttypeid,
      this.tel,
      required this.title,
      this.firstimage,
      this.firstimage2,
      required this.mapx,
      required this.mapy});

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final String addr1;
  @override
  final String? addr2;
  @override
  final String contentid;
  @override
  final String contenttypeid;
  @override
  final String? tel;
  @override
  final String title;
  @override
  final String? firstimage;
  @override
  final String? firstimage2;
  @override
  final String mapx;
  @override
  final String mapy;

  @override
  String toString() {
    return 'Place(addr1: $addr1, addr2: $addr2, contentid: $contentid, contenttypeid: $contenttypeid, tel: $tel, title: $title, firstimage: $firstimage, firstimage2: $firstimage2, mapx: $mapx, mapy: $mapy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.addr1, addr1) || other.addr1 == addr1) &&
            (identical(other.addr2, addr2) || other.addr2 == addr2) &&
            (identical(other.contentid, contentid) ||
                other.contentid == contentid) &&
            (identical(other.contenttypeid, contenttypeid) ||
                other.contenttypeid == contenttypeid) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.firstimage, firstimage) ||
                other.firstimage == firstimage) &&
            (identical(other.firstimage2, firstimage2) ||
                other.firstimage2 == firstimage2) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, addr1, addr2, contentid,
      contenttypeid, tel, title, firstimage, firstimage2, mapx, mapy);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {required final String addr1,
      final String? addr2,
      required final String contentid,
      required final String contenttypeid,
      final String? tel,
      required final String title,
      final String? firstimage,
      final String? firstimage2,
      required final String mapx,
      required final String mapy}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  String get addr1;
  @override
  String? get addr2;
  @override
  String get contentid;
  @override
  String get contenttypeid;
  @override
  String? get tel;
  @override
  String get title;
  @override
  String? get firstimage;
  @override
  String? get firstimage2;
  @override
  String get mapx;
  @override
  String get mapy;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shorts _$ShortsFromJson(Map<String, dynamic> json) {
  return _Shorts.fromJson(json);
}

/// @nodoc
mixin _$Shorts {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;

  /// Serializes this Shorts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shorts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShortsCopyWith<Shorts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortsCopyWith<$Res> {
  factory $ShortsCopyWith(Shorts value, $Res Function(Shorts) then) =
      _$ShortsCopyWithImpl<$Res, Shorts>;
  @useResult
  $Res call({int id, String title, String videoUrl});
}

/// @nodoc
class _$ShortsCopyWithImpl<$Res, $Val extends Shorts>
    implements $ShortsCopyWith<$Res> {
  _$ShortsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shorts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShortsImplCopyWith<$Res> implements $ShortsCopyWith<$Res> {
  factory _$$ShortsImplCopyWith(
          _$ShortsImpl value, $Res Function(_$ShortsImpl) then) =
      __$$ShortsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String videoUrl});
}

/// @nodoc
class __$$ShortsImplCopyWithImpl<$Res>
    extends _$ShortsCopyWithImpl<$Res, _$ShortsImpl>
    implements _$$ShortsImplCopyWith<$Res> {
  __$$ShortsImplCopyWithImpl(
      _$ShortsImpl _value, $Res Function(_$ShortsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shorts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_$ShortsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShortsImpl implements _Shorts {
  const _$ShortsImpl(
      {required this.id, required this.title, required this.videoUrl});

  factory _$ShortsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShortsImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String videoUrl;

  @override
  String toString() {
    return 'Shorts(id: $id, title: $title, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, videoUrl);

  /// Create a copy of Shorts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortsImplCopyWith<_$ShortsImpl> get copyWith =>
      __$$ShortsImplCopyWithImpl<_$ShortsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShortsImplToJson(
      this,
    );
  }
}

abstract class _Shorts implements Shorts {
  const factory _Shorts(
      {required final int id,
      required final String title,
      required final String videoUrl}) = _$ShortsImpl;

  factory _Shorts.fromJson(Map<String, dynamic> json) = _$ShortsImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get videoUrl;

  /// Create a copy of Shorts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShortsImplCopyWith<_$ShortsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Itinerary _$ItineraryFromJson(Map<String, dynamic> json) {
  return _Itinerary.fromJson(json);
}

/// @nodoc
mixin _$Itinerary {
  int get id => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

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
  $Res call({int id, String area, String name});
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
    Object? id = null,
    Object? area = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $Res call({int id, String area, String name});
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
    Object? id = null,
    Object? area = null,
    Object? name = null,
  }) {
    return _then(_$ItineraryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItineraryImpl implements _Itinerary {
  const _$ItineraryImpl(
      {required this.id, required this.area, required this.name});

  factory _$ItineraryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItineraryImplFromJson(json);

  @override
  final int id;
  @override
  final String area;
  @override
  final String name;

  @override
  String toString() {
    return 'Itinerary(id: $id, area: $area, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItineraryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, area, name);

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
      {required final int id,
      required final String area,
      required final String name}) = _$ItineraryImpl;

  factory _Itinerary.fromJson(Map<String, dynamic> json) =
      _$ItineraryImpl.fromJson;

  @override
  int get id;
  @override
  String get area;
  @override
  String get name;

  /// Create a copy of Itinerary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItineraryImplCopyWith<_$ItineraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Diary _$DiaryFromJson(Map<String, dynamic> json) {
  return _Diary.fromJson(json);
}

/// @nodoc
mixin _$Diary {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this Diary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
  $Res call({int id, String title, String content});
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
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryImplCopyWith<$Res> implements $DiaryCopyWith<$Res> {
  factory _$$DiaryImplCopyWith(
          _$DiaryImpl value, $Res Function(_$DiaryImpl) then) =
      __$$DiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content});
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
    Object? id = null,
    Object? title = null,
    Object? content = null,
  }) {
    return _then(_$DiaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiaryImpl implements _Diary {
  const _$DiaryImpl(
      {required this.id, required this.title, required this.content});

  factory _$DiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiaryImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;

  @override
  String toString() {
    return 'Diary(id: $id, title: $title, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content);

  /// Create a copy of Diary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryImplCopyWith<_$DiaryImpl> get copyWith =>
      __$$DiaryImplCopyWithImpl<_$DiaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiaryImplToJson(
      this,
    );
  }
}

abstract class _Diary implements Diary {
  const factory _Diary(
      {required final int id,
      required final String title,
      required final String content}) = _$DiaryImpl;

  factory _Diary.fromJson(Map<String, dynamic> json) = _$DiaryImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;

  /// Create a copy of Diary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiaryImplCopyWith<_$DiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RandomPlace _$RandomPlaceFromJson(Map<String, dynamic> json) {
  return _RandomPlace.fromJson(json);
}

/// @nodoc
mixin _$RandomPlace {
  String get playNum => throw _privateConstructorUsedError;
  String get playType => throw _privateConstructorUsedError;
  String get addr1 => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this RandomPlace to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RandomPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomPlaceCopyWith<RandomPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomPlaceCopyWith<$Res> {
  factory $RandomPlaceCopyWith(
          RandomPlace value, $Res Function(RandomPlace) then) =
      _$RandomPlaceCopyWithImpl<$Res, RandomPlace>;
  @useResult
  $Res call(
      {String playNum,
      String playType,
      String addr1,
      String name,
      String? image});
}

/// @nodoc
class _$RandomPlaceCopyWithImpl<$Res, $Val extends RandomPlace>
    implements $RandomPlaceCopyWith<$Res> {
  _$RandomPlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playNum = null,
    Object? playType = null,
    Object? addr1 = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      playNum: null == playNum
          ? _value.playNum
          : playNum // ignore: cast_nullable_to_non_nullable
              as String,
      playType: null == playType
          ? _value.playType
          : playType // ignore: cast_nullable_to_non_nullable
              as String,
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomPlaceImplCopyWith<$Res>
    implements $RandomPlaceCopyWith<$Res> {
  factory _$$RandomPlaceImplCopyWith(
          _$RandomPlaceImpl value, $Res Function(_$RandomPlaceImpl) then) =
      __$$RandomPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String playNum,
      String playType,
      String addr1,
      String name,
      String? image});
}

/// @nodoc
class __$$RandomPlaceImplCopyWithImpl<$Res>
    extends _$RandomPlaceCopyWithImpl<$Res, _$RandomPlaceImpl>
    implements _$$RandomPlaceImplCopyWith<$Res> {
  __$$RandomPlaceImplCopyWithImpl(
      _$RandomPlaceImpl _value, $Res Function(_$RandomPlaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomPlace
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playNum = null,
    Object? playType = null,
    Object? addr1 = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$RandomPlaceImpl(
      playNum: null == playNum
          ? _value.playNum
          : playNum // ignore: cast_nullable_to_non_nullable
              as String,
      playType: null == playType
          ? _value.playType
          : playType // ignore: cast_nullable_to_non_nullable
              as String,
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomPlaceImpl implements _RandomPlace {
  const _$RandomPlaceImpl(
      {required this.playNum,
      required this.playType,
      required this.addr1,
      required this.name,
      this.image});

  factory _$RandomPlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomPlaceImplFromJson(json);

  @override
  final String playNum;
  @override
  final String playType;
  @override
  final String addr1;
  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'RandomPlace(playNum: $playNum, playType: $playType, addr1: $addr1, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomPlaceImpl &&
            (identical(other.playNum, playNum) || other.playNum == playNum) &&
            (identical(other.playType, playType) ||
                other.playType == playType) &&
            (identical(other.addr1, addr1) || other.addr1 == addr1) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, playNum, playType, addr1, name, image);

  /// Create a copy of RandomPlace
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomPlaceImplCopyWith<_$RandomPlaceImpl> get copyWith =>
      __$$RandomPlaceImplCopyWithImpl<_$RandomPlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomPlaceImplToJson(
      this,
    );
  }
}

abstract class _RandomPlace implements RandomPlace {
  const factory _RandomPlace(
      {required final String playNum,
      required final String playType,
      required final String addr1,
      required final String name,
      final String? image}) = _$RandomPlaceImpl;

  factory _RandomPlace.fromJson(Map<String, dynamic> json) =
      _$RandomPlaceImpl.fromJson;

  @override
  String get playNum;
  @override
  String get playType;
  @override
  String get addr1;
  @override
  String get name;
  @override
  String? get image;

  /// Create a copy of RandomPlace
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomPlaceImplCopyWith<_$RandomPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RandomArea _$RandomAreaFromJson(Map<String, dynamic> json) {
  return _RandomArea.fromJson(json);
}

/// @nodoc
mixin _$RandomArea {
  String get area => throw _privateConstructorUsedError;

  /// Serializes this RandomArea to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RandomArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomAreaCopyWith<RandomArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomAreaCopyWith<$Res> {
  factory $RandomAreaCopyWith(
          RandomArea value, $Res Function(RandomArea) then) =
      _$RandomAreaCopyWithImpl<$Res, RandomArea>;
  @useResult
  $Res call({String area});
}

/// @nodoc
class _$RandomAreaCopyWithImpl<$Res, $Val extends RandomArea>
    implements $RandomAreaCopyWith<$Res> {
  _$RandomAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomAreaImplCopyWith<$Res>
    implements $RandomAreaCopyWith<$Res> {
  factory _$$RandomAreaImplCopyWith(
          _$RandomAreaImpl value, $Res Function(_$RandomAreaImpl) then) =
      __$$RandomAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area});
}

/// @nodoc
class __$$RandomAreaImplCopyWithImpl<$Res>
    extends _$RandomAreaCopyWithImpl<$Res, _$RandomAreaImpl>
    implements _$$RandomAreaImplCopyWith<$Res> {
  __$$RandomAreaImplCopyWithImpl(
      _$RandomAreaImpl _value, $Res Function(_$RandomAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
  }) {
    return _then(_$RandomAreaImpl(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomAreaImpl implements _RandomArea {
  const _$RandomAreaImpl({required this.area});

  factory _$RandomAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomAreaImplFromJson(json);

  @override
  final String area;

  @override
  String toString() {
    return 'RandomArea(area: $area)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomAreaImpl &&
            (identical(other.area, area) || other.area == area));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, area);

  /// Create a copy of RandomArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomAreaImplCopyWith<_$RandomAreaImpl> get copyWith =>
      __$$RandomAreaImplCopyWithImpl<_$RandomAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomAreaImplToJson(
      this,
    );
  }
}

abstract class _RandomArea implements RandomArea {
  const factory _RandomArea({required final String area}) = _$RandomAreaImpl;

  factory _RandomArea.fromJson(Map<String, dynamic> json) =
      _$RandomAreaImpl.fromJson;

  @override
  String get area;

  /// Create a copy of RandomArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomAreaImplCopyWith<_$RandomAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
