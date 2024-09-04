import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../entity/bot/chat_bot.dart';

// StateNotifier를 이용해 ChatbotResponse 상태를 관리합니다.
class ChatbotResponseNotifier extends StateNotifier<ChatbotResponse<dynamic>?> {
  ChatbotResponseNotifier() : super(null);

  void setResponse(ChatbotResponse<dynamic> response) {
    state = response;
  }

  void clearResponse() {
    state = null;
  }
}

// StateNotifierProvider를 정의합니다.
final chatbotResponseNotifierProvider =
StateNotifierProvider<ChatbotResponseNotifier, ChatbotResponse<dynamic>?>(
        (ref) => ChatbotResponseNotifier());
