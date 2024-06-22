// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_area_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiAreaLocation _$OpenApiAreaLocationFromJson(Map<String, dynamic> json) {
  return _OpenApiAreaLocation.fromJson(json);
}

/// @nodoc
mixin _$OpenApiAreaLocation {
  String get numOfRows => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  String get mapX => throw _privateConstructorUsedError;
  String get mapY => throw _privateConstructorUsedError;
  int get radius => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;
  String get mobileOS => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenApiAreaLocationCopyWith<OpenApiAreaLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiAreaLocationCopyWith<$Res> {
  factory $OpenApiAreaLocationCopyWith(
          OpenApiAreaLocation value, $Res Function(OpenApiAreaLocation) then) =
      _$OpenApiAreaLocationCopyWithImpl<$Res, OpenApiAreaLocation>;
  @useResult
  $Res call(
      {String numOfRows,
      String page,
      String mapX,
      String mapY,
      int radius,
      String contentTypeId,
      String mobileOS});
}

/// @nodoc
class _$OpenApiAreaLocationCopyWithImpl<$Res, $Val extends OpenApiAreaLocation>
    implements $OpenApiAreaLocationCopyWith<$Res> {
  _$OpenApiAreaLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfRows = null,
    Object? page = null,
    Object? mapX = null,
    Object? mapY = null,
    Object? radius = null,
    Object? contentTypeId = null,
    Object? mobileOS = null,
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
      mapX: null == mapX
          ? _value.mapX
          : mapX // ignore: cast_nullable_to_non_nullable
              as String,
      mapY: null == mapY
          ? _value.mapY
          : mapY // ignore: cast_nullable_to_non_nullable
              as String,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileOS: null == mobileOS
          ? _value.mobileOS
          : mobileOS // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiAreaLocationImplCopyWith<$Res>
    implements $OpenApiAreaLocationCopyWith<$Res> {
  factory _$$OpenApiAreaLocationImplCopyWith(_$OpenApiAreaLocationImpl value,
          $Res Function(_$OpenApiAreaLocationImpl) then) =
      __$$OpenApiAreaLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String numOfRows,
      String page,
      String mapX,
      String mapY,
      int radius,
      String contentTypeId,
      String mobileOS});
}

/// @nodoc
class __$$OpenApiAreaLocationImplCopyWithImpl<$Res>
    extends _$OpenApiAreaLocationCopyWithImpl<$Res, _$OpenApiAreaLocationImpl>
    implements _$$OpenApiAreaLocationImplCopyWith<$Res> {
  __$$OpenApiAreaLocationImplCopyWithImpl(_$OpenApiAreaLocationImpl _value,
      $Res Function(_$OpenApiAreaLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfRows = null,
    Object? page = null,
    Object? mapX = null,
    Object? mapY = null,
    Object? radius = null,
    Object? contentTypeId = null,
    Object? mobileOS = null,
  }) {
    return _then(_$OpenApiAreaLocationImpl(
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      mapX: null == mapX
          ? _value.mapX
          : mapX // ignore: cast_nullable_to_non_nullable
              as String,
      mapY: null == mapY
          ? _value.mapY
          : mapY // ignore: cast_nullable_to_non_nullable
              as String,
      radius: null == radius
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      mobileOS: null == mobileOS
          ? _value.mobileOS
          : mobileOS // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiAreaLocationImpl implements _OpenApiAreaLocation {
  const _$OpenApiAreaLocationImpl(
      {this.numOfRows = '1',
      this.page = '1',
      required this.mapX,
      required this.mapY,
      required this.radius,
      required this.contentTypeId,
      this.mobileOS = 'IOS'});

  factory _$OpenApiAreaLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiAreaLocationImplFromJson(json);

  @override
  @JsonKey()
  final String numOfRows;
  @override
  @JsonKey()
  final String page;
  @override
  final String mapX;
  @override
  final String mapY;
  @override
  final int radius;
  @override
  final String contentTypeId;
  @override
  @JsonKey()
  final String mobileOS;

  @override
  String toString() {
    return 'OpenApiAreaLocation(numOfRows: $numOfRows, page: $page, mapX: $mapX, mapY: $mapY, radius: $radius, contentTypeId: $contentTypeId, mobileOS: $mobileOS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiAreaLocationImpl &&
            (identical(other.numOfRows, numOfRows) ||
                other.numOfRows == numOfRows) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.mapX, mapX) || other.mapX == mapX) &&
            (identical(other.mapY, mapY) || other.mapY == mapY) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.mobileOS, mobileOS) ||
                other.mobileOS == mobileOS));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, numOfRows, page, mapX, mapY,
      radius, contentTypeId, mobileOS);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiAreaLocationImplCopyWith<_$OpenApiAreaLocationImpl> get copyWith =>
      __$$OpenApiAreaLocationImplCopyWithImpl<_$OpenApiAreaLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiAreaLocationImplToJson(
      this,
    );
  }
}

abstract class _OpenApiAreaLocation implements OpenApiAreaLocation {
  const factory _OpenApiAreaLocation(
      {final String numOfRows,
      final String page,
      required final String mapX,
      required final String mapY,
      required final int radius,
      required final String contentTypeId,
      final String mobileOS}) = _$OpenApiAreaLocationImpl;

  factory _OpenApiAreaLocation.fromJson(Map<String, dynamic> json) =
      _$OpenApiAreaLocationImpl.fromJson;

  @override
  String get numOfRows;
  @override
  String get page;
  @override
  String get mapX;
  @override
  String get mapY;
  @override
  int get radius;
  @override
  String get contentTypeId;
  @override
  String get mobileOS;
  @override
  @JsonKey(ignore: true)
  _$$OpenApiAreaLocationImplCopyWith<_$OpenApiAreaLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
