// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_pick_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PickPlaceImpl _$$PickPlaceImplFromJson(Map<String, dynamic> json) =>
    _$PickPlaceImpl(
      contentId: json['contentId'] as String,
      contentTypeId: json['contentTypeId'] as String,
      title: json['title'] as String,
      addr1: json['addr1'] as String,
      mapx: json['mapx'] as String,
      mapy: json['mapy'] as String,
      firstImage: json['firstImage'] as String,
    );

Map<String, dynamic> _$$PickPlaceImplToJson(_$PickPlaceImpl instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'title': instance.title,
      'addr1': instance.addr1,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
      'firstImage': instance.firstImage,
    };
