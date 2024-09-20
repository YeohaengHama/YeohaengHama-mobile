// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiImage _$OpenApiImageFromJson(Map<String, dynamic> json) {
  return _OpenApiImage.fromJson(json);
}

/// @nodoc
mixin _$OpenApiImage {
  String get contentId => throw _privateConstructorUsedError;
  String get numOfRows => throw _privateConstructorUsedError;
  String get pageNo => throw _privateConstructorUsedError;
  String get mobileOS => throw _privateConstructorUsedError;

  /// Serializes this OpenApiImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiImageCopyWith<OpenApiImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiImageCopyWith<$Res> {
  factory $OpenApiImageCopyWith(
          OpenApiImage value, $Res Function(OpenApiImage) then) =
      _$OpenApiImageCopyWithImpl<$Res, OpenApiImage>;
  @useResult
  $Res call(
      {String contentId, String numOfRows, String pageNo, String mobileOS});
}

/// @nodoc
class _$OpenApiImageCopyWithImpl<$Res, $Val extends OpenApiImage>
    implements $OpenApiImageCopyWith<$Res> {
  _$OpenApiImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? numOfRows = null,
    Object? pageNo = null,
    Object? mobileOS = null,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as String,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as String,
      mobileOS: null == mobileOS
          ? _value.mobileOS
          : mobileOS // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiImageImplCopyWith<$Res>
    implements $OpenApiImageCopyWith<$Res> {
  factory _$$OpenApiImageImplCopyWith(
          _$OpenApiImageImpl value, $Res Function(_$OpenApiImageImpl) then) =
      __$$OpenApiImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId, String numOfRows, String pageNo, String mobileOS});
}

/// @nodoc
class __$$OpenApiImageImplCopyWithImpl<$Res>
    extends _$OpenApiImageCopyWithImpl<$Res, _$OpenApiImageImpl>
    implements _$$OpenApiImageImplCopyWith<$Res> {
  __$$OpenApiImageImplCopyWithImpl(
      _$OpenApiImageImpl _value, $Res Function(_$OpenApiImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? numOfRows = null,
    Object? pageNo = null,
    Object? mobileOS = null,
  }) {
    return _then(_$OpenApiImageImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      numOfRows: null == numOfRows
          ? _value.numOfRows
          : numOfRows // ignore: cast_nullable_to_non_nullable
              as String,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
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
class _$OpenApiImageImpl implements _OpenApiImage {
  const _$OpenApiImageImpl(
      {required this.contentId,
      required this.numOfRows,
      required this.pageNo,
      required this.mobileOS});

  factory _$OpenApiImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiImageImplFromJson(json);

  @override
  final String contentId;
  @override
  final String numOfRows;
  @override
  final String pageNo;
  @override
  final String mobileOS;

  @override
  String toString() {
    return 'OpenApiImage(contentId: $contentId, numOfRows: $numOfRows, pageNo: $pageNo, mobileOS: $mobileOS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiImageImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.numOfRows, numOfRows) ||
                other.numOfRows == numOfRows) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.mobileOS, mobileOS) ||
                other.mobileOS == mobileOS));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contentId, numOfRows, pageNo, mobileOS);

  /// Create a copy of OpenApiImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiImageImplCopyWith<_$OpenApiImageImpl> get copyWith =>
      __$$OpenApiImageImplCopyWithImpl<_$OpenApiImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiImageImplToJson(
      this,
    );
  }
}

abstract class _OpenApiImage implements OpenApiImage {
  const factory _OpenApiImage(
      {required final String contentId,
      required final String numOfRows,
      required final String pageNo,
      required final String mobileOS}) = _$OpenApiImageImpl;

  factory _OpenApiImage.fromJson(Map<String, dynamic> json) =
      _$OpenApiImageImpl.fromJson;

  @override
  String get contentId;
  @override
  String get numOfRows;
  @override
  String get pageNo;
  @override
  String get mobileOS;

  /// Create a copy of OpenApiImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiImageImplCopyWith<_$OpenApiImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
