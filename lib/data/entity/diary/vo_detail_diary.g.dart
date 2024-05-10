// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_detail_diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailDiary _$$_DetailDiaryFromJson(Map<String, dynamic> json) =>
    _$_DetailDiary(
      itinerary: json['itinerary'] as int,
      tag: (json['tag'] as List<dynamic>).map((e) => e as String).toList(),
      date: DateTime.parse(json['date'] as String),
      title: json['title'] as String,
      content: json['content'] as String,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      reviews: (json['reviews'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            int.parse(k),
            (e as List<dynamic>)
                .map((e) => Review.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_DetailDiaryToJson(_$_DetailDiary instance) =>
    <String, dynamic>{
      'itinerary': instance.itinerary,
      'tag': instance.tag,
      'date': instance.date.toIso8601String(),
      'title': instance.title,
      'content': instance.content,
      'photos': instance.photos,
      'account': instance.account,
      'reviews': instance.reviews?.map((k, e) => MapEntry(k.toString(), e)),
    };

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      id: json['id'] as int,
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
      accountRole: json['accountRole'] as String,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'accountRole': instance.accountRole,
    };

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      placeName: json['placeName'] as String?,
      contentId: json['contentId'] as int,
      contentTypeId: json['contentTypeId'] as int,
      rating: (json['rating'] as num).toDouble(),
      content: json['content'] as String,
      reviewPhotoURLList: (json['reviewPhotoURLList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'placeName': instance.placeName,
      'contentId': instance.contentId,
      'contentTypeId': instance.contentTypeId,
      'rating': instance.rating,
      'content': instance.content,
      'reviewPhotoURLList': instance.reviewPhotoURLList,
    };
