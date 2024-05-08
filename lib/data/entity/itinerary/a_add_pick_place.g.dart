// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_add_pick_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddPickPlace _$$_AddPickPlaceFromJson(Map<String, dynamic> json) =>
    _$_AddPickPlace(
      day: json['day'] as int,
      placeType: json['placeType'] as String,
      placeNum: json['placeNum'] as String,
      placeName: json['placeName'] as String?,
      addr1: json['addr1'] as String,
      mapx: (json['mapx'] as num).toDouble(),
      mapy: (json['mapy'] as num).toDouble(),
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$$_AddPickPlaceToJson(_$_AddPickPlace instance) =>
    <String, dynamic>{
      'day': instance.day,
      'placeType': instance.placeType,
      'placeNum': instance.placeNum,
      'placeName': instance.placeName,
      'addr1': instance.addr1,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'memo': instance.memo,
    };
