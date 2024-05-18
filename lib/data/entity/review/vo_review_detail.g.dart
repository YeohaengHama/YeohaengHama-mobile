// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_review_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewDetailImpl _$$ReviewDetailImplFromJson(Map<String, dynamic> json) =>
    _$ReviewDetailImpl(
      contentId: (json['contentId'] as num).toInt(),
      contentTypeId: (json['contentTypeId'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      content: json['content'] as String,
      reviewPhotoURLList: (json['reviewPhotoURLList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ReviewDetailImplToJson(_$ReviewDetailImpl instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'rating': instance.rating,
      'content': instance.content,
      'reviewPhotoURLList': instance.reviewPhotoURLList,
    };
