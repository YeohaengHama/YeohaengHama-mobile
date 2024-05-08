// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpenApiDetail _$$_OpenApiDetailFromJson(Map<String, dynamic> json) =>
    _$_OpenApiDetail(
      contentId: json['contentId'] as String,
      contentTypeId: json['contentTypeId'] as String,
      numOfRows: json['numOfRows'] as String? ?? '1',
      page: json['page'] as String? ?? '1',
      mobileOS: json['mobileOS'] as String? ?? 'IOS',
    );

Map<String, dynamic> _$$_OpenApiDetailToJson(_$_OpenApiDetail instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'numOfRows': instance.numOfRows,
      'page': instance.page,
      'mobileOS': instance.mobileOS,
    };
