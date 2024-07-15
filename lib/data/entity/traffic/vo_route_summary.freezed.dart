// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_route_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutePoint _$RoutePointFromJson(Map<String, dynamic> json) {
  return _RoutePoint.fromJson(json);
}

/// @nodoc
mixin _$RoutePoint {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutePointCopyWith<RoutePoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutePointCopyWith<$Res> {
  factory $RoutePointCopyWith(
          RoutePoint value, $Res Function(RoutePoint) then) =
      _$RoutePointCopyWithImpl<$Res, RoutePoint>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$RoutePointCopyWithImpl<$Res, $Val extends RoutePoint>
    implements $RoutePointCopyWith<$Res> {
  _$RoutePointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutePointImplCopyWith<$Res>
    implements $RoutePointCopyWith<$Res> {
  factory _$$RoutePointImplCopyWith(
          _$RoutePointImpl value, $Res Function(_$RoutePointImpl) then) =
      __$$RoutePointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$RoutePointImplCopyWithImpl<$Res>
    extends _$RoutePointCopyWithImpl<$Res, _$RoutePointImpl>
    implements _$$RoutePointImplCopyWith<$Res> {
  __$$RoutePointImplCopyWithImpl(
      _$RoutePointImpl _value, $Res Function(_$RoutePointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$RoutePointImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutePointImpl implements _RoutePoint {
  const _$RoutePointImpl({required this.latitude, required this.longitude});

  factory _$RoutePointImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutePointImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'RoutePoint(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutePointImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutePointImplCopyWith<_$RoutePointImpl> get copyWith =>
      __$$RoutePointImplCopyWithImpl<_$RoutePointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutePointImplToJson(
      this,
    );
  }
}

abstract class _RoutePoint implements RoutePoint {
  const factory _RoutePoint(
      {required final double latitude,
      required final double longitude}) = _$RoutePointImpl;

  factory _RoutePoint.fromJson(Map<String, dynamic> json) =
      _$RoutePointImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$RoutePointImplCopyWith<_$RoutePointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RouteSummary _$RouteSummaryFromJson(Map<String, dynamic> json) {
  return _RouteSummary.fromJson(json);
}

/// @nodoc
mixin _$RouteSummary {
  List<RoutePoint> get path => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  int get taxiFare => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteSummaryCopyWith<RouteSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteSummaryCopyWith<$Res> {
  factory $RouteSummaryCopyWith(
          RouteSummary value, $Res Function(RouteSummary) then) =
      _$RouteSummaryCopyWithImpl<$Res, RouteSummary>;
  @useResult
  $Res call({List<RoutePoint> path, int duration, int distance, int taxiFare});
}

/// @nodoc
class _$RouteSummaryCopyWithImpl<$Res, $Val extends RouteSummary>
    implements $RouteSummaryCopyWith<$Res> {
  _$RouteSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? duration = null,
    Object? distance = null,
    Object? taxiFare = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<RoutePoint>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      taxiFare: null == taxiFare
          ? _value.taxiFare
          : taxiFare // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteSummaryImplCopyWith<$Res>
    implements $RouteSummaryCopyWith<$Res> {
  factory _$$RouteSummaryImplCopyWith(
          _$RouteSummaryImpl value, $Res Function(_$RouteSummaryImpl) then) =
      __$$RouteSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RoutePoint> path, int duration, int distance, int taxiFare});
}

/// @nodoc
class __$$RouteSummaryImplCopyWithImpl<$Res>
    extends _$RouteSummaryCopyWithImpl<$Res, _$RouteSummaryImpl>
    implements _$$RouteSummaryImplCopyWith<$Res> {
  __$$RouteSummaryImplCopyWithImpl(
      _$RouteSummaryImpl _value, $Res Function(_$RouteSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? duration = null,
    Object? distance = null,
    Object? taxiFare = null,
  }) {
    return _then(_$RouteSummaryImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<RoutePoint>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      taxiFare: null == taxiFare
          ? _value.taxiFare
          : taxiFare // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteSummaryImpl implements _RouteSummary {
  const _$RouteSummaryImpl(
      {required final List<RoutePoint> path,
      required this.duration,
      required this.distance,
      required this.taxiFare})
      : _path = path;

  factory _$RouteSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteSummaryImplFromJson(json);

  final List<RoutePoint> _path;
  @override
  List<RoutePoint> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  final int duration;
  @override
  final int distance;
  @override
  final int taxiFare;

  @override
  String toString() {
    return 'RouteSummary(path: $path, duration: $duration, distance: $distance, taxiFare: $taxiFare)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteSummaryImpl &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.taxiFare, taxiFare) ||
                other.taxiFare == taxiFare));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_path), duration, distance, taxiFare);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteSummaryImplCopyWith<_$RouteSummaryImpl> get copyWith =>
      __$$RouteSummaryImplCopyWithImpl<_$RouteSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteSummaryImplToJson(
      this,
    );
  }
}

abstract class _RouteSummary implements RouteSummary {
  const factory _RouteSummary(
      {required final List<RoutePoint> path,
      required final int duration,
      required final int distance,
      required final int taxiFare}) = _$RouteSummaryImpl;

  factory _RouteSummary.fromJson(Map<String, dynamic> json) =
      _$RouteSummaryImpl.fromJson;

  @override
  List<RoutePoint> get path;
  @override
  int get duration;
  @override
  int get distance;
  @override
  int get taxiFare;
  @override
  @JsonKey(ignore: true)
  _$$RouteSummaryImplCopyWith<_$RouteSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarTrafficInfo _$CarTrafficInfoFromJson(Map<String, dynamic> json) {
  return _CarTrafficInfo.fromJson(json);
}

/// @nodoc
mixin _$CarTrafficInfo {
  List<RouteSummary> get trafast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarTrafficInfoCopyWith<CarTrafficInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarTrafficInfoCopyWith<$Res> {
  factory $CarTrafficInfoCopyWith(
          CarTrafficInfo value, $Res Function(CarTrafficInfo) then) =
      _$CarTrafficInfoCopyWithImpl<$Res, CarTrafficInfo>;
  @useResult
  $Res call({List<RouteSummary> trafast});
}

/// @nodoc
class _$CarTrafficInfoCopyWithImpl<$Res, $Val extends CarTrafficInfo>
    implements $CarTrafficInfoCopyWith<$Res> {
  _$CarTrafficInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trafast = null,
  }) {
    return _then(_value.copyWith(
      trafast: null == trafast
          ? _value.trafast
          : trafast // ignore: cast_nullable_to_non_nullable
              as List<RouteSummary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarTrafficInfoImplCopyWith<$Res>
    implements $CarTrafficInfoCopyWith<$Res> {
  factory _$$CarTrafficInfoImplCopyWith(_$CarTrafficInfoImpl value,
          $Res Function(_$CarTrafficInfoImpl) then) =
      __$$CarTrafficInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RouteSummary> trafast});
}

/// @nodoc
class __$$CarTrafficInfoImplCopyWithImpl<$Res>
    extends _$CarTrafficInfoCopyWithImpl<$Res, _$CarTrafficInfoImpl>
    implements _$$CarTrafficInfoImplCopyWith<$Res> {
  __$$CarTrafficInfoImplCopyWithImpl(
      _$CarTrafficInfoImpl _value, $Res Function(_$CarTrafficInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trafast = null,
  }) {
    return _then(_$CarTrafficInfoImpl(
      trafast: null == trafast
          ? _value._trafast
          : trafast // ignore: cast_nullable_to_non_nullable
              as List<RouteSummary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarTrafficInfoImpl implements _CarTrafficInfo {
  const _$CarTrafficInfoImpl({required final List<RouteSummary> trafast})
      : _trafast = trafast;

  factory _$CarTrafficInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarTrafficInfoImplFromJson(json);

  final List<RouteSummary> _trafast;
  @override
  List<RouteSummary> get trafast {
    if (_trafast is EqualUnmodifiableListView) return _trafast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trafast);
  }

  @override
  String toString() {
    return 'CarTrafficInfo(trafast: $trafast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarTrafficInfoImpl &&
            const DeepCollectionEquality().equals(other._trafast, _trafast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_trafast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarTrafficInfoImplCopyWith<_$CarTrafficInfoImpl> get copyWith =>
      __$$CarTrafficInfoImplCopyWithImpl<_$CarTrafficInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarTrafficInfoImplToJson(
      this,
    );
  }
}

abstract class _CarTrafficInfo implements CarTrafficInfo {
  const factory _CarTrafficInfo({required final List<RouteSummary> trafast}) =
      _$CarTrafficInfoImpl;

  factory _CarTrafficInfo.fromJson(Map<String, dynamic> json) =
      _$CarTrafficInfoImpl.fromJson;

  @override
  List<RouteSummary> get trafast;
  @override
  @JsonKey(ignore: true)
  _$$CarTrafficInfoImplCopyWith<_$CarTrafficInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
