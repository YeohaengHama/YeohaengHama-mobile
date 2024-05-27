// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiAreaImpl _$$OpenApiAreaImplFromJson(Map<String, dynamic> json) =>
    _$OpenApiAreaImpl(
      numOfRows: json['numOfRows'] as String,
      page: json['page'] as String? ?? '1',
      keyword: json['keyword'] as String,
      contentTypeId: json['contentTypeId'] as String,
      mobileOS: json['mobileOS'] as String? ?? 'IOS',
    );

Map<String, dynamic> _$$OpenApiAreaImplToJson(_$OpenApiAreaImpl instance) =>
    <String, dynamic>{
      'numOfRows': instance.numOfRows,
      'page': instance.page,
      'keyword': instance.keyword,
      'contentTypeId': instance.contentTypeId,
      'mobileOS': instance.mobileOS,
    };
