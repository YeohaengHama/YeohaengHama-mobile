// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllItineraryImpl _$$AllItineraryImplFromJson(Map<String, dynamic> json) =>
    _$AllItineraryImpl(
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      area: json['area'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      placeLength: (json['placeLength'] as num).toInt(),
      sharedAccount: (json['sharedAccount'] as num).toInt(),
      diary: json['diary'] as bool,
    );

Map<String, dynamic> _$$AllItineraryImplToJson(_$AllItineraryImpl instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'area': instance.area,
      'id': instance.id,
      'name': instance.name,
      'placeLength': instance.placeLength,
      'sharedAccount': instance.sharedAccount,
      'diary': instance.diary,
    };
