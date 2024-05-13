// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_review_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDetail _$$_ReviewDetailFromJson(Map<String, dynamic> json) =>
    _$_ReviewDetail(
      contentId: json['contentId'] as int,
      contentTypeId: json['contentTypeId'] as int,
      rating: json['rating'] as int,
      content: json['content'] as String,
      reviewPhotoURLList: (json['reviewPhotoURLList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReviewDetailToJson(_$_ReviewDetail instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'rating': instance.rating,
      'content': instance.content,
      'reviewPhotoURLList': instance.reviewPhotoURLList,
    };
