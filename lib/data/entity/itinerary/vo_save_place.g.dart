// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_save_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePlaceImpl _$$SavePlaceImplFromJson(Map<String, dynamic> json) =>
    _$SavePlaceImpl(
      accountId: (json['accountId'] as num).toInt(),
      placeNum: json['placeNum'] as String,
      contentTypeId: json['contentTypeId'] as String,
    );

Map<String, dynamic> _$$SavePlaceImplToJson(_$SavePlaceImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'placeNum': instance.placeNum,
      'contentTypeId': instance.contentTypeId,
    };
