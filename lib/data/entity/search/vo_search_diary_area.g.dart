// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_search_diary_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchDiaryArea _$$_SearchDiaryAreaFromJson(Map<String, dynamic> json) =>
    _$_SearchDiaryArea(
      diary: json['diary'] as int,
      itinerary: json['itinerary'] as int,
      tag: (json['tag'] as List<dynamic>).map((e) => e as String).toList(),
      date: json['date'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      accountShowDTO: AccountShowDTO.fromJson(
          json['accountShowDTO'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchDiaryAreaToJson(_$_SearchDiaryArea instance) =>
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

_$_AccountShowDTO _$$_AccountShowDTOFromJson(Map<String, dynamic> json) =>
    _$_AccountShowDTO(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_AccountShowDTOToJson(_$_AccountShowDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
    };
