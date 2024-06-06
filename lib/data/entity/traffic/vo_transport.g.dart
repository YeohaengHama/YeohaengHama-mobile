// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_transport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrafficInfoImpl _$$TrafficInfoImplFromJson(Map<String, dynamic> json) =>
    _$TrafficInfoImpl(
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrafficInfoImplToJson(_$TrafficInfoImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      searchType: (json['searchType'] as num?)?.toInt(),
      outTrafficCheck: (json['outTrafficCheck'] as num?)?.toInt(),
      busCount: (json['busCount'] as num?)?.toInt(),
      subwayCount: (json['subwayCount'] as num?)?.toInt(),
      subwayBusCount: (json['subwayBusCount'] as num?)?.toInt(),
      pointDistance: (json['pointDistance'] as num).toInt(),
      startRadius: (json['startRadius'] as num).toInt(),
      endRadius: (json['endRadius'] as num).toInt(),
      path: (json['path'] as List<dynamic>)
          .map((e) => Path.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'searchType': instance.searchType,
      'outTrafficCheck': instance.outTrafficCheck,
      'busCount': instance.busCount,
      'subwayCount': instance.subwayCount,
      'subwayBusCount': instance.subwayBusCount,
      'pointDistance': instance.pointDistance,
      'startRadius': instance.startRadius,
      'endRadius': instance.endRadius,
      'path': instance.path,
    };

_$PathImpl _$$PathImplFromJson(Map<String, dynamic> json) => _$PathImpl(
      pathType: (json['pathType'] as num).toInt(),
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      subPath: (json['subPath'] as List<dynamic>?)
          ?.map((e) => SubPath.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PathImplToJson(_$PathImpl instance) =>
    <String, dynamic>{
      'pathType': instance.pathType,
      'info': instance.info,
      'subPath': instance.subPath,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      trafficDistance: (json['trafficDistance'] as num).toDouble(),
      totalWalk: (json['totalWalk'] as num).toInt(),
      totalTime: (json['totalTime'] as num).toInt(),
      payment: (json['payment'] as num).toInt(),
      busTransitCount: (json['busTransitCount'] as num).toInt(),
      subwayTransitCount: (json['subwayTransitCount'] as num).toInt(),
      mapObj: json['mapObj'] as String,
      firstStartStation: json['firstStartStation'] as String,
      lastEndStation: json['lastEndStation'] as String,
      totalStationCount: (json['totalStationCount'] as num).toInt(),
      busStationCount: (json['busStationCount'] as num).toInt(),
      subwayStationCount: (json['subwayStationCount'] as num).toInt(),
      totalDistance: (json['totalDistance'] as num).toDouble(),
      totalWalkTime: (json['totalWalkTime'] as num?)?.toInt(),
      checkIntervalTime: (json['checkIntervalTime'] as num?)?.toInt(),
      checkIntervalTimeOverYn: json['checkIntervalTimeOverYn'] as String?,
      totalIntervalTime: (json['totalIntervalTime'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'trafficDistance': instance.trafficDistance,
      'totalWalk': instance.totalWalk,
      'totalTime': instance.totalTime,
      'payment': instance.payment,
      'busTransitCount': instance.busTransitCount,
      'subwayTransitCount': instance.subwayTransitCount,
      'mapObj': instance.mapObj,
      'firstStartStation': instance.firstStartStation,
      'lastEndStation': instance.lastEndStation,
      'totalStationCount': instance.totalStationCount,
      'busStationCount': instance.busStationCount,
      'subwayStationCount': instance.subwayStationCount,
      'totalDistance': instance.totalDistance,
      'totalWalkTime': instance.totalWalkTime,
      'checkIntervalTime': instance.checkIntervalTime,
      'checkIntervalTimeOverYn': instance.checkIntervalTimeOverYn,
      'totalIntervalTime': instance.totalIntervalTime,
    };

_$SubPathImpl _$$SubPathImplFromJson(Map<String, dynamic> json) =>
    _$SubPathImpl(
      trafficType: (json['trafficType'] as num).toInt(),
      distance: (json['distance'] as num?)?.toInt(),
      sectionTime: (json['sectionTime'] as num?)?.toInt(),
      stationCount: (json['stationCount'] as num?)?.toInt(),
      lane: (json['lane'] as List<dynamic>?)
          ?.map((e) => Lane.fromJson(e as Map<String, dynamic>))
          .toList(),
      intervalTime: (json['intervalTime'] as num?)?.toInt(),
      startName: json['startName'] as String?,
      startX: (json['startX'] as num?)?.toDouble(),
      startY: (json['startY'] as num?)?.toDouble(),
      endName: json['endName'] as String?,
      endX: (json['endX'] as num?)?.toDouble(),
      endY: (json['endY'] as num?)?.toDouble(),
      way: json['way'] as String?,
      wayCode: (json['wayCode'] as num?)?.toInt(),
      door: json['door'] as String?,
      startID: (json['startID'] as num?)?.toInt(),
      endID: (json['endID'] as num?)?.toInt(),
      startExitNo: json['startExitNo'] as String?,
      startExitX: (json['startExitX'] as num?)?.toDouble(),
      startExitY: (json['startExitY'] as num?)?.toDouble(),
      passStopList: json['passStopList'] == null
          ? null
          : PassStopList.fromJson(json['passStopList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubPathImplToJson(_$SubPathImpl instance) =>
    <String, dynamic>{
      'trafficType': instance.trafficType,
      'distance': instance.distance,
      'sectionTime': instance.sectionTime,
      'stationCount': instance.stationCount,
      'lane': instance.lane,
      'intervalTime': instance.intervalTime,
      'startName': instance.startName,
      'startX': instance.startX,
      'startY': instance.startY,
      'endName': instance.endName,
      'endX': instance.endX,
      'endY': instance.endY,
      'way': instance.way,
      'wayCode': instance.wayCode,
      'door': instance.door,
      'startID': instance.startID,
      'endID': instance.endID,
      'startExitNo': instance.startExitNo,
      'startExitX': instance.startExitX,
      'startExitY': instance.startExitY,
      'passStopList': instance.passStopList,
    };

_$LaneImpl _$$LaneImplFromJson(Map<String, dynamic> json) => _$LaneImpl(
      busNo: json['busNo'] as String?,
      type: (json['type'] as num?)?.toInt(),
      busID: (json['busID'] as num?)?.toInt(),
      name: json['name'] as String?,
      subwayCode: (json['subwayCode'] as num?)?.toInt(),
      subwayCityCode: (json['subwayCityCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LaneImplToJson(_$LaneImpl instance) =>
    <String, dynamic>{
      'busNo': instance.busNo,
      'type': instance.type,
      'busID': instance.busID,
      'name': instance.name,
      'subwayCode': instance.subwayCode,
      'subwayCityCode': instance.subwayCityCode,
    };

_$PassStopListImpl _$$PassStopListImplFromJson(Map<String, dynamic> json) =>
    _$PassStopListImpl(
      stations: (json['stations'] as List<dynamic>)
          .map((e) => Station.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PassStopListImplToJson(_$PassStopListImpl instance) =>
    <String, dynamic>{
      'stations': instance.stations,
    };

_$StationImpl _$$StationImplFromJson(Map<String, dynamic> json) =>
    _$StationImpl(
      index: (json['index'] as num).toInt(),
      stationID: (json['stationID'] as num).toInt(),
      stationName: json['stationName'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
    );

Map<String, dynamic> _$$StationImplToJson(_$StationImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'stationID': instance.stationID,
      'stationName': instance.stationName,
      'x': instance.x,
      'y': instance.y,
    };
