// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_bot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatbotResponseImpl<T> _$$ChatbotResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ChatbotResponseImpl<T>(
      question: json['question'] as String,
      answer: json['answer'] as String,
      type: json['type'] as String,
      result: _$nullableGenericFromJson(json['result'], fromJsonT),
      other: (json['other'] as List<dynamic>?)
          ?.map((e) => Other.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatbotResponseImplToJson<T>(
  _$ChatbotResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'type': instance.type,
      'result': _$nullableGenericToJson(instance.result, toJsonT),
      'other': instance.other,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$OtherImpl _$$OtherImplFromJson(Map<String, dynamic> json) => _$OtherImpl(
      question: json['question'] as String,
      answerId: json['answerId'] as String,
    );

Map<String, dynamic> _$$OtherImplToJson(_$OtherImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answerId': instance.answerId,
    };

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      addr1: json['addr1'] as String,
      addr2: json['addr2'] as String?,
      contentid: json['contentid'] as String,
      contenttypeid: json['contenttypeid'] as String,
      tel: json['tel'] as String?,
      title: json['title'] as String,
      firstimage: json['firstimage'] as String?,
      firstimage2: json['firstimage2'] as String?,
      mapx: json['mapx'] as String,
      mapy: json['mapy'] as String,
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'addr1': instance.addr1,
      'addr2': instance.addr2,
      'contentid': instance.contentid,
      'contenttypeid': instance.contenttypeid,
      'tel': instance.tel,
      'title': instance.title,
      'firstimage': instance.firstimage,
      'firstimage2': instance.firstimage2,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
    };

_$ShortsImpl _$$ShortsImplFromJson(Map<String, dynamic> json) => _$ShortsImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      videoUrl: json['videoUrl'] as String,
    );

Map<String, dynamic> _$$ShortsImplToJson(_$ShortsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'videoUrl': instance.videoUrl,
    };

_$ItineraryImpl _$$ItineraryImplFromJson(Map<String, dynamic> json) =>
    _$ItineraryImpl(
      id: (json['id'] as num).toInt(),
      area: json['area'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ItineraryImplToJson(_$ItineraryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'area': instance.area,
      'name': instance.name,
    };

_$DiaryImpl _$$DiaryImplFromJson(Map<String, dynamic> json) => _$DiaryImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$DiaryImplToJson(_$DiaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
    };

_$RandomPlaceImpl _$$RandomPlaceImplFromJson(Map<String, dynamic> json) =>
    _$RandomPlaceImpl(
      playNum: json['playNum'] as String,
      playType: json['playType'] as String,
      addr1: json['addr1'] as String,
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$RandomPlaceImplToJson(_$RandomPlaceImpl instance) =>
    <String, dynamic>{
      'playNum': instance.playNum,
      'playType': instance.playType,
      'addr1': instance.addr1,
      'name': instance.name,
      'image': instance.image,
    };

_$RandomAreaImpl _$$RandomAreaImplFromJson(Map<String, dynamic> json) =>
    _$RandomAreaImpl(
      area: json['area'] as String,
    );

Map<String, dynamic> _$$RandomAreaImplToJson(_$RandomAreaImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
    };
