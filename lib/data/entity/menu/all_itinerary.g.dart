// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllItineraryImpl _$$AllItineraryImplFromJson(Map<String, dynamic> json) =>
    _$AllItineraryImpl(
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      placeLength: (json['placeLength'] as num).toInt(),
    );

Map<String, dynamic> _$$AllItineraryImplToJson(_$AllItineraryImpl instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'id': instance.id,
      'name': instance.name,
      'placeLength': instance.placeLength,
    };
