// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      id: (json['id'] as num).toInt(),
      day: (json['day'] as num).toInt(),
      placeNum: json['placeNum'] as String,
      placeName: json['placeName'] as String,
      itinerary: json['itinerary'] == null
          ? null
          : Itinerary.fromJson(json['itinerary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'placeNum': instance.placeNum,
      'placeName': instance.placeName,
      'itinerary': instance.itinerary,
    };
