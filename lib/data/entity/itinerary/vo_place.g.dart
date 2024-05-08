// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      id: json['id'] as int,
      day: json['day'] as int,
      placeNum: json['placeNum'] as String,
      placeName: json['placeName'] as String,
      itinerary: json['itinerary'] == null
          ? null
          : Itinerary.fromJson(json['itinerary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'placeNum': instance.placeNum,
      'placeName': instance.placeName,
      'itinerary': instance.itinerary,
    };
