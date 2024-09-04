import 'package:fast_app_base/screen/client/main/tab/home/chat_bot/w_chat_bubble.dart';
import 'package:fast_app_base/screen/client/main/tab/home/chat_bot/w_chat_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../../data/entity/bot/chat_message.dart';
import '../../../../../../data/memory/bot/p_chat.dart';

class ChatBotScreen extends ConsumerStatefulWidget {
  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends ConsumerState<ChatBotScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chatMessages = ref.watch(chatProvider);

    // 스크롤을 맨 아래로 이동하는 함수
    void _scrollToBottom() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
        }
      });
    }

    // 메시지가 업데이트될 때마다 스크롤을 맨 아래로 이동
    ref.listen<List<ChatMessage>>(chatProvider, (_, __) {
      _scrollToBottom();
    });

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text('Chatbot'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // 텍스트 필드 외 다른 영역을 터치했을 때 포커스를 해제
        },
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                reverse: false,
                itemCount: chatMessages.length,
                itemBuilder: (context, index) {
                  final message = chatMessages[index];
                  return ChatBubble(
                    message: message,
                    onSendMessage: (text) {
                      ref.read(chatProvider.notifier).sendMessage(text, ref);
                    },
                  );
                },
              ),
            ),
            ChatInputField(onSendMessage: (text) {
              ref.read(chatProvider.notifier).sendMessage(text, ref);
            }),
          ],
        ),
      ),
    );
  }
}
