// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      email: json['email'] as String,
      pw: json['pw'] as String,
      nickName: json['nickName'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'email': instance.email,
      'pw': instance.pw,
      'nickName': instance.nickName,
      'photoUrl': instance.photoUrl,
    };
