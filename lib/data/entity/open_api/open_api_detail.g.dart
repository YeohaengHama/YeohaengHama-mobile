// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiDetailImpl _$$OpenApiDetailImplFromJson(Map<String, dynamic> json) =>
    _$OpenApiDetailImpl(
      contentId: json['contentId'] as String,
      contentTypeId: json['contentTypeId'] as String,
      numOfRows: json['numOfRows'] as String? ?? '1',
      page: json['page'] as String? ?? '1',
      mobileOS: json['mobileOS'] as String? ?? 'IOS',
    );

Map<String, dynamic> _$$OpenApiDetailImplToJson(_$OpenApiDetailImpl instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'numOfRows': instance.numOfRows,
      'page': instance.page,
      'mobileOS': instance.mobileOS,
    };
