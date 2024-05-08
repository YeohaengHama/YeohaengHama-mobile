// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_account_save_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountSavePlace _$$_AccountSavePlaceFromJson(Map<String, dynamic> json) =>
    _$_AccountSavePlace(
      json['id'] as int,
      json['placeNum'] as String,
      json['contentTypeID'] as String,
      Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AccountSavePlaceToJson(_$_AccountSavePlace instance) =>
    <String, dynamic>{
      'id': instance.id,
      'placeNum': instance.placeNum,
      'contentTypeID': instance.contentTypeID,
      'account': instance.account,
    };
