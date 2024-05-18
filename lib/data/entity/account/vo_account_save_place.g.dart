// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_account_save_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountSavePlaceImpl _$$AccountSavePlaceImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountSavePlaceImpl(
      (json['id'] as num).toInt(),
      json['placeNum'] as String,
      json['contentTypeID'] as String,
      Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountSavePlaceImplToJson(
        _$AccountSavePlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'placeNum': instance.placeNum,
      'contentTypeID': instance.contentTypeID,
      'account': instance.account,
    };
