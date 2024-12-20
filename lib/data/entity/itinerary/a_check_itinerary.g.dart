// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'a_check_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
    };

SharedAccount _$SharedAccountFromJson(Map<String, dynamic> json) =>
    SharedAccount(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
      accountRole: json['accountRole'] as String,
    );

Map<String, dynamic> _$SharedAccountToJson(SharedAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'accountRole': instance.accountRole,
    };

PlaceByDay _$PlaceByDayFromJson(Map<String, dynamic> json) => PlaceByDay(
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      placeType: json['placeType'] as String,
      placeNum: json['placeNum'] as String,
      placeName: json['placeName'] as String,
      memo: json['memo'] as String?,
      placeId: (json['placeId'] as num).toInt(),
      addr1: json['addr1'] as String,
      mapx: (json['mapx'] as num).toDouble(),
      mapy: (json['mapy'] as num).toDouble(),
    );

Map<String, dynamic> _$PlaceByDayToJson(PlaceByDay instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'placeType': instance.placeType,
      'placeNum': instance.placeNum,
      'placeName': instance.placeName,
      'memo': instance.memo,
      'placeId': instance.placeId,
      'addr1': instance.addr1,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
    };

_$CheckItineraryImpl _$$CheckItineraryImplFromJson(Map<String, dynamic> json) =>
    _$CheckItineraryImpl(
      itineraryId: (json['itineraryId'] as num).toInt(),
      type: (json['type'] as List<dynamic>?)?.map((e) => e as String).toList(),
      style:
          (json['style'] as List<dynamic>?)?.map((e) => e as String).toList(),
      name: json['name'] as String,
      transportation: json['transportation'] as String,
      area: json['area'] as String,
      startDate: json['startDate'] as String,
      expense: json['expense'] as String? ?? '',
      endDate: json['endDate'] as String,
      budgetId: (json['budgetId'] as num).toInt(),
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      placesByDay: (json['placesByDay'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => PlaceByDay.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      sharedAccount: (json['sharedAccount'] as List<dynamic>)
          .map((e) => SharedAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CheckItineraryImplToJson(
        _$CheckItineraryImpl instance) =>
    <String, dynamic>{
      'itineraryId': instance.itineraryId,
      'type': instance.type,
      'style': instance.style,
      'name': instance.name,
      'transportation': instance.transportation,
      'area': instance.area,
      'startDate': instance.startDate,
      'expense': instance.expense,
      'endDate': instance.endDate,
      'budgetId': instance.budgetId,
      'account': instance.account,
      'placesByDay': instance.placesByDay,
      'sharedAccount': instance.sharedAccount,
    };
