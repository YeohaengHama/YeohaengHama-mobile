// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_add_pick_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPickPlaceImpl _$$AddPickPlaceImplFromJson(Map<String, dynamic> json) =>
    _$AddPickPlaceImpl(
      day: (json['day'] as num).toInt(),
      placeType: json['placeType'] as String,
      placeNum: json['placeNum'] as String,
      placeName: json['placeName'] as String?,
      addr1: json['addr1'] as String,
      mapx: (json['mapx'] as num).toDouble(),
      mapy: (json['mapy'] as num).toDouble(),
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      memo: json['memo'] as String?,
      placeId: (json['placeId'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$AddPickPlaceImplToJson(_$AddPickPlaceImpl instance) =>
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
      'placeId': instance.placeId,
      'image': instance.image,
    };
