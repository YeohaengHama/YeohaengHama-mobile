// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_day_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DayList _$$_DayListFromJson(Map<String, dynamic> json) => _$_DayList(
      day: json['day'] as String,
      place: (json['place'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DayListToJson(_$_DayList instance) =>
    <String, dynamic>{
      'day': instance.day,
      'place': instance.place,
    };
