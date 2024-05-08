// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serch_detail_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDetailResult _$$_SearchDetailResultFromJson(
        Map<String, dynamic> json) =>
    _$_SearchDetailResult(
      contentId: json['contentId'] as String,
      contentTypeId: json['contentTypeId'] as String,
      title: json['title'] as String,
      addr1: json['addr1'] as String,
      addr2: json['addr2'] as String,
      overView: json['overView'] as String,
      mapX: json['mapX'] as String,
      mapY: json['mapY'] as String,
    );

Map<String, dynamic> _$$_SearchDetailResultToJson(
        _$_SearchDetailResult instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'title': instance.title,
      'addr1': instance.addr1,
      'addr2': instance.addr2,
      'overView': instance.overView,
      'mapX': instance.mapX,
      'mapY': instance.mapY,
    };
