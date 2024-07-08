// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_map_coordinates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MapCoordinatesImpl _$$MapCoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$MapCoordinatesImpl(
      statX: (json['statX'] as num).toDouble(),
      statY: (json['statY'] as num).toDouble(),
      endX: (json['endX'] as num).toDouble(),
      endY: (json['endY'] as num).toDouble(),
    );

Map<String, dynamic> _$$MapCoordinatesImplToJson(
        _$MapCoordinatesImpl instance) =>
    <String, dynamic>{
      'statX': instance.statX,
      'statY': instance.statY,
      'endX': instance.endX,
      'endY': instance.endY,
    };
