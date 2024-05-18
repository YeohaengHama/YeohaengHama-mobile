// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_day_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayListImpl _$$DayListImplFromJson(Map<String, dynamic> json) =>
    _$DayListImpl(
      day: json['day'] as String,
      place: (json['place'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DayListImplToJson(_$DayListImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'place': instance.place,
    };
