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
          case 'searchKeyword':
            message = ChatMessage<List<Place>>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as List<Place>,
                other: response.other);
            break;

          case 'searchShorts':
          case 'randomShorts':
            message = ChatMessage<Shorts>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as Shorts,
                other: response.other);
            break;

          case 'searchItinerary':
          case 'randomItinerary':
            message = ChatMessage<Itinerary>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as Itinerary,
                other: response.other);
            break;

          case 'searchDiary':
          case 'randomDiary':
            message = ChatMessage<Diary>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as Diary,
                other: response.other);
            break;

          case 'randomPlace':
            message = ChatMessage<RandomPlace>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as RandomPlace,
                other: response.other);
            break;

          case 'randomArea':
            message = ChatMessage<RandomArea>(
                text: answer,
                isUser: false,
                type: response.type,
                result: response.result as RandomArea,
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
      other: null,
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
        other: null,
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
