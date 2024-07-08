// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShareItineraryImpl _$$ShareItineraryImplFromJson(Map<String, dynamic> json) =>
    _$ShareItineraryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      area: json['area'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      placeLength: (json['placeLength'] as num).toInt(),
      sharedAccount: (json['sharedAccount'] as num).toInt(),
      diary: json['diary'] as bool,
    );

Map<String, dynamic> _$$ShareItineraryImplToJson(
        _$ShareItineraryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'area': instance.area,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'placeLength': instance.placeLength,
      'sharedAccount': instance.sharedAccount,
      'diary': instance.diary,
    };
