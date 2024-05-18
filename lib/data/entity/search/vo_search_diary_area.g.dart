// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_search_diary_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchDiaryAreaImpl _$$SearchDiaryAreaImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchDiaryAreaImpl(
      diary: (json['diary'] as num).toInt(),
      itinerary: (json['itinerary'] as num).toInt(),
      tag: (json['tag'] as List<dynamic>).map((e) => e as String).toList(),
      date: json['date'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      accountShowDTO: AccountShowDTO.fromJson(
          json['accountShowDTO'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchDiaryAreaImplToJson(
        _$SearchDiaryAreaImpl instance) =>
    <String, dynamic>{
      'diary': instance.diary,
      'itinerary': instance.itinerary,
      'tag': instance.tag,
      'date': instance.date,
      'title': instance.title,
      'content': instance.content,
      'photos': instance.photos,
      'accountShowDTO': instance.accountShowDTO,
    };

_$AccountShowDTOImpl _$$AccountShowDTOImplFromJson(Map<String, dynamic> json) =>
    _$AccountShowDTOImpl(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$AccountShowDTOImplToJson(
        _$AccountShowDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
    };
