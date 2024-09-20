// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_transport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrafficInfo _$TrafficInfoFromJson(Map<String, dynamic> json) {
  return _TrafficInfo.fromJson(json);
}

/// @nodoc
mixin _$TrafficInfo {
  Result get result => throw _privateConstructorUsedError;

  /// Serializes this TrafficInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrafficInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrafficInfoCopyWith<TrafficInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrafficInfoCopyWith<$Res> {
  factory $TrafficInfoCopyWith(
          TrafficInfo value, $Res Function(TrafficInfo) then) =
      _$TrafficInfoCopyWithImpl<$Res, TrafficInfo>;
  @useResult
  $Res call({Result result});

  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class _$TrafficInfoCopyWithImpl<$Res, $Val extends TrafficInfo>
    implements $TrafficInfoCopyWith<$Res> {
  _$TrafficInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrafficInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ) as $Val);
  }

  /// Create a copy of TrafficInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res> get result {
    return $ResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrafficInfoImplCopyWith<$Res>
    implements $TrafficInfoCopyWith<$Res> {
  factory _$$TrafficInfoImplCopyWith(
          _$TrafficInfoImpl value, $Res Function(_$TrafficInfoImpl) then) =
      __$$TrafficInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result result});

  @override
  $ResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$TrafficInfoImplCopyWithImpl<$Res>
    extends _$TrafficInfoCopyWithImpl<$Res, _$TrafficInfoImpl>
    implements _$$TrafficInfoImplCopyWith<$Res> {
  __$$TrafficInfoImplCopyWithImpl(
      _$TrafficInfoImpl _value, $Res Function(_$TrafficInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrafficInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$TrafficInfoImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrafficInfoImpl implements _TrafficInfo {
  const _$TrafficInfoImpl({required this.result});

  factory _$TrafficInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrafficInfoImplFromJson(json);

  @override
  final Result result;

  @override
  String toString() {
    return 'TrafficInfo(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrafficInfoImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of TrafficInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrafficInfoImplCopyWith<_$TrafficInfoImpl> get copyWith =>
      __$$TrafficInfoImplCopyWithImpl<_$TrafficInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrafficInfoImplToJson(
      this,
    );
  }
}

abstract class _TrafficInfo implements TrafficInfo {
  const factory _TrafficInfo({required final Result result}) =
      _$TrafficInfoImpl;

  factory _TrafficInfo.fromJson(Map<String, dynamic> json) =
      _$TrafficInfoImpl.fromJson;

  @override
  Result get result;

  /// Create a copy of TrafficInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrafficInfoImplCopyWith<_$TrafficInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get searchType => throw _privateConstructorUsedError;
  int? get outTrafficCheck => throw _privateConstructorUsedError;
  int? get busCount => throw _privateConstructorUsedError;
  int? get subwayCount => throw _privateConstructorUsedError;
  int? get subwayBusCount => throw _privateConstructorUsedError;
  int get pointDistance => throw _privateConstructorUsedError;
  int get startRadius => throw _privateConstructorUsedError;
  int get endRadius => throw _privateConstructorUsedError;
  List<Path> get path => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? searchType,
      int? outTrafficCheck,
      int? busCount,
      int? subwayCount,
      int? subwayBusCount,
      int pointDistance,
      int startRadius,
      int endRadius,
      List<Path> path});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchType = freezed,
    Object? outTrafficCheck = freezed,
    Object? busCount = freezed,
    Object? subwayCount = freezed,
    Object? subwayBusCount = freezed,
    Object? pointDistance = null,
    Object? startRadius = null,
    Object? endRadius = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      searchType: freezed == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as int?,
      outTrafficCheck: freezed == outTrafficCheck
          ? _value.outTrafficCheck
          : outTrafficCheck // ignore: cast_nullable_to_non_nullable
              as int?,
      busCount: freezed == busCount
          ? _value.busCount
          : busCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subwayCount: freezed == subwayCount
          ? _value.subwayCount
          : subwayCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subwayBusCount: freezed == subwayBusCount
          ? _value.subwayBusCount
          : subwayBusCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pointDistance: null == pointDistance
          ? _value.pointDistance
          : pointDistance // ignore: cast_nullable_to_non_nullable
              as int,
      startRadius: null == startRadius
          ? _value.startRadius
          : startRadius // ignore: cast_nullable_to_non_nullable
              as int,
      endRadius: null == endRadius
          ? _value.endRadius
          : endRadius // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<Path>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? searchType,
      int? outTrafficCheck,
      int? busCount,
      int? subwayCount,
      int? subwayBusCount,
      int pointDistance,
      int startRadius,
      int endRadius,
      List<Path> path});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchType = freezed,
    Object? outTrafficCheck = freezed,
    Object? busCount = freezed,
    Object? subwayCount = freezed,
    Object? subwayBusCount = freezed,
    Object? pointDistance = null,
    Object? startRadius = null,
    Object? endRadius = null,
    Object? path = null,
  }) {
    return _then(_$ResultImpl(
      searchType: freezed == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as int?,
      outTrafficCheck: freezed == outTrafficCheck
          ? _value.outTrafficCheck
          : outTrafficCheck // ignore: cast_nullable_to_non_nullable
              as int?,
      busCount: freezed == busCount
          ? _value.busCount
          : busCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subwayCount: freezed == subwayCount
          ? _value.subwayCount
          : subwayCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subwayBusCount: freezed == subwayBusCount
          ? _value.subwayBusCount
          : subwayBusCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pointDistance: null == pointDistance
          ? _value.pointDistance
          : pointDistance // ignore: cast_nullable_to_non_nullable
              as int,
      startRadius: null == startRadius
          ? _value.startRadius
          : startRadius // ignore: cast_nullable_to_non_nullable
              as int,
      endRadius: null == endRadius
          ? _value.endRadius
          : endRadius // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<Path>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.searchType,
      this.outTrafficCheck,
      this.busCount,
      this.subwayCount,
      this.subwayBusCount,
      required this.pointDistance,
      required this.startRadius,
      required this.endRadius,
      required final List<Path> path})
      : _path = path;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? searchType;
  @override
  final int? outTrafficCheck;
  @override
  final int? busCount;
  @override
  final int? subwayCount;
  @override
  final int? subwayBusCount;
  @override
  final int pointDistance;
  @override
  final int startRadius;
  @override
  final int endRadius;
  final List<Path> _path;
  @override
  List<Path> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  String toString() {
    return 'Result(searchType: $searchType, outTrafficCheck: $outTrafficCheck, busCount: $busCount, subwayCount: $subwayCount, subwayBusCount: $subwayBusCount, pointDistance: $pointDistance, startRadius: $startRadius, endRadius: $endRadius, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType) &&
            (identical(other.outTrafficCheck, outTrafficCheck) ||
                other.outTrafficCheck == outTrafficCheck) &&
            (identical(other.busCount, busCount) ||
                other.busCount == busCount) &&
            (identical(other.subwayCount, subwayCount) ||
                other.subwayCount == subwayCount) &&
            (identical(other.subwayBusCount, subwayBusCount) ||
                other.subwayBusCount == subwayBusCount) &&
            (identical(other.pointDistance, pointDistance) ||
                other.pointDistance == pointDistance) &&
            (identical(other.startRadius, startRadius) ||
                other.startRadius == startRadius) &&
            (identical(other.endRadius, endRadius) ||
                other.endRadius == endRadius) &&
            const DeepCollectionEquality().equals(other._path, _path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchType,
      outTrafficCheck,
      busCount,
      subwayCount,
      subwayBusCount,
      pointDistance,
      startRadius,
      endRadius,
      const DeepCollectionEquality().hash(_path));

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? searchType,
      final int? outTrafficCheck,
      final int? busCount,
      final int? subwayCount,
      final int? subwayBusCount,
      required final int pointDistance,
      required final int startRadius,
      required final int endRadius,
      required final List<Path> path}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get searchType;
  @override
  int? get outTrafficCheck;
  @override
  int? get busCount;
  @override
  int? get subwayCount;
  @override
  int? get subwayBusCount;
  @override
  int get pointDistance;
  @override
  int get startRadius;
  @override
  int get endRadius;
  @override
  List<Path> get path;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Path _$PathFromJson(Map<String, dynamic> json) {
  return _Path.fromJson(json);
}

/// @nodoc
mixin _$Path {
  int get pathType => throw _privateConstructorUsedError;
  Info get info => throw _privateConstructorUsedError;
  List<SubPath>? get subPath => throw _privateConstructorUsedError;

  /// Serializes this Path to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Path
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PathCopyWith<Path> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathCopyWith<$Res> {
  factory $PathCopyWith(Path value, $Res Function(Path) then) =
      _$PathCopyWithImpl<$Res, Path>;
  @useResult
  $Res call({int pathType, Info info, List<SubPath>? subPath});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$PathCopyWithImpl<$Res, $Val extends Path>
    implements $PathCopyWith<$Res> {
  _$PathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Path
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pathType = null,
    Object? info = null,
    Object? subPath = freezed,
  }) {
    return _then(_value.copyWith(
      pathType: null == pathType
          ? _value.pathType
          : pathType // ignore: cast_nullable_to_non_nullable
              as int,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      subPath: freezed == subPath
          ? _value.subPath
          : subPath // ignore: cast_nullable_to_non_nullable
              as List<SubPath>?,
    ) as $Val);
  }

  /// Create a copy of Path
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PathImplCopyWith<$Res> implements $PathCopyWith<$Res> {
  factory _$$PathImplCopyWith(
          _$PathImpl value, $Res Function(_$PathImpl) then) =
      __$$PathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pathType, Info info, List<SubPath>? subPath});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$PathImplCopyWithImpl<$Res>
    extends _$PathCopyWithImpl<$Res, _$PathImpl>
    implements _$$PathImplCopyWith<$Res> {
  __$$PathImplCopyWithImpl(_$PathImpl _value, $Res Function(_$PathImpl) _then)
      : super(_value, _then);

  /// Create a copy of Path
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pathType = null,
    Object? info = null,
    Object? subPath = freezed,
  }) {
    return _then(_$PathImpl(
      pathType: null == pathType
          ? _value.pathType
          : pathType // ignore: cast_nullable_to_non_nullable
              as int,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      subPath: freezed == subPath
          ? _value._subPath
          : subPath // ignore: cast_nullable_to_non_nullable
              as List<SubPath>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PathImpl implements _Path {
  const _$PathImpl(
      {required this.pathType,
      required this.info,
      required final List<SubPath>? subPath})
      : _subPath = subPath;

  factory _$PathImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathImplFromJson(json);

  @override
  final int pathType;
  @override
  final Info info;
  final List<SubPath>? _subPath;
  @override
  List<SubPath>? get subPath {
    final value = _subPath;
    if (value == null) return null;
    if (_subPath is EqualUnmodifiableListView) return _subPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Path(pathType: $pathType, info: $info, subPath: $subPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathImpl &&
            (identical(other.pathType, pathType) ||
                other.pathType == pathType) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._subPath, _subPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pathType, info,
      const DeepCollectionEquality().hash(_subPath));

  /// Create a copy of Path
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PathImplCopyWith<_$PathImpl> get copyWith =>
      __$$PathImplCopyWithImpl<_$PathImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PathImplToJson(
      this,
    );
  }
}

abstract class _Path implements Path {
  const factory _Path(
      {required final int pathType,
      required final Info info,
      required final List<SubPath>? subPath}) = _$PathImpl;

  factory _Path.fromJson(Map<String, dynamic> json) = _$PathImpl.fromJson;

  @override
  int get pathType;
  @override
  Info get info;
  @override
  List<SubPath>? get subPath;

  /// Create a copy of Path
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PathImplCopyWith<_$PathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  double get trafficDistance => throw _privateConstructorUsedError;
  int get totalWalk => throw _privateConstructorUsedError;
  int get totalTime => throw _privateConstructorUsedError;
  int get payment => throw _privateConstructorUsedError;
  int get busTransitCount => throw _privateConstructorUsedError;
  int get subwayTransitCount => throw _privateConstructorUsedError;
  String get mapObj => throw _privateConstructorUsedError;
  String get firstStartStation => throw _privateConstructorUsedError;
  String get lastEndStation => throw _privateConstructorUsedError;
  int get totalStationCount => throw _privateConstructorUsedError;
  int get busStationCount => throw _privateConstructorUsedError;
  int get subwayStationCount => throw _privateConstructorUsedError;
  double get totalDistance => throw _privateConstructorUsedError;
  int? get totalWalkTime => throw _privateConstructorUsedError;
  int? get checkIntervalTime => throw _privateConstructorUsedError;
  String? get checkIntervalTimeOverYn => throw _privateConstructorUsedError;
  int? get totalIntervalTime => throw _privateConstructorUsedError;

  /// Serializes this Info to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call(
      {double trafficDistance,
      int totalWalk,
      int totalTime,
      int payment,
      int busTransitCount,
      int subwayTransitCount,
      String mapObj,
      String firstStartStation,
      String lastEndStation,
      int totalStationCount,
      int busStationCount,
      int subwayStationCount,
      double totalDistance,
      int? totalWalkTime,
      int? checkIntervalTime,
      String? checkIntervalTimeOverYn,
      int? totalIntervalTime});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trafficDistance = null,
    Object? totalWalk = null,
    Object? totalTime = null,
    Object? payment = null,
    Object? busTransitCount = null,
    Object? subwayTransitCount = null,
    Object? mapObj = null,
    Object? firstStartStation = null,
    Object? lastEndStation = null,
    Object? totalStationCount = null,
    Object? busStationCount = null,
    Object? subwayStationCount = null,
    Object? totalDistance = null,
    Object? totalWalkTime = freezed,
    Object? checkIntervalTime = freezed,
    Object? checkIntervalTimeOverYn = freezed,
    Object? totalIntervalTime = freezed,
  }) {
    return _then(_value.copyWith(
      trafficDistance: null == trafficDistance
          ? _value.trafficDistance
          : trafficDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalWalk: null == totalWalk
          ? _value.totalWalk
          : totalWalk // ignore: cast_nullable_to_non_nullable
              as int,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as int,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as int,
      busTransitCount: null == busTransitCount
          ? _value.busTransitCount
          : busTransitCount // ignore: cast_nullable_to_non_nullable
              as int,
      subwayTransitCount: null == subwayTransitCount
          ? _value.subwayTransitCount
          : subwayTransitCount // ignore: cast_nullable_to_non_nullable
              as int,
      mapObj: null == mapObj
          ? _value.mapObj
          : mapObj // ignore: cast_nullable_to_non_nullable
              as String,
      firstStartStation: null == firstStartStation
          ? _value.firstStartStation
          : firstStartStation // ignore: cast_nullable_to_non_nullable
              as String,
      lastEndStation: null == lastEndStation
          ? _value.lastEndStation
          : lastEndStation // ignore: cast_nullable_to_non_nullable
              as String,
      totalStationCount: null == totalStationCount
          ? _value.totalStationCount
          : totalStationCount // ignore: cast_nullable_to_non_nullable
              as int,
      busStationCount: null == busStationCount
          ? _value.busStationCount
          : busStationCount // ignore: cast_nullable_to_non_nullable
              as int,
      subwayStationCount: null == subwayStationCount
          ? _value.subwayStationCount
          : subwayStationCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalWalkTime: freezed == totalWalkTime
          ? _value.totalWalkTime
          : totalWalkTime // ignore: cast_nullable_to_non_nullable
              as int?,
      checkIntervalTime: freezed == checkIntervalTime
          ? _value.checkIntervalTime
          : checkIntervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      checkIntervalTimeOverYn: freezed == checkIntervalTimeOverYn
          ? _value.checkIntervalTimeOverYn
          : checkIntervalTimeOverYn // ignore: cast_nullable_to_non_nullable
              as String?,
      totalIntervalTime: freezed == totalIntervalTime
          ? _value.totalIntervalTime
          : totalIntervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoImplCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$InfoImplCopyWith(
          _$InfoImpl value, $Res Function(_$InfoImpl) then) =
      __$$InfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double trafficDistance,
      int totalWalk,
      int totalTime,
      int payment,
      int busTransitCount,
      int subwayTransitCount,
      String mapObj,
      String firstStartStation,
      String lastEndStation,
      int totalStationCount,
      int busStationCount,
      int subwayStationCount,
      double totalDistance,
      int? totalWalkTime,
      int? checkIntervalTime,
      String? checkIntervalTimeOverYn,
      int? totalIntervalTime});
}

/// @nodoc
class __$$InfoImplCopyWithImpl<$Res>
    extends _$InfoCopyWithImpl<$Res, _$InfoImpl>
    implements _$$InfoImplCopyWith<$Res> {
  __$$InfoImplCopyWithImpl(_$InfoImpl _value, $Res Function(_$InfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trafficDistance = null,
    Object? totalWalk = null,
    Object? totalTime = null,
    Object? payment = null,
    Object? busTransitCount = null,
    Object? subwayTransitCount = null,
    Object? mapObj = null,
    Object? firstStartStation = null,
    Object? lastEndStation = null,
    Object? totalStationCount = null,
    Object? busStationCount = null,
    Object? subwayStationCount = null,
    Object? totalDistance = null,
    Object? totalWalkTime = freezed,
    Object? checkIntervalTime = freezed,
    Object? checkIntervalTimeOverYn = freezed,
    Object? totalIntervalTime = freezed,
  }) {
    return _then(_$InfoImpl(
      trafficDistance: null == trafficDistance
          ? _value.trafficDistance
          : trafficDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalWalk: null == totalWalk
          ? _value.totalWalk
          : totalWalk // ignore: cast_nullable_to_non_nullable
              as int,
      totalTime: null == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as int,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as int,
      busTransitCount: null == busTransitCount
          ? _value.busTransitCount
          : busTransitCount // ignore: cast_nullable_to_non_nullable
              as int,
      subwayTransitCount: null == subwayTransitCount
          ? _value.subwayTransitCount
          : subwayTransitCount // ignore: cast_nullable_to_non_nullable
              as int,
      mapObj: null == mapObj
          ? _value.mapObj
          : mapObj // ignore: cast_nullable_to_non_nullable
              as String,
      firstStartStation: null == firstStartStation
          ? _value.firstStartStation
          : firstStartStation // ignore: cast_nullable_to_non_nullable
              as String,
      lastEndStation: null == lastEndStation
          ? _value.lastEndStation
          : lastEndStation // ignore: cast_nullable_to_non_nullable
              as String,
      totalStationCount: null == totalStationCount
          ? _value.totalStationCount
          : totalStationCount // ignore: cast_nullable_to_non_nullable
              as int,
      busStationCount: null == busStationCount
          ? _value.busStationCount
          : busStationCount // ignore: cast_nullable_to_non_nullable
              as int,
      subwayStationCount: null == subwayStationCount
          ? _value.subwayStationCount
          : subwayStationCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double,
      totalWalkTime: freezed == totalWalkTime
          ? _value.totalWalkTime
          : totalWalkTime // ignore: cast_nullable_to_non_nullable
              as int?,
      checkIntervalTime: freezed == checkIntervalTime
          ? _value.checkIntervalTime
          : checkIntervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      checkIntervalTimeOverYn: freezed == checkIntervalTimeOverYn
          ? _value.checkIntervalTimeOverYn
          : checkIntervalTimeOverYn // ignore: cast_nullable_to_non_nullable
              as String?,
      totalIntervalTime: freezed == totalIntervalTime
          ? _value.totalIntervalTime
          : totalIntervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {required this.trafficDistance,
      required this.totalWalk,
      required this.totalTime,
      required this.payment,
      required this.busTransitCount,
      required this.subwayTransitCount,
      required this.mapObj,
      required this.firstStartStation,
      required this.lastEndStation,
      required this.totalStationCount,
      required this.busStationCount,
      required this.subwayStationCount,
      required this.totalDistance,
      this.totalWalkTime,
      this.checkIntervalTime,
      this.checkIntervalTimeOverYn,
      this.totalIntervalTime});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  final double trafficDistance;
  @override
  final int totalWalk;
  @override
  final int totalTime;
  @override
  final int payment;
  @override
  final int busTransitCount;
  @override
  final int subwayTransitCount;
  @override
  final String mapObj;
  @override
  final String firstStartStation;
  @override
  final String lastEndStation;
  @override
  final int totalStationCount;
  @override
  final int busStationCount;
  @override
  final int subwayStationCount;
  @override
  final double totalDistance;
  @override
  final int? totalWalkTime;
  @override
  final int? checkIntervalTime;
  @override
  final String? checkIntervalTimeOverYn;
  @override
  final int? totalIntervalTime;

  @override
  String toString() {
    return 'Info(trafficDistance: $trafficDistance, totalWalk: $totalWalk, totalTime: $totalTime, payment: $payment, busTransitCount: $busTransitCount, subwayTransitCount: $subwayTransitCount, mapObj: $mapObj, firstStartStation: $firstStartStation, lastEndStation: $lastEndStation, totalStationCount: $totalStationCount, busStationCount: $busStationCount, subwayStationCount: $subwayStationCount, totalDistance: $totalDistance, totalWalkTime: $totalWalkTime, checkIntervalTime: $checkIntervalTime, checkIntervalTimeOverYn: $checkIntervalTimeOverYn, totalIntervalTime: $totalIntervalTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.trafficDistance, trafficDistance) ||
                other.trafficDistance == trafficDistance) &&
            (identical(other.totalWalk, totalWalk) ||
                other.totalWalk == totalWalk) &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.busTransitCount, busTransitCount) ||
                other.busTransitCount == busTransitCount) &&
            (identical(other.subwayTransitCount, subwayTransitCount) ||
                other.subwayTransitCount == subwayTransitCount) &&
            (identical(other.mapObj, mapObj) || other.mapObj == mapObj) &&
            (identical(other.firstStartStation, firstStartStation) ||
                other.firstStartStation == firstStartStation) &&
            (identical(other.lastEndStation, lastEndStation) ||
                other.lastEndStation == lastEndStation) &&
            (identical(other.totalStationCount, totalStationCount) ||
                other.totalStationCount == totalStationCount) &&
            (identical(other.busStationCount, busStationCount) ||
                other.busStationCount == busStationCount) &&
            (identical(other.subwayStationCount, subwayStationCount) ||
                other.subwayStationCount == subwayStationCount) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalWalkTime, totalWalkTime) ||
                other.totalWalkTime == totalWalkTime) &&
            (identical(other.checkIntervalTime, checkIntervalTime) ||
                other.checkIntervalTime == checkIntervalTime) &&
            (identical(
                    other.checkIntervalTimeOverYn, checkIntervalTimeOverYn) ||
                other.checkIntervalTimeOverYn == checkIntervalTimeOverYn) &&
            (identical(other.totalIntervalTime, totalIntervalTime) ||
                other.totalIntervalTime == totalIntervalTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      trafficDistance,
      totalWalk,
      totalTime,
      payment,
      busTransitCount,
      subwayTransitCount,
      mapObj,
      firstStartStation,
      lastEndStation,
      totalStationCount,
      busStationCount,
      subwayStationCount,
      totalDistance,
      totalWalkTime,
      checkIntervalTime,
      checkIntervalTimeOverYn,
      totalIntervalTime);

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      __$$InfoImplCopyWithImpl<_$InfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoImplToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
      {required final double trafficDistance,
      required final int totalWalk,
      required final int totalTime,
      required final int payment,
      required final int busTransitCount,
      required final int subwayTransitCount,
      required final String mapObj,
      required final String firstStartStation,
      required final String lastEndStation,
      required final int totalStationCount,
      required final int busStationCount,
      required final int subwayStationCount,
      required final double totalDistance,
      final int? totalWalkTime,
      final int? checkIntervalTime,
      final String? checkIntervalTimeOverYn,
      final int? totalIntervalTime}) = _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  double get trafficDistance;
  @override
  int get totalWalk;
  @override
  int get totalTime;
  @override
  int get payment;
  @override
  int get busTransitCount;
  @override
  int get subwayTransitCount;
  @override
  String get mapObj;
  @override
  String get firstStartStation;
  @override
  String get lastEndStation;
  @override
  int get totalStationCount;
  @override
  int get busStationCount;
  @override
  int get subwayStationCount;
  @override
  double get totalDistance;
  @override
  int? get totalWalkTime;
  @override
  int? get checkIntervalTime;
  @override
  String? get checkIntervalTimeOverYn;
  @override
  int? get totalIntervalTime;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubPath _$SubPathFromJson(Map<String, dynamic> json) {
  return _SubPath.fromJson(json);
}

