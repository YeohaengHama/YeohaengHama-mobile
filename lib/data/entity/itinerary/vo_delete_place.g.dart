// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_delete_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeletePlaceImpl _$$DeletePlaceImplFromJson(Map<String, dynamic> json) =>
    _$DeletePlaceImpl(
      accountId: (json['accountId'] as num).toInt(),
      placeNum: json['placeNum'] as String,
      contentTypeId: json['contentTypeId'] as String,
    );

Map<String, dynamic> _$$DeletePlaceImplToJson(_$DeletePlaceImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'placeNum': instance.placeNum,
      'contentTypeId': instance.contentTypeId,
    };
