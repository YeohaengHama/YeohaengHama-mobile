// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_review_show_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewShowAll _$$_ReviewShowAllFromJson(Map<String, dynamic> json) =>
    _$_ReviewShowAll(
      contentId: json['contentId'] as int,
      contentTypeId: json['contentTypeId'] as int,
      rating: json['rating'] as int,
      content: json['content'] as String,
      reviewPhotoURLList: (json['reviewPhotoURLList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewShowAllToJson(_$_ReviewShowAll instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'rating': instance.rating,
      'content': instance.content,
      'reviewPhotoURLList': instance.reviewPhotoURLList,
      'account': instance.account,
    };

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
    };
