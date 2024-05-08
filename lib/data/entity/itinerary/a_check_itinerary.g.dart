// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_check_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
    };

PlaceByDay _$PlaceByDayFromJson(Map<String, dynamic> json) => PlaceByDay(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      placeType: json['placeType'] as String,
      placeNum: json['placeNum'] as String,
      placeName: json['placeName'] as String,
      memo: json['memo'] as String,
      placeId: json['placeId'] as int,
    );

Map<String, dynamic> _$PlaceByDayToJson(PlaceByDay instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'placeType': instance.placeType,
      'placeNum': instance.placeNum,
      'placeName': instance.placeName,
      'memo': instance.memo,
      'placeId': instance.placeId,
    };

_$_CheckItinerary _$$_CheckItineraryFromJson(Map<String, dynamic> json) =>
    _$_CheckItinerary(
      itineraryId: json['itineraryId'] as String,
      type: (json['type'] as List<dynamic>).map((e) => e as String).toList(),
      style: (json['style'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      transportation: json['transportation'] as String,
      area: json['area'] as String,
      startDate: json['startDate'] as String,
      expense: json['expense'] as String? ?? '',
      endDate: json['endDate'] as String,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      placesByDay: (json['placesByDay'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => PlaceByDay.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_CheckItineraryToJson(_$_CheckItinerary instance) =>
    <String, dynamic>{
      'itineraryId': instance.itineraryId,
      'type': instance.type,
      'style': instance.style,
      'name': instance.name,
      'transportation': instance.transportation,
      'area': instance.area,
      'startDate': instance.startDate,
      'expense': instance.expense,
      'endDate': instance.endDate,
      'account': instance.account,
      'placesByDay': instance.placesByDay,
    };
