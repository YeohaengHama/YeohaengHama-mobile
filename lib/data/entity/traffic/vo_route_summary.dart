import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_route_summary.freezed.dart';
part 'vo_route_summary.g.dart';


@freezed
class RoutePoint with _$RoutePoint {
  const factory RoutePoint({
    required double latitude,
    required double longitude,
  }) = _RoutePoint;

  factory RoutePoint.fromJson(Map<String, dynamic> json) => _$RoutePointFromJson(json);
}

@freezed
class RouteSummary with _$RouteSummary {
  const factory RouteSummary({
    required List<RoutePoint> path,
    required int duration,
    required int distance,
    required int taxiFare,
  }) = _RouteSummary;

  factory RouteSummary.fromJson(Map<String, dynamic> json) => _$RouteSummaryFromJson(json);
}

@freezed
class CarTrafficInfo with _$CarTrafficInfo {
  const factory CarTrafficInfo({
    required List<RouteSummary> trafast,
  }) = _CarTrafficInfo;

  factory CarTrafficInfo.fromJson(Map<String, dynamic> json) => _$CarTrafficInfoFromJson(json);
}
