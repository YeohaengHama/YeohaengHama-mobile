// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItineraryImpl _$$ItineraryImplFromJson(Map<String, dynamic> json) =>
    _$ItineraryImpl(
      name: json['name'] as String,
      type: (json['type'] as List<dynamic>).map((e) => e as String).toList(),
      itineraryStyle: (json['itineraryStyle'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      transportation: json['transportation'] as String? ?? 'bus',
      area: json['area'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      expense: json['expense'] as String? ?? '0',
    );

Map<String, dynamic> _$$ItineraryImplToJson(_$ItineraryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'itineraryStyle': instance.itineraryStyle,
      'transportation': instance.transportation,
      'area': instance.area,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'expense': instance.expense,
    };
