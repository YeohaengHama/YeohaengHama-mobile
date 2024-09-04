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
          ?.map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, (e as num).toDouble()),
              ))
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

_$ShowDiaryAllResultImpl _$$ShowDiaryAllResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowDiaryAllResultImpl(
      keyword: json['keyword'] as String,
      diary: (json['diary'] as List<dynamic>)
          .map((e) => Diary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShowDiaryAllResultImplToJson(
        _$ShowDiaryAllResultImpl instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'diary': instance.diary,
    };

_$ShowDiaryPlaceResultImpl _$$ShowDiaryPlaceResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowDiaryPlaceResultImpl(
      keyword: json['keyword'] as String,
      diary: (json['diary'] as List<dynamic>)
          .map((e) => Diary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShowDiaryPlaceResultImplToJson(
        _$ShowDiaryPlaceResultImpl instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'diary': instance.diary,
    };

_$ShowPopularAreaResultImpl _$$ShowPopularAreaResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowPopularAreaResultImpl(
      first: json['first'] as String,
      second: json['second'] as String?,
      third: json['third'] as String?,
    );

Map<String, dynamic> _$$ShowPopularAreaResultImplToJson(
        _$ShowPopularAreaResultImpl instance) =>
    <String, dynamic>{
      'first': instance.first,
      'second': instance.second,
      'third': instance.third,
    };

_$DiaryImpl _$$DiaryImplFromJson(Map<String, dynamic> json) => _$DiaryImpl(
      diaryId: (json['diaryId'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$DiaryImplToJson(_$DiaryImpl instance) =>
    <String, dynamic>{
      'diaryId': instance.diaryId,
      'title': instance.title,
    };
