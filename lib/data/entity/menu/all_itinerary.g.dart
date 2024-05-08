// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllItinerary _$$_AllItineraryFromJson(Map<String, dynamic> json) =>
    _$_AllItinerary(
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      placeLength: json['placeLength'] as int,
    );

Map<String, dynamic> _$$_AllItineraryToJson(_$_AllItinerary instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'id': instance.id,
      'name': instance.name,
      'placeLength': instance.placeLength,
    };
