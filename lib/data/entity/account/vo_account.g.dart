// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      email: json['email'] as String,
      pw: json['pw'] as String,
      nickname: json['nickname'] as String,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'email': instance.email,
      'pw': instance.pw,
      'nickname': instance.nickname,
      'file': instance.file,
    };
