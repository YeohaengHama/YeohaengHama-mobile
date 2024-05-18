// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      email: json['email'] as String,
      pw: json['pw'] as String,
      nickName: json['nickName'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'pw': instance.pw,
      'nickName': instance.nickName,
      'photoUrl': instance.photoUrl,
    };
