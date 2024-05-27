// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatRoom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomImpl _$$ChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomImpl(
      roomId: json['roomId'] as String,
      name: json['name'] as String,
      users: (json['users'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ChatRoomImplToJson(_$ChatRoomImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'name': instance.name,
      'users': instance.users,
    };
