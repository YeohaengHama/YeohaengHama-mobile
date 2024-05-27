import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entity/chat/chatRoom.dart';
import '../../entity/chat/message.dart';

final chatRoomsProvider = StateNotifierProvider<ChatRoomsNotifier, List<ChatRoom>>((ref) {
  return ChatRoomsNotifier();
});

class ChatRoomsNotifier extends StateNotifier<List<ChatRoom>> {
  ChatRoomsNotifier() : super([]);

  void setRooms(List<ChatRoom> rooms) {
    state = rooms;
  }

  void updateRoom(ChatRoom updatedRoom) {
    state = [
      for (final room in state)
        if (room.roomId == updatedRoom.roomId) updatedRoom else room,
    ];
  }

 
}

