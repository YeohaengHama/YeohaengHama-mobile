// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenApiArea _$$_OpenApiAreaFromJson(Map<String, dynamic> json) =>
    _$_OpenApiArea(
      numOfRows: json['numOfRows'] as String,
      page: json['page'] as String? ?? '1',
      keyword: json['keyword'] as String,
      contentTypeId: json['contentTypeId'] as String,
      mobileOS: json['mobileOS'] as String,
    );

Map<String, dynamic> _$$_OpenApiAreaToJson(_$_OpenApiArea instance) =>
    <String, dynamic>{
      'numOfRows': instance.numOfRows,
      'page': instance.page,
      'keyword': instance.keyword,
      'contentTypeId': instance.contentTypeId,
      'mobileOS': instance.mobileOS,
    };
