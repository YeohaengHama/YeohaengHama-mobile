// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_review_show_account_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewShowAccount _$$_ReviewShowAccountFromJson(Map<String, dynamic> json) =>
    _$_ReviewShowAccount(
      reviewId: json['reviewId'] as int,
      placeName: json['placeName'] as String,
      rating: (json['rating'] as num).toDouble(),
      content: json['content'] as String,
      date: json['date'] as String,
      reviewPhotoURLList: (json['reviewPhotoURLList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReviewShowAccountToJson(
        _$_ReviewShowAccount instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'placeName': instance.placeName,
      'rating': instance.rating,
      'content': instance.content,
      'date': instance.date,
      'reviewPhotoURLList': instance.reviewPhotoURLList,
    };
