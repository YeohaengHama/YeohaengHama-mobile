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

/// @nodoc
mixin _$HamaArea {
  String get area => throw _privateConstructorUsedError;
  String get areaImages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_HamaAreaCopyWith<$Res> implements $HamaAreaCopyWith<$Res> {
  factory _$$_HamaAreaCopyWith(
          _$_HamaArea value, $Res Function(_$_HamaArea) then) =
      __$$_HamaAreaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String area, String areaImages});
}

/// @nodoc
class __$$_HamaAreaCopyWithImpl<$Res>
    extends _$HamaAreaCopyWithImpl<$Res, _$_HamaArea>
    implements _$$_HamaAreaCopyWith<$Res> {
  __$$_HamaAreaCopyWithImpl(
      _$_HamaArea _value, $Res Function(_$_HamaArea) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? areaImages = null,
  }) {
    return _then(_$_HamaArea(
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

class _$_HamaArea implements _HamaArea {
  const _$_HamaArea({required this.area, required this.areaImages});

  @override
  final String area;
  @override
  final String areaImages;

  @override
  String toString() {
    return 'HamaArea(area: $area, areaImages: $areaImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HamaArea &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.areaImages, areaImages) ||
                other.areaImages == areaImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, area, areaImages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HamaAreaCopyWith<_$_HamaArea> get copyWith =>
      __$$_HamaAreaCopyWithImpl<_$_HamaArea>(this, _$identity);
}

abstract class _HamaArea implements HamaArea {
  const factory _HamaArea(
      {required final String area,
      required final String areaImages}) = _$_HamaArea;

  @override
  String get area;
  @override
  String get areaImages;
  @override
  @JsonKey(ignore: true)
  _$$_HamaAreaCopyWith<_$_HamaArea> get copyWith =>
      throw _privateConstructorUsedError;
}
