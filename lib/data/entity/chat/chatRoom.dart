import 'package:freezed_annotation/freezed_annotation.dart';


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
