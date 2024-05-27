import 'dart:async';
import 'dart:convert';
import 'package:fast_app_base/data/entity/account/vo_current_account.dart';
import 'package:fast_app_base/data/network/user_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;  // 추가된 부분

import '../../../../../common/constants.dart';
import '../../../../../data/entity/chat/message.dart';
import '../../../../../data/memory/user_provider.dart';

class ChatRoomScreen extends ConsumerStatefulWidget {
  const ChatRoomScreen(this.roomId,this.currentAccount, {super.key});
  final int roomId;
  final CurrentAccount currentAccount;

  @override
  ConsumerState<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends ConsumerState<ChatRoomScreen> {

  final TextEditingController _messageController = TextEditingController();
  final List<Message> _messages = [];
  WebSocketChannel? _channel;

  @override
  void initState() {
    super.initState();
    _connectWebSocket();
  }

  void _connectWebSocket()  {
    final uri = Uri.parse('$socketUrl/ws-stomp');
    print(uri);
    _channel = WebSocketChannel.connect(uri);

    _channel?.stream.listen((message) {
      final decodedMessage = json.decode(message);
      setState(() {
        _messages.add(Message.fromJson(decodedMessage));
      });
    });

    _sendMessage(type: 'ENTER', message: 'joined the chat');
  }


  void _sendMessage({required String type, required String message}) {
    if (_channel != null) {
      final msg = json.encode({
        'type': type,
        'roomId': widget.roomId,
        'sender': widget.currentAccount.id, // Replace with actual sender
        'message': message,
      });
      _channel?.sink.add(msg);
    }
  }

  @override
  void dispose() {
    _channel?.sink.close(status.goingAway);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Room'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index].message),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(labelText: 'Message'),
                    onSubmitted: (value) {
                      _sendMessage(type: 'TALK', message: value);
                      _messageController.clear();
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _sendMessage(
                      type: 'TALK',
                      message: _messageController.text,
                    );
                    _messageController.clear();
                  },
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

