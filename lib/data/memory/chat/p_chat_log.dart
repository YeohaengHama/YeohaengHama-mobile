import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entity/chat/chat_log.dart';
import '../../entity/chat/message.dart';
import 'package:dio/dio.dart';

class ChatLogNotifier extends StateNotifier<ChatLog> {
  ChatLogNotifier() : super(ChatLog(roomId: '', messages: []));

  void setChatLog(ChatLog chatLog) {
    state = chatLog;
  }

  // 메시지 추가
  void addMessage(Message message) {
    state = state.copyWith(messages: [...state.messages, message]);
  }

  // 메시지 리스트 설정
  void setMessages(List<Message> messages) {
    state = state.copyWith(messages: messages);
  }
}


final chatLogProvider = StateNotifierProvider<ChatLogNotifier, ChatLog>((ref) {
  return ChatLogNotifier();
});


