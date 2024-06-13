import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_transport.freezed.dart';
part 'vo_transport.g.dart';

@freezed
class TrafficInfo with _$TrafficInfo {
  const factory TrafficInfo({
    required Result result,
  }) = _TrafficInfo;

  factory TrafficInfo.fromJson(Map<String, dynamic> json) => _$TrafficInfoFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? searchType,
    int? outTrafficCheck,
    int? busCount,
    int? subwayCount,
    int? subwayBusCount,
    required int pointDistance,
    required int startRadius,
    required int endRadius,
    required List<Path> path,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Path with _$Path {
  const factory Path({
    required int pathType,
    required Info info,
    required List<SubPath>? subPath,
  }) = _Path;

  factory Path.fromJson(Map<String, dynamic> json) => _$PathFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required double trafficDistance,
    required int totalWalk,
    required int totalTime,
    required int payment,
    required int busTransitCount,
    required int subwayTransitCount,
    required String mapObj,
    required String firstStartStation,
    required String lastEndStation,
    required int totalStationCount,
    required int busStationCount,
    required int subwayStationCount,
    required double totalDistance,
    int? totalWalkTime,
    int? checkIntervalTime,
    String? checkIntervalTimeOverYn,
    int? totalIntervalTime,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class SubPath with _$SubPath {
  const factory SubPath({
    required int trafficType,
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
    PassStopList? passStopList,
  }) = _SubPath;

  factory SubPath.fromJson(Map<String, dynamic> json) => _$SubPathFromJson(json);
}

@freezed
class Lane with _$Lane {
  const factory Lane({
     String? busNo,
     int? type,
     int? busID,
     String? name,
     int? subwayCode,
     int? subwayCityCode,
  }) = _Lane;

  factory Lane.fromJson(Map<String, dynamic> json) => _$LaneFromJson(json);
}

@freezed
class PassStopList with _$PassStopList {
  const factory PassStopList({
    required List<Station> stations,
  }) = _PassStopList;

  factory PassStopList.fromJson(Map<String, dynamic> json) => _$PassStopListFromJson(json);
}

@freezed
class Station with _$Station {
  const factory Station({
    required int index,
    required int stationID,
    required String stationName,
    required String x,
    required String y,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) => _$StationFromJson(json);
}
