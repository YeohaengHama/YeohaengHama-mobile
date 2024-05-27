import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'message.dart';

part 'chatRoom.freezed.dart';
part 'chatRoom.g.dart';


@freezed
class ChatRoom with _$ChatRoom {
  factory ChatRoom({
    required String roomId,
    required String name,
    required List<String> users,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);
}
