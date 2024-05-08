// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  String get numOfRows => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;
  String get mobileOs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call(
      {String numOfRows,
      String page,
      String keyword,
      String contentTypeId,
      String mobileOs});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfRows = null,
    Object? page = null,
    Object? keyword = null,
    Object? contentTypeId = null,
    Object? mobileOs = null,
  }) {
    return _then(_value.copyWith(
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileOs: null == mobileOs
          ? _value.mobileOs
          : mobileOs // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$_AreaCopyWith(_$_Area value, $Res Function(_$_Area) then) =
      __$$_AreaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String numOfRows,
      String page,
      String keyword,
      String contentTypeId,
      String mobileOs});
}

/// @nodoc
class __$$_AreaCopyWithImpl<$Res> extends _$AreaCopyWithImpl<$Res, _$_Area>
    implements _$$_AreaCopyWith<$Res> {
  __$$_AreaCopyWithImpl(_$_Area _value, $Res Function(_$_Area) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfRows = null,
    Object? page = null,
    Object? keyword = null,
    Object? contentTypeId = null,
    Object? mobileOs = null,
  }) {
    return _then(_$_Area(
      null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as String,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      null == mobileOs
          ? _value.mobileOs
          : mobileOs // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Area implements _Area {
  const _$_Area(this.numOfRows, this.page, this.keyword, this.contentTypeId,
      this.mobileOs);

  factory _$_Area.fromJson(Map<String, dynamic> json) => _$$_AreaFromJson(json);

  @override
  final String numOfRows;
  @override
  final String page;
  @override
  final String keyword;
  @override
  final String contentTypeId;
  @override
  final String mobileOs;

  @override
  String toString() {
    return 'Area(numOfRows: $numOfRows, page: $page, keyword: $keyword, contentTypeId: $contentTypeId, mobileOs: $mobileOs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Area &&
            (identical(other.numOfRows, numOfRows) ||
                other.numOfRows == numOfRows) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.mobileOs, mobileOs) ||
                other.mobileOs == mobileOs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, numOfRows, page, keyword, contentTypeId, mobileOs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AreaCopyWith<_$_Area> get copyWith =>
      __$$_AreaCopyWithImpl<_$_Area>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaToJson(
      this,
    );
  }
}

abstract class _Area implements Area {
  const factory _Area(
      final String numOfRows,
      final String page,
      final String keyword,
      final String contentTypeId,
      final String mobileOs) = _$_Area;

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;

  @override
  String get numOfRows;
  @override
  String get page;
  @override
  String get keyword;
  @override
  String get contentTypeId;
  @override
  String get mobileOs;
  @override
  @JsonKey(ignore: true)
  _$$_AreaCopyWith<_$_Area> get copyWith => throw _privateConstructorUsedError;
}
