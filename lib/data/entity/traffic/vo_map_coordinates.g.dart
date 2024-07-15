// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_map_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapCoordinatesImpl _$$MapCoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$MapCoordinatesImpl(
      startTitle: json['startTitle'] as String,
      startX: (json['startX'] as num).toDouble(),
      startY: (json['startY'] as num).toDouble(),
      endTitle: json['endTitle'] as String,
      endX: (json['endX'] as num).toDouble(),
      endY: (json['endY'] as num).toDouble(),
    );

Map<String, dynamic> _$$MapCoordinatesImplToJson(
        _$MapCoordinatesImpl instance) =>
    <String, dynamic>{
      'startTitle': instance.startTitle,
      'startX': instance.startX,
      'startY': instance.startY,
      'endTitle': instance.endTitle,
      'endX': instance.endX,
      'endY': instance.endY,
    };