/// @nodoc
mixin _$SubPath {
  int get trafficType => throw _privateConstructorUsedError;
  int? get distance => throw _privateConstructorUsedError;
  int? get sectionTime => throw _privateConstructorUsedError;
  int? get stationCount => throw _privateConstructorUsedError;
  List<Lane>? get lane => throw _privateConstructorUsedError;
  int? get intervalTime => throw _privateConstructorUsedError;
  String? get startName => throw _privateConstructorUsedError;
  double? get startX => throw _privateConstructorUsedError;
  double? get startY => throw _privateConstructorUsedError;
  String? get endName => throw _privateConstructorUsedError;
  double? get endX => throw _privateConstructorUsedError;
  double? get endY => throw _privateConstructorUsedError;
  String? get way => throw _privateConstructorUsedError;
  int? get wayCode => throw _privateConstructorUsedError;
  String? get door => throw _privateConstructorUsedError;
  int? get startID => throw _privateConstructorUsedError;
  int? get endID => throw _privateConstructorUsedError;
  String? get startExitNo => throw _privateConstructorUsedError;
  double? get startExitX => throw _privateConstructorUsedError;
  double? get startExitY => throw _privateConstructorUsedError;
  PassStopList? get passStopList => throw _privateConstructorUsedError;

  /// Serializes this SubPath to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubPathCopyWith<SubPath> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubPathCopyWith<$Res> {
  factory $SubPathCopyWith(SubPath value, $Res Function(SubPath) then) =
      _$SubPathCopyWithImpl<$Res, SubPath>;
  @useResult
  $Res call(
      {int trafficType,
      int? distance,
      int? sectionTime,
      int? stationCount,
      List<Lane>? lane,
      int? intervalTime,
      String? startName,
      double? startX,
      double? startY,
      String? endName,
      double? endX,
      double? endY,
      String? way,
      int? wayCode,
      String? door,
      int? startID,
      int? endID,
      String? startExitNo,
      double? startExitX,
      double? startExitY,
      PassStopList? passStopList});

  $PassStopListCopyWith<$Res>? get passStopList;
}

