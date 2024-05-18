// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      email: json['email'] as String,
      pw: json['pw'] as String,
      nickname: json['nickname'] as String,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'pw': instance.pw,
      'nickname': instance.nickname,
      'file': instance.file,
    };
