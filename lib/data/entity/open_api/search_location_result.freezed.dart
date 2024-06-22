// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_location_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchLocationResult _$SearchLocationResultFromJson(Map<String, dynamic> json) {
  return _SearchLocationResult.fromJson(json);
}

/// @nodoc
mixin _$SearchLocationResult {
  String get addr1 => throw _privateConstructorUsedError;
  String get addr2 => throw _privateConstructorUsedError;
  String get contentid => throw _privateConstructorUsedError;
  String get contenttypeid => throw _privateConstructorUsedError;
  String get firstimage => throw _privateConstructorUsedError;
  String get mapx => throw _privateConstructorUsedError;
  String get mapy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchLocationResultCopyWith<SearchLocationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationResultCopyWith<$Res> {
  factory $SearchLocationResultCopyWith(SearchLocationResult value,
          $Res Function(SearchLocationResult) then) =
      _$SearchLocationResultCopyWithImpl<$Res, SearchLocationResult>;
  @useResult
  $Res call(
      {String addr1,
      String addr2,
      String contentid,
      String contenttypeid,
      String firstimage,
      String mapx,
      String mapy,
      String title});
}

/// @nodoc
class _$SearchLocationResultCopyWithImpl<$Res,
        $Val extends SearchLocationResult>
    implements $SearchLocationResultCopyWith<$Res> {
  _$SearchLocationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr1 = null,
    Object? addr2 = null,
    Object? contentid = null,
    Object? contenttypeid = null,
    Object? firstimage = null,
    Object? mapx = null,
    Object? mapy = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      addr2: null == addr2
          ? _value.addr2
          : addr2 // ignore: cast_nullable_to_non_nullable
              as String,
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      contenttypeid: null == contenttypeid
          ? _value.contenttypeid
          : contenttypeid // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage: null == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchLocationResultImplCopyWith<$Res>
    implements $SearchLocationResultCopyWith<$Res> {
  factory _$$SearchLocationResultImplCopyWith(_$SearchLocationResultImpl value,
          $Res Function(_$SearchLocationResultImpl) then) =
      __$$SearchLocationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String addr1,
      String addr2,
      String contentid,
      String contenttypeid,
      String firstimage,
      String mapx,
      String mapy,
      String title});
}

/// @nodoc
class __$$SearchLocationResultImplCopyWithImpl<$Res>
    extends _$SearchLocationResultCopyWithImpl<$Res, _$SearchLocationResultImpl>
    implements _$$SearchLocationResultImplCopyWith<$Res> {
  __$$SearchLocationResultImplCopyWithImpl(_$SearchLocationResultImpl _value,
      $Res Function(_$SearchLocationResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addr1 = null,
    Object? addr2 = null,
    Object? contentid = null,
    Object? contenttypeid = null,
    Object? firstimage = null,
    Object? mapx = null,
    Object? mapy = null,
    Object? title = null,
  }) {
    return _then(_$SearchLocationResultImpl(
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      addr2: null == addr2
          ? _value.addr2
          : addr2 // ignore: cast_nullable_to_non_nullable
              as String,
      contentid: null == contentid
          ? _value.contentid
          : contentid // ignore: cast_nullable_to_non_nullable
              as String,
      contenttypeid: null == contenttypeid
          ? _value.contenttypeid
          : contenttypeid // ignore: cast_nullable_to_non_nullable
              as String,
      firstimage: null == firstimage
          ? _value.firstimage
          : firstimage // ignore: cast_nullable_to_non_nullable
              as String,
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchLocationResultImpl implements _SearchLocationResult {
  const _$SearchLocationResultImpl(
      {required this.addr1,
      required this.addr2,
      required this.contentid,
      required this.contenttypeid,
      required this.firstimage,
      required this.mapx,
      required this.mapy,
      required this.title});

  factory _$SearchLocationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchLocationResultImplFromJson(json);

  @override
  final String addr1;
  @override
  final String addr2;
  @override
  final String contentid;
  @override
  final String contenttypeid;
  @override
  final String firstimage;
  @override
  final String mapx;
  @override
  final String mapy;
  @override
  final String title;

  @override
  String toString() {
    return 'SearchLocationResult(addr1: $addr1, addr2: $addr2, contentid: $contentid, contenttypeid: $contenttypeid, firstimage: $firstimage, mapx: $mapx, mapy: $mapy, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationResultImpl &&
            (identical(other.addr1, addr1) || other.addr1 == addr1) &&
            (identical(other.addr2, addr2) || other.addr2 == addr2) &&
            (identical(other.contentid, contentid) ||
                other.contentid == contentid) &&
            (identical(other.contenttypeid, contenttypeid) ||
                other.contenttypeid == contenttypeid) &&
            (identical(other.firstimage, firstimage) ||
                other.firstimage == firstimage) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addr1, addr2, contentid,
      contenttypeid, firstimage, mapx, mapy, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationResultImplCopyWith<_$SearchLocationResultImpl>
      get copyWith =>
          __$$SearchLocationResultImplCopyWithImpl<_$SearchLocationResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchLocationResultImplToJson(
      this,
    );
  }
}

abstract class _SearchLocationResult implements SearchLocationResult {
  const factory _SearchLocationResult(
      {required final String addr1,
      required final String addr2,
      required final String contentid,
      required final String contenttypeid,
      required final String firstimage,
      required final String mapx,
      required final String mapy,
      required final String title}) = _$SearchLocationResultImpl;

  factory _SearchLocationResult.fromJson(Map<String, dynamic> json) =
      _$SearchLocationResultImpl.fromJson;

  @override
  String get addr1;
  @override
  String get addr2;
  @override
  String get contentid;
  @override
  String get contenttypeid;
  @override
  String get firstimage;
  @override
  String get mapx;
  @override
  String get mapy;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$SearchLocationResultImplCopyWith<_$SearchLocationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
