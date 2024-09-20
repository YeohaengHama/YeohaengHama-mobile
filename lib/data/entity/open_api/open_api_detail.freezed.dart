// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiDetail _$OpenApiDetailFromJson(Map<String, dynamic> json) {
  return _OpenApiDetail.fromJson(json);
}

/// @nodoc
mixin _$OpenApiDetail {
  String get contentId => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;
  String get numOfRows => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  String get mobileOS => throw _privateConstructorUsedError;

  /// Serializes this OpenApiDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiDetailCopyWith<OpenApiDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiDetailCopyWith<$Res> {
  factory $OpenApiDetailCopyWith(
          OpenApiDetail value, $Res Function(OpenApiDetail) then) =
      _$OpenApiDetailCopyWithImpl<$Res, OpenApiDetail>;
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String numOfRows,
      String page,
      String mobileOS});
}

/// @nodoc
class _$OpenApiDetailCopyWithImpl<$Res, $Val extends OpenApiDetail>
    implements $OpenApiDetailCopyWith<$Res> {
  _$OpenApiDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? numOfRows = null,
    Object? page = null,
    Object? mobileOS = null,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      mobileOS: null == mobileOS
          ? _value.mobileOS
          : mobileOS // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiDetailImplCopyWith<$Res>
    implements $OpenApiDetailCopyWith<$Res> {
  factory _$$OpenApiDetailImplCopyWith(
          _$OpenApiDetailImpl value, $Res Function(_$OpenApiDetailImpl) then) =
      __$$OpenApiDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String numOfRows,
      String page,
      String mobileOS});
}

/// @nodoc
class __$$OpenApiDetailImplCopyWithImpl<$Res>
    extends _$OpenApiDetailCopyWithImpl<$Res, _$OpenApiDetailImpl>
    implements _$$OpenApiDetailImplCopyWith<$Res> {
  __$$OpenApiDetailImplCopyWithImpl(
      _$OpenApiDetailImpl _value, $Res Function(_$OpenApiDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? numOfRows = null,
    Object? page = null,
    Object? mobileOS = null,
  }) {
    return _then(_$OpenApiDetailImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
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
class _$OpenApiDetailImpl implements _OpenApiDetail {
  const _$OpenApiDetailImpl(
      {required this.contentId,
      required this.contentTypeId,
      this.numOfRows = '1',
      this.page = '1',
      this.mobileOS = 'IOS'});

  factory _$OpenApiDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiDetailImplFromJson(json);

  @override
  final String contentId;
  @override
  final String contentTypeId;
  @override
  @JsonKey()
  final String numOfRows;
  @override
  @JsonKey()
  final String page;
  @override
  @JsonKey()
  final String mobileOS;

  @override
  String toString() {
    return 'OpenApiDetail(contentId: $contentId, contentTypeId: $contentTypeId, numOfRows: $numOfRows, page: $page, mobileOS: $mobileOS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiDetailImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.numOfRows, numOfRows) ||
                other.numOfRows == numOfRows) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.mobileOS, mobileOS) ||
                other.mobileOS == mobileOS));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, contentId, contentTypeId, numOfRows, page, mobileOS);

  /// Create a copy of OpenApiDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiDetailImplCopyWith<_$OpenApiDetailImpl> get copyWith =>
      __$$OpenApiDetailImplCopyWithImpl<_$OpenApiDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiDetailImplToJson(
      this,
    );
  }
}

abstract class _OpenApiDetail implements OpenApiDetail {
  const factory _OpenApiDetail(
      {required final String contentId,
      required final String contentTypeId,
      final String numOfRows,
      final String page,
      final String mobileOS}) = _$OpenApiDetailImpl;

  factory _OpenApiDetail.fromJson(Map<String, dynamic> json) =
      _$OpenApiDetailImpl.fromJson;

  @override
  String get contentId;
  @override
  String get contentTypeId;
  @override
  String get numOfRows;
  @override
  String get page;
  @override
  String get mobileOS;

  /// Create a copy of OpenApiDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiDetailImplCopyWith<_$OpenApiDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
