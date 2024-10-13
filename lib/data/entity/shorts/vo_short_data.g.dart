// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_short_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShortsDataImpl _$$ShortsDataImplFromJson(Map<String, dynamic> json) =>
    _$ShortsDataImpl(
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      videoUrl: json['videoUrl'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      itinerary: Itinerary.fromJson(json['itinerary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShortsDataImplToJson(_$ShortsDataImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
      'videoUrl': instance.videoUrl,
      'title': instance.title,
      'content': instance.content,
      'itinerary': instance.itinerary,
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
      accountRole: json['accountRole'] as String,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'accountRole': instance.accountRole,
    };

_$ItineraryImpl _$$ItineraryImplFromJson(Map<String, dynamic> json) =>
    _$ItineraryImpl(
      itineraryId: (json['itineraryId'] as num).toInt(),
      type: (json['type'] as List<dynamic>).map((e) => e as String).toList(),
      style: (json['style'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      transportation: json['transportation'] as String,
      area: json['area'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItineraryImplToJson(_$ItineraryImpl instance) =>
    <String, dynamic>{
      'itineraryId': instance.itineraryId,
      'type': instance.type,
      'style': instance.style,
      'name': instance.name,
      'transportation': instance.transportation,
      'area': instance.area,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'account': instance.account,
    };
