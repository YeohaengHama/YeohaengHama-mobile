// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_detail_diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

_$_Itinerary _$$_ItineraryFromJson(Map<String, dynamic> json) => _$_Itinerary(
      itineraryId: json['itineraryId'] as int,
      type: (json['type'] as List<dynamic>?)?.map((e) => e as String).toList(),
      style:
          (json['style'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] as String,
      transportation: json['transportation'] as String,
      area: json['area'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      place: (json['place'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>?)
                ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_ItineraryToJson(_$_Itinerary instance) =>
    <String, dynamic>{
      'itineraryId': instance.itineraryId,
      'type': instance.type,
      'style': instance.style,
      'name': instance.name,
      'transportation': instance.transportation,
      'area': instance.area,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'place': instance.place,
    };

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      day: json['day'] as int,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      placeType: json['placeType'] as String,
      placeNum: json['placeNum'] as String,
      placeName: json['placeName'] as String,
      addr1: json['addr1'] as String,
      mapx: (json['mapx'] as num).toDouble(),
      mapy: (json['mapy'] as num).toDouble(),
      memo: json['memo'] as String?,
      review: json['review'] == null
          ? null
          : Review.fromJson(json['review'] as Map<String, dynamic>),
      placeId: json['placeId'] as int,
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'day': instance.day,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'placeType': instance.placeType,
      'placeNum': instance.placeNum,
      'placeName': instance.placeName,
      'addr1': instance.addr1,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
      'memo': instance.memo,
      'review': instance.review,
      'placeId': instance.placeId,
    };

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      reviewId: json['reviewId'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      content: json['content'] as String?,
      reviewPhotoURLList: (json['reviewPhotoURLList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'reviewId': instance.reviewId,
      'rating': instance.rating,
      'content': instance.content,
      'reviewPhotoURLList': instance.reviewPhotoURLList,
    };
