// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatLogImpl _$$ChatLogImplFromJson(Map<String, dynamic> json) =>
    _$ChatLogImpl(
      roomId: json['roomId'] as String,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatLogImplToJson(_$ChatLogImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'messages': instance.messages,
    };
