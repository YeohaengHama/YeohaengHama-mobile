// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_pick_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PickPlace _$PickPlaceFromJson(Map<String, dynamic> json) {
  return _PickPlace.fromJson(json);
}

/// @nodoc
mixin _$PickPlace {
  String get contentId => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get addr1 => throw _privateConstructorUsedError;
  String get mapx => throw _privateConstructorUsedError;
  String get mapy => throw _privateConstructorUsedError;
  String get firstImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickPlaceCopyWith<PickPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickPlaceCopyWith<$Res> {
  factory $PickPlaceCopyWith(PickPlace value, $Res Function(PickPlace) then) =
      _$PickPlaceCopyWithImpl<$Res, PickPlace>;
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String title,
      String addr1,
      String mapx,
      String mapy,
      String firstImage});
}

/// @nodoc
class _$PickPlaceCopyWithImpl<$Res, $Val extends PickPlace>
    implements $PickPlaceCopyWith<$Res> {
  _$PickPlaceCopyWithImpl(this._value, this._then);

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
    Object? mapx = null,
    Object? mapy = null,
    Object? firstImage = null,
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
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
      firstImage: null == firstImage
          ? _value.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PickPlaceImplCopyWith<$Res>
    implements $PickPlaceCopyWith<$Res> {
  factory _$$PickPlaceImplCopyWith(
          _$PickPlaceImpl value, $Res Function(_$PickPlaceImpl) then) =
      __$$PickPlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String contentId,
      String contentTypeId,
      String title,
      String addr1,
      String mapx,
      String mapy,
      String firstImage});
}

/// @nodoc
class __$$PickPlaceImplCopyWithImpl<$Res>
    extends _$PickPlaceCopyWithImpl<$Res, _$PickPlaceImpl>
    implements _$$PickPlaceImplCopyWith<$Res> {
  __$$PickPlaceImplCopyWithImpl(
      _$PickPlaceImpl _value, $Res Function(_$PickPlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? title = null,
    Object? addr1 = null,
    Object? mapx = null,
    Object? mapy = null,
    Object? firstImage = null,
  }) {
    return _then(_$PickPlaceImpl(
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
      mapx: null == mapx
          ? _value.mapx
          : mapx // ignore: cast_nullable_to_non_nullable
              as String,
      mapy: null == mapy
          ? _value.mapy
          : mapy // ignore: cast_nullable_to_non_nullable
              as String,
      firstImage: null == firstImage
          ? _value.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PickPlaceImpl implements _PickPlace {
  const _$PickPlaceImpl(
      {required this.contentId,
      required this.contentTypeId,
      required this.title,
      required this.addr1,
      required this.mapx,
      required this.mapy,
      required this.firstImage});

  factory _$PickPlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickPlaceImplFromJson(json);

  @override
  final String contentId;
  @override
  final String contentTypeId;
  @override
  final String title;
  @override
  final String addr1;
  @override
  final String mapx;
  @override
  final String mapy;
  @override
  final String firstImage;

  @override
  String toString() {
    return 'PickPlace(contentId: $contentId, contentTypeId: $contentTypeId, title: $title, addr1: $addr1, mapx: $mapx, mapy: $mapy, firstImage: $firstImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickPlaceImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.addr1, addr1) || other.addr1 == addr1) &&
            (identical(other.mapx, mapx) || other.mapx == mapx) &&
            (identical(other.mapy, mapy) || other.mapy == mapy) &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contentId, contentTypeId, title,
      addr1, mapx, mapy, firstImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickPlaceImplCopyWith<_$PickPlaceImpl> get copyWith =>
      __$$PickPlaceImplCopyWithImpl<_$PickPlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PickPlaceImplToJson(
      this,
    );
  }
}

abstract class _PickPlace implements PickPlace {
  const factory _PickPlace(
      {required final String contentId,
      required final String contentTypeId,
      required final String title,
      required final String addr1,
      required final String mapx,
      required final String mapy,
      required final String firstImage}) = _$PickPlaceImpl;

  factory _PickPlace.fromJson(Map<String, dynamic> json) =
      _$PickPlaceImpl.fromJson;

  @override
  String get contentId;
  @override
  String get contentTypeId;
  @override
  String get title;
  @override
  String get addr1;
  @override
  String get mapx;
  @override
  String get mapy;
  @override
  String get firstImage;
  @override
  @JsonKey(ignore: true)
  _$$PickPlaceImplCopyWith<_$PickPlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
