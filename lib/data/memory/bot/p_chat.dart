import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/bot/chat_bot.dart';
import '../../entity/bot/chat_message.dart';
import '../../network/bot_api.dart';
import '../../memory/bot/p_chat_bot.dart'; // ChatbotResponseNotifier를 import합니다.

final chatProvider =
    StateNotifierProvider<ChatNotifier, List<ChatMessage>>((ref) {
  final chatbotResponseNotifier =
      ref.watch(chatbotResponseNotifierProvider.notifier);
  return ChatNotifier(chatbotResponseNotifier);
});

class ChatNotifier extends StateNotifier<List<ChatMessage>> {
  final ChatbotResponseNotifier _chatbotResponseNotifier;

  ChatNotifier(this._chatbotResponseNotifier) : super([]) {
    _chatbotResponseNotifier.addListener((response) {
      if (response != null) {
        final answer = response.answer;
        ChatMessage message;

        switch (response.type) {
          case 'showDiaryAll':
            message = ChatMessage<ShowDiaryAllResult>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as ShowDiaryAllResult,
                other: response.other);
            break;
          case 'showDiaryPlace':
            message = ChatMessage<ShowDiaryPlaceResult>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as ShowDiaryPlaceResult,
                other: response.other);
            break;
          case 'showPopularArea':
            message = ChatMessage<ShowPopularAreaResult>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as ShowPopularAreaResult,
                other: response.other);
            break;
          default:
            message = ChatMessage<String>(
                text: answer,
                isUser: false,
                type: response.type,
                result: null,
                other: response.other);
            break;
        }

        receiveMessage(message);
      }
    });
  }

  void addMessage(ChatMessage message) {
    state = [...state, message];
  }

  Future<void> sendMessage(String text, WidgetRef ref) async {
    addMessage(ChatMessage<String>(
      text: text,
      isUser: true,
      type: 'default',
      result: null,
        other: null
    ));

    final botApi = ref.read(botApiProvider);
    try {
      await botApi.askBot(text, ref);
    } catch (e) {
      addMessage(ChatMessage<String>(
        text: "Error occurred: $e",
        isUser: false,
        type: 'default',
        result: null,
          other: null

      ));
    }
  }
  void reset() {
    state = [];
  }
  void receiveMessage(ChatMessage message) {
    addMessage(message);
  }
}