/// @nodoc
class _$SubPathCopyWithImpl<$Res, $Val extends SubPath>
    implements $SubPathCopyWith<$Res> {
  _$SubPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trafficType = null,
    Object? distance = freezed,
    Object? sectionTime = freezed,
    Object? stationCount = freezed,
    Object? lane = freezed,
    Object? intervalTime = freezed,
    Object? startName = freezed,
    Object? startX = freezed,
    Object? startY = freezed,
    Object? endName = freezed,
    Object? endX = freezed,
    Object? endY = freezed,
    Object? way = freezed,
    Object? wayCode = freezed,
    Object? door = freezed,
    Object? startID = freezed,
    Object? endID = freezed,
    Object? startExitNo = freezed,
    Object? startExitX = freezed,
    Object? startExitY = freezed,
    Object? passStopList = freezed,
  }) {
    return _then(_value.copyWith(
      trafficType: null == trafficType
          ? _value.trafficType
          : trafficType // ignore: cast_nullable_to_non_nullable
              as int,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      sectionTime: freezed == sectionTime
          ? _value.sectionTime
          : sectionTime // ignore: cast_nullable_to_non_nullable
              as int?,
      stationCount: freezed == stationCount
          ? _value.stationCount
          : stationCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lane: freezed == lane
          ? _value.lane
          : lane // ignore: cast_nullable_to_non_nullable
              as List<Lane>?,
      intervalTime: freezed == intervalTime
          ? _value.intervalTime
          : intervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      startName: freezed == startName
          ? _value.startName
          : startName // ignore: cast_nullable_to_non_nullable
              as String?,
      startX: freezed == startX
          ? _value.startX
          : startX // ignore: cast_nullable_to_non_nullable
              as double?,
      startY: freezed == startY
          ? _value.startY
          : startY // ignore: cast_nullable_to_non_nullable
              as double?,
      endName: freezed == endName
          ? _value.endName
          : endName // ignore: cast_nullable_to_non_nullable
              as String?,
      endX: freezed == endX
          ? _value.endX
          : endX // ignore: cast_nullable_to_non_nullable
              as double?,
      endY: freezed == endY
          ? _value.endY
          : endY // ignore: cast_nullable_to_non_nullable
              as double?,
      way: freezed == way
          ? _value.way
          : way // ignore: cast_nullable_to_non_nullable
              as String?,
      wayCode: freezed == wayCode
          ? _value.wayCode
          : wayCode // ignore: cast_nullable_to_non_nullable
              as int?,
      door: freezed == door
          ? _value.door
          : door // ignore: cast_nullable_to_non_nullable
              as String?,
      startID: freezed == startID
          ? _value.startID
          : startID // ignore: cast_nullable_to_non_nullable
              as int?,
      endID: freezed == endID
          ? _value.endID
          : endID // ignore: cast_nullable_to_non_nullable
              as int?,
      startExitNo: freezed == startExitNo
          ? _value.startExitNo
          : startExitNo // ignore: cast_nullable_to_non_nullable
              as String?,
      startExitX: freezed == startExitX
          ? _value.startExitX
          : startExitX // ignore: cast_nullable_to_non_nullable
              as double?,
      startExitY: freezed == startExitY
          ? _value.startExitY
          : startExitY // ignore: cast_nullable_to_non_nullable
              as double?,
      passStopList: freezed == passStopList
          ? _value.passStopList
          : passStopList // ignore: cast_nullable_to_non_nullable
              as PassStopList?,
    ) as $Val);
  }

  /// Create a copy of SubPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassStopListCopyWith<$Res>? get passStopList {
    if (_value.passStopList == null) {
      return null;
    }

    return $PassStopListCopyWith<$Res>(_value.passStopList!, (value) {
      return _then(_value.copyWith(passStopList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubPathImplCopyWith<$Res> implements $SubPathCopyWith<$Res> {
  factory _$$SubPathImplCopyWith(
          _$SubPathImpl value, $Res Function(_$SubPathImpl) then) =
      __$$SubPathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int trafficType,
      int? distance,
      int? sectionTime,
      int? stationCount,
      List<Lane>? lane,
      int? intervalTime,
      String? startName,
      double? startX,
      double? startY,
      String? endName,
      double? endX,
      double? endY,
      String? way,
      int? wayCode,
      String? door,
      int? startID,
      int? endID,
      String? startExitNo,
      double? startExitX,
      double? startExitY,
      PassStopList? passStopList});

  @override
  $PassStopListCopyWith<$Res>? get passStopList;
}

/// @nodoc
class __$$SubPathImplCopyWithImpl<$Res>
    extends _$SubPathCopyWithImpl<$Res, _$SubPathImpl>
    implements _$$SubPathImplCopyWith<$Res> {
  __$$SubPathImplCopyWithImpl(
      _$SubPathImpl _value, $Res Function(_$SubPathImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trafficType = null,
    Object? distance = freezed,
    Object? sectionTime = freezed,
    Object? stationCount = freezed,
    Object? lane = freezed,
    Object? intervalTime = freezed,
    Object? startName = freezed,
    Object? startX = freezed,
    Object? startY = freezed,
    Object? endName = freezed,
    Object? endX = freezed,
    Object? endY = freezed,
    Object? way = freezed,
    Object? wayCode = freezed,
    Object? door = freezed,
    Object? startID = freezed,
    Object? endID = freezed,
    Object? startExitNo = freezed,
    Object? startExitX = freezed,
    Object? startExitY = freezed,
    Object? passStopList = freezed,
  }) {
    return _then(_$SubPathImpl(
      trafficType: null == trafficType
          ? _value.trafficType
          : trafficType // ignore: cast_nullable_to_non_nullable
              as int,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      sectionTime: freezed == sectionTime
          ? _value.sectionTime
          : sectionTime // ignore: cast_nullable_to_non_nullable
              as int?,
      stationCount: freezed == stationCount
          ? _value.stationCount
          : stationCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lane: freezed == lane
          ? _value._lane
          : lane // ignore: cast_nullable_to_non_nullable
              as List<Lane>?,
      intervalTime: freezed == intervalTime
          ? _value.intervalTime
          : intervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      startName: freezed == startName
          ? _value.startName
          : startName // ignore: cast_nullable_to_non_nullable
              as String?,
      startX: freezed == startX
          ? _value.startX
          : startX // ignore: cast_nullable_to_non_nullable
              as double?,
      startY: freezed == startY
          ? _value.startY
          : startY // ignore: cast_nullable_to_non_nullable
              as double?,
      endName: freezed == endName
          ? _value.endName
          : endName // ignore: cast_nullable_to_non_nullable
              as String?,
      endX: freezed == endX
          ? _value.endX
          : endX // ignore: cast_nullable_to_non_nullable
              as double?,
      endY: freezed == endY
          ? _value.endY
          : endY // ignore: cast_nullable_to_non_nullable
              as double?,
      way: freezed == way
          ? _value.way
          : way // ignore: cast_nullable_to_non_nullable
              as String?,
      wayCode: freezed == wayCode
          ? _value.wayCode
          : wayCode // ignore: cast_nullable_to_non_nullable
              as int?,
      door: freezed == door
          ? _value.door
          : door // ignore: cast_nullable_to_non_nullable
              as String?,
      startID: freezed == startID
          ? _value.startID
          : startID // ignore: cast_nullable_to_non_nullable
              as int?,
      endID: freezed == endID
          ? _value.endID
          : endID // ignore: cast_nullable_to_non_nullable
              as int?,
      startExitNo: freezed == startExitNo
          ? _value.startExitNo
          : startExitNo // ignore: cast_nullable_to_non_nullable
              as String?,
      startExitX: freezed == startExitX
          ? _value.startExitX
          : startExitX // ignore: cast_nullable_to_non_nullable
              as double?,
      startExitY: freezed == startExitY
          ? _value.startExitY
          : startExitY // ignore: cast_nullable_to_non_nullable
              as double?,
      passStopList: freezed == passStopList
          ? _value.passStopList
          : passStopList // ignore: cast_nullable_to_non_nullable
              as PassStopList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubPathImpl implements _SubPath {
  const _$SubPathImpl(
      {required this.trafficType,
      this.distance,
      this.sectionTime,
      this.stationCount,
      final List<Lane>? lane,
      this.intervalTime,
      this.startName,
      this.startX,
      this.startY,
      this.endName,
      this.endX,
      this.endY,
      this.way,
      this.wayCode,
      this.door,
      this.startID,
      this.endID,
      this.startExitNo,
      this.startExitX,
      this.startExitY,
      this.passStopList})
      : _lane = lane;

  factory _$SubPathImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubPathImplFromJson(json);

  @override
  final int trafficType;
  @override
  final int? distance;
  @override
  final int? sectionTime;
  @override
  final int? stationCount;
  final List<Lane>? _lane;
  @override
  List<Lane>? get lane {
    final value = _lane;
    if (value == null) return null;
    if (_lane is EqualUnmodifiableListView) return _lane;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? intervalTime;
  @override
  final String? startName;
  @override
  final double? startX;
  @override
  final double? startY;
  @override
  final String? endName;
  @override
  final double? endX;
  @override
  final double? endY;
  @override
  final String? way;
  @override
  final int? wayCode;
  @override
  final String? door;
  @override
  final int? startID;
  @override
  final int? endID;
  @override
  final String? startExitNo;
  @override
  final double? startExitX;
  @override
  final double? startExitY;
  @override
  final PassStopList? passStopList;

  @override
  String toString() {
    return 'SubPath(trafficType: $trafficType, distance: $distance, sectionTime: $sectionTime, stationCount: $stationCount, lane: $lane, intervalTime: $intervalTime, startName: $startName, startX: $startX, startY: $startY, endName: $endName, endX: $endX, endY: $endY, way: $way, wayCode: $wayCode, door: $door, startID: $startID, endID: $endID, startExitNo: $startExitNo, startExitX: $startExitX, startExitY: $startExitY, passStopList: $passStopList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubPathImpl &&
            (identical(other.trafficType, trafficType) ||
                other.trafficType == trafficType) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.sectionTime, sectionTime) ||
                other.sectionTime == sectionTime) &&
            (identical(other.stationCount, stationCount) ||
                other.stationCount == stationCount) &&
            const DeepCollectionEquality().equals(other._lane, _lane) &&
            (identical(other.intervalTime, intervalTime) ||
                other.intervalTime == intervalTime) &&
            (identical(other.startName, startName) ||
                other.startName == startName) &&
            (identical(other.startX, startX) || other.startX == startX) &&
            (identical(other.startY, startY) || other.startY == startY) &&
            (identical(other.endName, endName) || other.endName == endName) &&
            (identical(other.endX, endX) || other.endX == endX) &&
            (identical(other.endY, endY) || other.endY == endY) &&
            (identical(other.way, way) || other.way == way) &&
            (identical(other.wayCode, wayCode) || other.wayCode == wayCode) &&
            (identical(other.door, door) || other.door == door) &&
            (identical(other.startID, startID) || other.startID == startID) &&
            (identical(other.endID, endID) || other.endID == endID) &&
            (identical(other.startExitNo, startExitNo) ||
                other.startExitNo == startExitNo) &&
            (identical(other.startExitX, startExitX) ||
                other.startExitX == startExitX) &&
            (identical(other.startExitY, startExitY) ||
                other.startExitY == startExitY) &&
            (identical(other.passStopList, passStopList) ||
                other.passStopList == passStopList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        trafficType,
        distance,
        sectionTime,
        stationCount,
        const DeepCollectionEquality().hash(_lane),
        intervalTime,
        startName,
        startX,
        startY,
        endName,
        endX,
        endY,
        way,
        wayCode,
        door,
        startID,
        endID,
        startExitNo,
        startExitX,
        startExitY,
        passStopList
      ]);

  /// Create a copy of SubPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubPathImplCopyWith<_$SubPathImpl> get copyWith =>
      __$$SubPathImplCopyWithImpl<_$SubPathImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubPathImplToJson(
      this,
    );
  }
}

abstract class _SubPath implements SubPath {
  const factory _SubPath(
      {required final int trafficType,
      final int? distance,
      final int? sectionTime,
      final int? stationCount,
      final List<Lane>? lane,
      final int? intervalTime,
      final String? startName,
      final double? startX,
      final double? startY,
      final String? endName,
      final double? endX,
      final double? endY,
      final String? way,
      final int? wayCode,
      final String? door,
      final int? startID,
      final int? endID,
      final String? startExitNo,
      final double? startExitX,
      final double? startExitY,
      final PassStopList? passStopList}) = _$SubPathImpl;

  factory _SubPath.fromJson(Map<String, dynamic> json) = _$SubPathImpl.fromJson;

  @override
  int get trafficType;
  @override
  int? get distance;
  @override
  int? get sectionTime;
  @override
  int? get stationCount;
  @override
  List<Lane>? get lane;
  @override
  int? get intervalTime;
  @override
  String? get startName;
  @override
  double? get startX;
  @override
  double? get startY;
  @override
  String? get endName;
  @override
  double? get endX;
  @override
  double? get endY;
  @override
  String? get way;
  @override
  int? get wayCode;
  @override
  String? get door;
  @override
  int? get startID;
  @override
  int? get endID;
  @override
  String? get startExitNo;
  @override
  double? get startExitX;
  @override
  double? get startExitY;
  @override
  PassStopList? get passStopList;

  /// Create a copy of SubPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubPathImplCopyWith<_$SubPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lane _$LaneFromJson(Map<String, dynamic> json) {
  return _Lane.fromJson(json);
}

/// @nodoc
mixin _$Lane {
  String? get busNo => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  int? get busID => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get subwayCode => throw _privateConstructorUsedError;
  int? get subwayCityCode => throw _privateConstructorUsedError;

  /// Serializes this Lane to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lane
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaneCopyWith<Lane> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaneCopyWith<$Res> {
  factory $LaneCopyWith(Lane value, $Res Function(Lane) then) =
      _$LaneCopyWithImpl<$Res, Lane>;
  @useResult
  $Res call(
      {String? busNo,
      int? type,
      int? busID,
      String? name,
      int? subwayCode,
      int? subwayCityCode});
}

/// @nodoc
class _$LaneCopyWithImpl<$Res, $Val extends Lane>
    implements $LaneCopyWith<$Res> {
  _$LaneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lane
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? busNo = freezed,
    Object? type = freezed,
    Object? busID = freezed,
    Object? name = freezed,
    Object? subwayCode = freezed,
    Object? subwayCityCode = freezed,
  }) {
    return _then(_value.copyWith(
      busNo: freezed == busNo
          ? _value.busNo
          : busNo // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      busID: freezed == busID
          ? _value.busID
          : busID // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subwayCode: freezed == subwayCode
          ? _value.subwayCode
          : subwayCode // ignore: cast_nullable_to_non_nullable
              as int?,
      subwayCityCode: freezed == subwayCityCode
          ? _value.subwayCityCode
          : subwayCityCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaneImplCopyWith<$Res> implements $LaneCopyWith<$Res> {
  factory _$$LaneImplCopyWith(
          _$LaneImpl value, $Res Function(_$LaneImpl) then) =
      __$$LaneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? busNo,
      int? type,
      int? busID,
      String? name,
      int? subwayCode,
      int? subwayCityCode});
}

/// @nodoc
class __$$LaneImplCopyWithImpl<$Res>
    extends _$LaneCopyWithImpl<$Res, _$LaneImpl>
    implements _$$LaneImplCopyWith<$Res> {
  __$$LaneImplCopyWithImpl(_$LaneImpl _value, $Res Function(_$LaneImpl) _then)
      : super(_value, _then);

  /// Create a copy of Lane
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? busNo = freezed,
    Object? type = freezed,
    Object? busID = freezed,
    Object? name = freezed,
    Object? subwayCode = freezed,
    Object? subwayCityCode = freezed,
  }) {
    return _then(_$LaneImpl(
      busNo: freezed == busNo
          ? _value.busNo
          : busNo // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      busID: freezed == busID
          ? _value.busID
          : busID // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      subwayCode: freezed == subwayCode
          ? _value.subwayCode
          : subwayCode // ignore: cast_nullable_to_non_nullable
              as int?,
      subwayCityCode: freezed == subwayCityCode
          ? _value.subwayCityCode
          : subwayCityCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaneImpl implements _Lane {
  const _$LaneImpl(
      {this.busNo,
      this.type,
      this.busID,
      this.name,
      this.subwayCode,
      this.subwayCityCode});

  factory _$LaneImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaneImplFromJson(json);

  @override
  final String? busNo;
  @override
  final int? type;
  @override
  final int? busID;
  @override
  final String? name;
  @override
  final int? subwayCode;
  @override
  final int? subwayCityCode;

  @override
  String toString() {
    return 'Lane(busNo: $busNo, type: $type, busID: $busID, name: $name, subwayCode: $subwayCode, subwayCityCode: $subwayCityCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaneImpl &&
            (identical(other.busNo, busNo) || other.busNo == busNo) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.busID, busID) || other.busID == busID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subwayCode, subwayCode) ||
                other.subwayCode == subwayCode) &&
            (identical(other.subwayCityCode, subwayCityCode) ||
                other.subwayCityCode == subwayCityCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, busNo, type, busID, name, subwayCode, subwayCityCode);

  /// Create a copy of Lane
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaneImplCopyWith<_$LaneImpl> get copyWith =>
      __$$LaneImplCopyWithImpl<_$LaneImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaneImplToJson(
      this,
    );
  }
}

abstract class _Lane implements Lane {
  const factory _Lane(
      {final String? busNo,
      final int? type,
      final int? busID,
      final String? name,
      final int? subwayCode,
      final int? subwayCityCode}) = _$LaneImpl;

  factory _Lane.fromJson(Map<String, dynamic> json) = _$LaneImpl.fromJson;

  @override
  String? get busNo;
  @override
  int? get type;
  @override
  int? get busID;
  @override
  String? get name;
  @override
  int? get subwayCode;
  @override
  int? get subwayCityCode;

  /// Create a copy of Lane
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaneImplCopyWith<_$LaneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PassStopList _$PassStopListFromJson(Map<String, dynamic> json) {
  return _PassStopList.fromJson(json);
}

/// @nodoc
mixin _$PassStopList {
  List<Station> get stations => throw _privateConstructorUsedError;

  /// Serializes this PassStopList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PassStopList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassStopListCopyWith<PassStopList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassStopListCopyWith<$Res> {
  factory $PassStopListCopyWith(
          PassStopList value, $Res Function(PassStopList) then) =
      _$PassStopListCopyWithImpl<$Res, PassStopList>;
  @useResult
  $Res call({List<Station> stations});
}

/// @nodoc
class _$PassStopListCopyWithImpl<$Res, $Val extends PassStopList>
    implements $PassStopListCopyWith<$Res> {
  _$PassStopListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassStopList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stations = null,
  }) {
    return _then(_value.copyWith(
      stations: null == stations
          ? _value.stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<Station>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PassStopListImplCopyWith<$Res>
    implements $PassStopListCopyWith<$Res> {
  factory _$$PassStopListImplCopyWith(
          _$PassStopListImpl value, $Res Function(_$PassStopListImpl) then) =
      __$$PassStopListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Station> stations});
}

/// @nodoc
class __$$PassStopListImplCopyWithImpl<$Res>
    extends _$PassStopListCopyWithImpl<$Res, _$PassStopListImpl>
    implements _$$PassStopListImplCopyWith<$Res> {
  __$$PassStopListImplCopyWithImpl(
      _$PassStopListImpl _value, $Res Function(_$PassStopListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassStopList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stations = null,
  }) {
    return _then(_$PassStopListImpl(
      stations: null == stations
          ? _value._stations
          : stations // ignore: cast_nullable_to_non_nullable
              as List<Station>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PassStopListImpl implements _PassStopList {
  const _$PassStopListImpl({required final List<Station> stations})
      : _stations = stations;

  factory _$PassStopListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassStopListImplFromJson(json);

  final List<Station> _stations;
  @override
  List<Station> get stations {
    if (_stations is EqualUnmodifiableListView) return _stations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stations);
  }

  @override
  String toString() {
    return 'PassStopList(stations: $stations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassStopListImpl &&
            const DeepCollectionEquality().equals(other._stations, _stations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stations));

  /// Create a copy of PassStopList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassStopListImplCopyWith<_$PassStopListImpl> get copyWith =>
      __$$PassStopListImplCopyWithImpl<_$PassStopListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassStopListImplToJson(
      this,
    );
  }
}

abstract class _PassStopList implements PassStopList {
  const factory _PassStopList({required final List<Station> stations}) =
      _$PassStopListImpl;

  factory _PassStopList.fromJson(Map<String, dynamic> json) =
      _$PassStopListImpl.fromJson;

  @override
  List<Station> get stations;

  /// Create a copy of PassStopList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassStopListImplCopyWith<_$PassStopListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  int get index => throw _privateConstructorUsedError;
  int get stationID => throw _privateConstructorUsedError;
  String get stationName => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;

  /// Serializes this Station to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res, Station>;
  @useResult
  $Res call({int index, int stationID, String stationName, String x, String y});
}

/// @nodoc
class _$StationCopyWithImpl<$Res, $Val extends Station>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? stationID = null,
    Object? stationName = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      stationID: null == stationID
          ? _value.stationID
          : stationID // ignore: cast_nullable_to_non_nullable
              as int,
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StationImplCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$StationImplCopyWith(
          _$StationImpl value, $Res Function(_$StationImpl) then) =
      __$$StationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, int stationID, String stationName, String x, String y});
}

/// @nodoc
class __$$StationImplCopyWithImpl<$Res>
    extends _$StationCopyWithImpl<$Res, _$StationImpl>
    implements _$$StationImplCopyWith<$Res> {
  __$$StationImplCopyWithImpl(
      _$StationImpl _value, $Res Function(_$StationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? stationID = null,
    Object? stationName = null,
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$StationImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      stationID: null == stationID
          ? _value.stationID
          : stationID // ignore: cast_nullable_to_non_nullable
              as int,
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StationImpl implements _Station {
  const _$StationImpl(
      {required this.index,
      required this.stationID,
      required this.stationName,
      required this.x,
      required this.y});

  factory _$StationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationImplFromJson(json);

  @override
  final int index;
  @override
  final int stationID;
  @override
  final String stationName;
  @override
  final String x;
  @override
  final String y;

  @override
  String toString() {
    return 'Station(index: $index, stationID: $stationID, stationName: $stationName, x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.stationID, stationID) ||
                other.stationID == stationID) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, index, stationID, stationName, x, y);

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      __$$StationImplCopyWithImpl<_$StationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationImplToJson(
      this,
    );
  }
}

abstract class _Station implements Station {
  const factory _Station(
      {required final int index,
      required final int stationID,
      required final String stationName,
      required final String x,
      required final String y}) = _$StationImpl;

  factory _Station.fromJson(Map<String, dynamic> json) = _$StationImpl.fromJson;

  @override
  int get index;
  @override
  int get stationID;
  @override
  String get stationName;
  @override
  String get x;
  @override
  String get y;

  /// Create a copy of Station
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
