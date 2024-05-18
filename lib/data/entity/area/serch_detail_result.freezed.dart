// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serch_detail_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchDetailResult _$SearchDetailResultFromJson(Map<String, dynamic> json) {
  return _SearchDetailResult.fromJson(json);
}

/// @nodoc
mixin _$SearchDetailResult {
  String get contentId => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get addr1 => throw _privateConstructorUsedError;
  String get addr2 => throw _privateConstructorUsedError;
  String get overView => throw _privateConstructorUsedError;
  String get mapX => throw _privateConstructorUsedError;
  String get mapY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchDetailResultCopyWith<SearchDetailResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchDetailResultCopyWith<$Res> {
  factory $SearchDetailResultCopyWith(
          SearchDetailResult value, $Res Function(SearchDetailResult) then) =
      _$SearchDetailResultCopyWithImpl<$Res, SearchDetailResult>;
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String title,
      String addr1,
      String addr2,
      String overView,
      String mapX,
      String mapY});
}

/// @nodoc
class _$SearchDetailResultCopyWithImpl<$Res, $Val extends SearchDetailResult>
    implements $SearchDetailResultCopyWith<$Res> {
  _$SearchDetailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? title = null,
    Object? addr1 = null,
    Object? addr2 = null,
    Object? overView = null,
    Object? mapX = null,
    Object? mapY = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      addr2: null == addr2
          ? _value.addr2
          : addr2 // ignore: cast_nullable_to_non_nullable
              as String,
      overView: null == overView
          ? _value.overView
          : overView // ignore: cast_nullable_to_non_nullable
              as String,
      mapX: null == mapX
          ? _value.mapX
          : mapX // ignore: cast_nullable_to_non_nullable
              as String,
      mapY: null == mapY
          ? _value.mapY
          : mapY // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchDetailResultImplCopyWith<$Res>
    implements $SearchDetailResultCopyWith<$Res> {
  factory _$$SearchDetailResultImplCopyWith(_$SearchDetailResultImpl value,
          $Res Function(_$SearchDetailResultImpl) then) =
      __$$SearchDetailResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String title,
      String addr1,
      String addr2,
      String overView,
      String mapX,
      String mapY});
}

/// @nodoc
class __$$SearchDetailResultImplCopyWithImpl<$Res>
    extends _$SearchDetailResultCopyWithImpl<$Res, _$SearchDetailResultImpl>
    implements _$$SearchDetailResultImplCopyWith<$Res> {
  __$$SearchDetailResultImplCopyWithImpl(_$SearchDetailResultImpl _value,
      $Res Function(_$SearchDetailResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? title = null,
    Object? addr1 = null,
    Object? addr2 = null,
    Object? overView = null,
    Object? mapX = null,
    Object? mapY = null,
  }) {
    return _then(_$SearchDetailResultImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      addr1: null == addr1
          ? _value.addr1
          : addr1 // ignore: cast_nullable_to_non_nullable
              as String,
      addr2: null == addr2
          ? _value.addr2
          : addr2 // ignore: cast_nullable_to_non_nullable
              as String,
      overView: null == overView
          ? _value.overView
          : overView // ignore: cast_nullable_to_non_nullable
              as String,
      mapX: null == mapX
          ? _value.mapX
          : mapX // ignore: cast_nullable_to_non_nullable
              as String,
      mapY: null == mapY
          ? _value.mapY
          : mapY // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchDetailResultImpl implements _SearchDetailResult {
  const _$SearchDetailResultImpl(
      {required this.contentId,
      required this.contentTypeId,
      required this.title,
      required this.addr1,
      required this.addr2,
      required this.overView,
      required this.mapX,
      required this.mapY});

  factory _$SearchDetailResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchDetailResultImplFromJson(json);

  @override
  final String contentId;
  @override
  final String contentTypeId;
  @override
  final String title;
  @override
  final String addr1;
  @override
  final String addr2;
  @override
  final String overView;
  @override
  final String mapX;
  @override
  final String mapY;

  @override
  String toString() {
    return 'SearchDetailResult(contentId: $contentId, contentTypeId: $contentTypeId, title: $title, addr1: $addr1, addr2: $addr2, overView: $overView, mapX: $mapX, mapY: $mapY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDetailResultImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.addr1, addr1) || other.addr1 == addr1) &&
            (identical(other.addr2, addr2) || other.addr2 == addr2) &&
            (identical(other.overView, overView) ||
                other.overView == overView) &&
            (identical(other.mapX, mapX) || other.mapX == mapX) &&
            (identical(other.mapY, mapY) || other.mapY == mapY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contentId, contentTypeId, title,
      addr1, addr2, overView, mapX, mapY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDetailResultImplCopyWith<_$SearchDetailResultImpl> get copyWith =>
      __$$SearchDetailResultImplCopyWithImpl<_$SearchDetailResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchDetailResultImplToJson(
      this,
    );
  }
}

abstract class _SearchDetailResult implements SearchDetailResult {
  const factory _SearchDetailResult(
      {required final String contentId,
      required final String contentTypeId,
      required final String title,
      required final String addr1,
      required final String addr2,
      required final String overView,
      required final String mapX,
      required final String mapY}) = _$SearchDetailResultImpl;

  factory _SearchDetailResult.fromJson(Map<String, dynamic> json) =
      _$SearchDetailResultImpl.fromJson;

  @override
  String get contentId;
  @override
  String get contentTypeId;
  @override
  String get title;
  @override
  String get addr1;
  @override
  String get addr2;
  @override
  String get overView;
  @override
  String get mapX;
  @override
  String get mapY;
  @override
  @JsonKey(ignore: true)
  _$$SearchDetailResultImplCopyWith<_$SearchDetailResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
