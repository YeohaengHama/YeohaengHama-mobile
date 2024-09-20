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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HamaArea {
  String get area => throw _privateConstructorUsedError;
  String get areaImages => throw _privateConstructorUsedError;

  /// Create a copy of HamaArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HamaAreaCopyWith<HamaArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HamaAreaCopyWith<$Res> {
  factory $HamaAreaCopyWith(HamaArea value, $Res Function(HamaArea) then) =
      _$HamaAreaCopyWithImpl<$Res, HamaArea>;
  @useResult
  $Res call({String area, String areaImages});
}

/// @nodoc
class _$HamaAreaCopyWithImpl<$Res, $Val extends HamaArea>
    implements $HamaAreaCopyWith<$Res> {
  _$HamaAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HamaArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? areaImages = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      areaImages: null == areaImages
          ? _value.areaImages
          : areaImages // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HamaAreaImplCopyWith<$Res>
    implements $HamaAreaCopyWith<$Res> {
  factory _$$HamaAreaImplCopyWith(
          _$HamaAreaImpl value, $Res Function(_$HamaAreaImpl) then) =
      __$$HamaAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area, String areaImages});
}

/// @nodoc
class __$$HamaAreaImplCopyWithImpl<$Res>
    extends _$HamaAreaCopyWithImpl<$Res, _$HamaAreaImpl>
    implements _$$HamaAreaImplCopyWith<$Res> {
  __$$HamaAreaImplCopyWithImpl(
      _$HamaAreaImpl _value, $Res Function(_$HamaAreaImpl) _then)
      : super(_value, _then);

  /// Create a copy of HamaArea
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? areaImages = null,
  }) {
    return _then(_$HamaAreaImpl(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      areaImages: null == areaImages
          ? _value.areaImages
          : areaImages // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HamaAreaImpl implements _HamaArea {
  const _$HamaAreaImpl({required this.area, required this.areaImages});

  @override
  final String area;
  @override
  final String areaImages;

  @override
  String toString() {
    return 'HamaArea(area: $area, areaImages: $areaImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HamaAreaImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.areaImages, areaImages) ||
                other.areaImages == areaImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, area, areaImages);

  /// Create a copy of HamaArea
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HamaAreaImplCopyWith<_$HamaAreaImpl> get copyWith =>
      __$$HamaAreaImplCopyWithImpl<_$HamaAreaImpl>(this, _$identity);
}

abstract class _HamaArea implements HamaArea {
  const factory _HamaArea(
      {required final String area,
      required final String areaImages}) = _$HamaAreaImpl;

  @override
  String get area;
  @override
  String get areaImages;

  /// Create a copy of HamaArea
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HamaAreaImplCopyWith<_$HamaAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
