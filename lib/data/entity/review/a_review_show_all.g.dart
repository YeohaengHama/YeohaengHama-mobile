// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_review_show_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewShowAllImpl _$$ReviewShowAllImplFromJson(Map<String, dynamic> json) =>
    _$ReviewShowAllImpl(
      contentId: (json['contentId'] as num?)?.toInt(),
      contentTypeId: (json['contentTypeId'] as num).toInt(),
      rating: (json['rating'] as num?)?.toInt(),
      content: json['content'] as String,
      reviewPhotoURLList: (json['reviewPhotoURLList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      blogURL: json['blogURL'] as String?,
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewShowAllImplToJson(_$ReviewShowAllImpl instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'rating': instance.rating,
      'content': instance.content,
      'reviewPhotoURLList': instance.reviewPhotoURLList,
      'blogURL': instance.blogURL,
      'account': instance.account,
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: (json['id'] as num?)?.toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
      accountRole: json['accountRole'] as String?,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'accountRole': instance.accountRole,
    };
