// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_map_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MapCoordinates _$MapCoordinatesFromJson(Map<String, dynamic> json) {
  return _MapCoordinates.fromJson(json);
}

/// @nodoc
mixin _$MapCoordinates {
  String get startTitle => throw _privateConstructorUsedError;
  double get startX => throw _privateConstructorUsedError;
  double get startY => throw _privateConstructorUsedError;
  String get endTitle => throw _privateConstructorUsedError;
  double get endX => throw _privateConstructorUsedError;
  double get endY => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapCoordinatesCopyWith<MapCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapCoordinatesCopyWith<$Res> {
  factory $MapCoordinatesCopyWith(
          MapCoordinates value, $Res Function(MapCoordinates) then) =
      _$MapCoordinatesCopyWithImpl<$Res, MapCoordinates>;
  @useResult
  $Res call(
      {String startTitle,
      double startX,
      double startY,
      String endTitle,
      double endX,
      double endY});
}

/// @nodoc
class _$MapCoordinatesCopyWithImpl<$Res, $Val extends MapCoordinates>
    implements $MapCoordinatesCopyWith<$Res> {
  _$MapCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTitle = null,
    Object? startX = null,
    Object? startY = null,
    Object? endTitle = null,
    Object? endX = null,
    Object? endY = null,
  }) {
    return _then(_value.copyWith(
      startTitle: null == startTitle
          ? _value.startTitle
          : startTitle // ignore: cast_nullable_to_non_nullable
              as String,
      startX: null == startX
          ? _value.startX
          : startX // ignore: cast_nullable_to_non_nullable
              as double,
      startY: null == startY
          ? _value.startY
          : startY // ignore: cast_nullable_to_non_nullable
              as double,
      endTitle: null == endTitle
          ? _value.endTitle
          : endTitle // ignore: cast_nullable_to_non_nullable
              as String,
      endX: null == endX
          ? _value.endX
          : endX // ignore: cast_nullable_to_non_nullable
              as double,
      endY: null == endY
          ? _value.endY
          : endY // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapCoordinatesImplCopyWith<$Res>
    implements $MapCoordinatesCopyWith<$Res> {
  factory _$$MapCoordinatesImplCopyWith(_$MapCoordinatesImpl value,
          $Res Function(_$MapCoordinatesImpl) then) =
      __$$MapCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startTitle,
      double startX,
      double startY,
      String endTitle,
      double endX,
      double endY});
}

/// @nodoc
class __$$MapCoordinatesImplCopyWithImpl<$Res>
    extends _$MapCoordinatesCopyWithImpl<$Res, _$MapCoordinatesImpl>
    implements _$$MapCoordinatesImplCopyWith<$Res> {
  __$$MapCoordinatesImplCopyWithImpl(
      _$MapCoordinatesImpl _value, $Res Function(_$MapCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startTitle = null,
    Object? startX = null,
    Object? startY = null,
    Object? endTitle = null,
    Object? endX = null,
    Object? endY = null,
  }) {
    return _then(_$MapCoordinatesImpl(
      startTitle: null == startTitle
          ? _value.startTitle
          : startTitle // ignore: cast_nullable_to_non_nullable
              as String,
      startX: null == startX
          ? _value.startX
          : startX // ignore: cast_nullable_to_non_nullable
              as double,
      startY: null == startY
          ? _value.startY
          : startY // ignore: cast_nullable_to_non_nullable
              as double,
      endTitle: null == endTitle
          ? _value.endTitle
          : endTitle // ignore: cast_nullable_to_non_nullable
              as String,
      endX: null == endX
          ? _value.endX
          : endX // ignore: cast_nullable_to_non_nullable
              as double,
      endY: null == endY
          ? _value.endY
          : endY // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapCoordinatesImpl implements _MapCoordinates {
  const _$MapCoordinatesImpl(
      {required this.startTitle,
      required this.startX,
      required this.startY,
      required this.endTitle,
      required this.endX,
      required this.endY});

  factory _$MapCoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapCoordinatesImplFromJson(json);

  @override
  final String startTitle;
  @override
  final double startX;
  @override
  final double startY;
  @override
  final String endTitle;
  @override
  final double endX;
  @override
  final double endY;

  @override
  String toString() {
    return 'MapCoordinates(startTitle: $startTitle, startX: $startX, startY: $startY, endTitle: $endTitle, endX: $endX, endY: $endY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapCoordinatesImpl &&
            (identical(other.startTitle, startTitle) ||
                other.startTitle == startTitle) &&
            (identical(other.startX, startX) || other.startX == startX) &&
            (identical(other.startY, startY) || other.startY == startY) &&
            (identical(other.endTitle, endTitle) ||
                other.endTitle == endTitle) &&
            (identical(other.endX, endX) || other.endX == endX) &&
            (identical(other.endY, endY) || other.endY == endY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, startTitle, startX, startY, endTitle, endX, endY);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapCoordinatesImplCopyWith<_$MapCoordinatesImpl> get copyWith =>
      __$$MapCoordinatesImplCopyWithImpl<_$MapCoordinatesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapCoordinatesImplToJson(
      this,
    );
  }
}

abstract class _MapCoordinates implements MapCoordinates {
  const factory _MapCoordinates(
      {required final String startTitle,
      required final double startX,
      required final double startY,
      required final String endTitle,
      required final double endX,
      required final double endY}) = _$MapCoordinatesImpl;

  factory _MapCoordinates.fromJson(Map<String, dynamic> json) =
      _$MapCoordinatesImpl.fromJson;

  @override
  String get startTitle;
  @override
  double get startX;
  @override
  double get startY;
  @override
  String get endTitle;
  @override
  double get endX;
  @override
  double get endY;
  @override
  @JsonKey(ignore: true)
  _$$MapCoordinatesImplCopyWith<_$MapCoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
