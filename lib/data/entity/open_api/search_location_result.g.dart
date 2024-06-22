// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchLocationResultImpl _$$SearchLocationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchLocationResultImpl(
      addr1: json['addr1'] as String,
      addr2: json['addr2'] as String,
      contentid: json['contentid'] as String,
      contenttypeid: json['contenttypeid'] as String,
      firstimage: json['firstimage'] as String,
      mapx: json['mapx'] as String,
      mapy: json['mapy'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$SearchLocationResultImplToJson(
        _$SearchLocationResultImpl instance) =>
    <String, dynamic>{
      'addr1': instance.addr1,
      'addr2': instance.addr2,
      'contentid': instance.contentid,
      'contenttypeid': instance.contenttypeid,
      'firstimage': instance.firstimage,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
      'title': instance.title,
    };
