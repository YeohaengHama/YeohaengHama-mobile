// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_all_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowAllAccountImpl _$$ShowAllAccountImplFromJson(Map<String, dynamic> json) =>
    _$ShowAllAccountImpl(
      id: (json['id'] as num).toInt(),
      photoUrl: json['photoUrl'] as String?,
      nickname: json['nickname'] as String,
    );

Map<String, dynamic> _$$ShowAllAccountImplToJson(
        _$ShowAllAccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoUrl': instance.photoUrl,
      'nickname': instance.nickname,
    };
