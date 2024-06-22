// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_area_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiAreaLocationImpl _$$OpenApiAreaLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiAreaLocationImpl(
      numOfRows: json['numOfRows'] as String? ?? '1',
      page: json['page'] as String? ?? '1',
      mapX: json['mapX'] as String,
      mapY: json['mapY'] as String,
      radius: (json['radius'] as num).toInt(),
      contentTypeId: json['contentTypeId'] as String,
      mobileOS: json['mobileOS'] as String? ?? 'IOS',
    );

Map<String, dynamic> _$$OpenApiAreaLocationImplToJson(
        _$OpenApiAreaLocationImpl instance) =>
    <String, dynamic>{
      'numOfRows': instance.numOfRows,
      'page': instance.page,
      'mapX': instance.mapX,
      'mapY': instance.mapY,
      'radius': instance.radius,
      'contentTypeId': instance.contentTypeId,
      'mobileOS': instance.mobileOS,
    };
