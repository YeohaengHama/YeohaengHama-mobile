// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_shorts_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShortsReadImpl _$$ShortsReadImplFromJson(Map<String, dynamic> json) =>
    _$ShortsReadImpl(
      shortsList: (json['shortsList'] as List<dynamic>)
          .map((e) => Shorts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShortsReadImplToJson(_$ShortsReadImpl instance) =>
    <String, dynamic>{
      'shortsList': instance.shortsList,
    };

_$ShortsImpl _$$ShortsImplFromJson(Map<String, dynamic> json) => _$ShortsImpl(
      shortsId: (json['shortsId'] as num).toInt(),
      videoUrl: json['videoUrl'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      date: DateTime.parse(json['date'] as String),
      likes: (json['likes'] as num).toInt(),
      commentNum: (json['commentNum'] as num).toInt(),
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      itinerary: Itinerary.fromJson(json['itinerary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShortsImplToJson(_$ShortsImpl instance) =>
    <String, dynamic>{
      'shortsId': instance.shortsId,
      'videoUrl': instance.videoUrl,
      'title': instance.title,
      'content': instance.content,
      'date': instance.date.toIso8601String(),
      'likes': instance.likes,
      'commentNum': instance.commentNum,
      'account': instance.account,
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
