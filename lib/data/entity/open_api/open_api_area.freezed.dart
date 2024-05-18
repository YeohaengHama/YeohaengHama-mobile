// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiArea _$OpenApiAreaFromJson(Map<String, dynamic> json) {
  return _OpenApiArea.fromJson(json);
}

/// @nodoc
mixin _$OpenApiArea {
  String get numOfRows => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;
  String get mobileOS => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenApiAreaCopyWith<OpenApiArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiAreaCopyWith<$Res> {
  factory $OpenApiAreaCopyWith(
          OpenApiArea value, $Res Function(OpenApiArea) then) =
      _$OpenApiAreaCopyWithImpl<$Res, OpenApiArea>;
  @useResult
  $Res call(
      {String numOfRows,
      String page,
      String keyword,
      String contentTypeId,
      String mobileOS});
}

/// @nodoc
class _$OpenApiAreaCopyWithImpl<$Res, $Val extends OpenApiArea>
    implements $OpenApiAreaCopyWith<$Res> {
  _$OpenApiAreaCopyWithImpl(this._value, this._then);

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
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$OpenApiAreaImplCopyWith<$Res>
    implements $OpenApiAreaCopyWith<$Res> {
  factory _$$OpenApiAreaImplCopyWith(
          _$OpenApiAreaImpl value, $Res Function(_$OpenApiAreaImpl) then) =
      __$$OpenApiAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String numOfRows,
      String page,
      String keyword,
      String contentTypeId,
      String mobileOS});
}

/// @nodoc
class __$$OpenApiAreaImplCopyWithImpl<$Res>
    extends _$OpenApiAreaCopyWithImpl<$Res, _$OpenApiAreaImpl>
    implements _$$OpenApiAreaImplCopyWith<$Res> {
  __$$OpenApiAreaImplCopyWithImpl(
      _$OpenApiAreaImpl _value, $Res Function(_$OpenApiAreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numOfRows = null,
    Object? page = null,
    Object? keyword = null,
    Object? contentTypeId = null,
    Object? mobileOS = null,
  }) {
    return _then(_$OpenApiAreaImpl(
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
      mobileOS: null == mobileOS
          ? _value.mobileOS
          : mobileOS // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiAreaImpl implements _OpenApiArea {
  const _$OpenApiAreaImpl(
      {required this.numOfRows,
      this.page = '1',
      required this.keyword,
      required this.contentTypeId,
      required this.mobileOS});

  factory _$OpenApiAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiAreaImplFromJson(json);

  @override
  final String numOfRows;
  @override
  @JsonKey()
  final String page;
  @override
  final String keyword;
  @override
  final String contentTypeId;
  @override
  final String mobileOS;

  @override
  String toString() {
    return 'OpenApiArea(numOfRows: $numOfRows, page: $page, keyword: $keyword, contentTypeId: $contentTypeId, mobileOS: $mobileOS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiAreaImpl &&
            (identical(other.numOfRows, numOfRows) ||
                other.numOfRows == numOfRows) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.mobileOS, mobileOS) ||
                other.mobileOS == mobileOS));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, numOfRows, page, keyword, contentTypeId, mobileOS);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiAreaImplCopyWith<_$OpenApiAreaImpl> get copyWith =>
      __$$OpenApiAreaImplCopyWithImpl<_$OpenApiAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiAreaImplToJson(
      this,
    );
  }
}

abstract class _OpenApiArea implements OpenApiArea {
  const factory _OpenApiArea(
      {required final String numOfRows,
      required final String page,
      required final String keyword,
      required final String contentTypeId,
      required final String mobileOS}) = _$OpenApiAreaImpl;

  factory _OpenApiArea.fromJson(Map<String, dynamic> json) =
      _$OpenApiAreaImpl.fromJson;

  @override
  String get numOfRows;
  @override
  String get page;
  @override
  String get keyword;
  @override
  String get contentTypeId;
  @override
  String get mobileOS;
  @override
  @JsonKey(ignore: true)
  _$$OpenApiAreaImplCopyWith<_$OpenApiAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
