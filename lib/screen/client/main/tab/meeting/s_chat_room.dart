import 'dart:convert';

import 'package:fast_app_base/common/dart/kotlin_style/kotlin_style_extensions.dart';
import 'package:flutter/material.dart';

import 'package:stomp_dart_client/stomp_dart_client.dart';

import '../../../../../data/entity/account/vo_current_account.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen(this.roomId, this.currentAccount, {Key? key})
      : super(key: key);

  final int roomId;
  final CurrentAccount currentAccount;

  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];
  late StompClient stompClient;

  @override
  void initState() {
    super.initState();
    _connectWebSocket();
  }

  void _connectWebSocket() async {
    stompClient = StompClient(
      config: StompConfig(
        url: 'ws://172.16.111.225:8080/ws-stomp',
        onConnect: (_) {
          print('Connected to WebSocket');
          _sendMessage('ENTER', 'joined the chat');
        },
        onWebSocketError: (dynamic error) => print('WebSocket error: $error'),
      ),

    );

    stompClient.activate();
    if (stompClient.connected) {
      print('웹소켓에 연결되었습니다.');
      stompClient.subscribe(
        destination: '/topic/chat/${widget.roomId}',
        callback: (StompFrame frame) {
          setState(() {
            _messages.add(frame.body!);
          });
        },
      );
    } else{
      print('웹소켓 연결에 실패했습니다.');}



  }

  void _sendMessage(String type, String message) {
    stompClient.send(
      destination: '/app/chat',
      body: json.encode({
        'type': type,
        'roomId': widget.roomId,
        'sender': widget.currentAccount.id,
        'message': message,
      }),
    );
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
                  title: Text(_messages[index]),
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
                      _sendMessage('TALK', value);
                      _messageController.clear();
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _sendMessage('TALK', _messageController.text);
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

