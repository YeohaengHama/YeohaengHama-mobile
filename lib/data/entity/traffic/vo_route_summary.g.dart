// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_route_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoutePointImpl _$$RoutePointImplFromJson(Map<String, dynamic> json) =>
    _$RoutePointImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$RoutePointImplToJson(_$RoutePointImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$RouteSummaryImpl _$$RouteSummaryImplFromJson(Map<String, dynamic> json) =>
    _$RouteSummaryImpl(
      path: (json['path'] as List<dynamic>)
          .map((e) => RoutePoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      duration: (json['duration'] as num).toInt(),
      distance: (json['distance'] as num).toInt(),
      taxiFare: (json['taxiFare'] as num).toInt(),
    );

Map<String, dynamic> _$$RouteSummaryImplToJson(_$RouteSummaryImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'duration': instance.duration,
      'distance': instance.distance,
      'taxiFare': instance.taxiFare,
    };

_$CarTrafficInfoImpl _$$CarTrafficInfoImplFromJson(Map<String, dynamic> json) =>
    _$CarTrafficInfoImpl(
      trafast: (json['trafast'] as List<dynamic>)
          .map((e) => RouteSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CarTrafficInfoImplToJson(
        _$CarTrafficInfoImpl instance) =>
    <String, dynamic>{
      'trafast': instance.trafast,
    };
