// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_review_show_account_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewShowAccountImpl _$$ReviewShowAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewShowAccountImpl(
      reviewId: (json['reviewId'] as num).toInt(),
      placeName: json['placeName'] as String,
      rating: (json['rating'] as num).toDouble(),
      content: json['content'] as String,
      date: json['date'] as String,
      reviewPhotoURLList: (json['reviewPhotoURLList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ReviewShowAccountImplToJson(
        _$ReviewShowAccountImpl instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'placeName': instance.placeName,
      'rating': instance.rating,
      'content': instance.content,
      'date': instance.date,
      'reviewPhotoURLList': instance.reviewPhotoURLList,
    };
