import 'dart:convert'; // 추가
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:audioplayers/audioplayers.dart'; // 추가

import '../../../../../data/entity/chat/chatRoom.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen(this.chatRoom, this.sender, {super.key});

  final ChatRoom chatRoom;
  final String sender;

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  StompClient? stompClient;
  List<Map<String, String>> messages = [];
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController(); // 추가
  final AudioPlayer _audioPlayer = AudioPlayer(); // 추가

  @override
  void initState() {
    super.initState();
    connect();
  }

  void connect() {
    stompClient = StompClient(
      config: StompConfig(
        url:
        'ws://43.202.208.22:8080/ws-stomp/websocket',
        // 웹소켓 URL 사용
        onConnect: onConnect,
        onStompError: (StompFrame frame) {
          print('Stomp error: ${frame.body}');
        },
        onWebSocketError: (dynamic error) => print('WebSocket error: $error'),
        onDisconnect: (frame) {
          print('Disconnected');
        },
        onDebugMessage: (msg) => print('Debug: $msg'),
        // 디버그 메시지 추가
        stompConnectHeaders: {
          'Authorization': 'Bearer yourToken', // 필요 시 인증 헤더 추가
        },
        webSocketConnectHeaders: {
          'Authorization': 'Bearer yourToken', // 필요 시 인증 헤더 추가
        },
      ),
    );

    stompClient?.activate();
  }

  void onConnect(StompFrame frame) {
    stompClient?.subscribe(
      destination: '/sub/chat/room/${widget.chatRoom.roomId}',
      callback: (frame) {
        final message = json.decode(frame.body ?? '') as Map<String, dynamic>;
        setState(() {
          messages.add({
            'type': message['type'],
            'sender': message['sender'],
            'message': message['message'] ?? '',
          });
          _scrollToBottom(); // 새로운 메시지가 추가될 때마다 스크롤
        });
      },
    );

    stompClient?.send(
      destination: '/pub/chat/message',
      body: json.encode({
        'type': 'ENTER',
        'roomId': widget.chatRoom.roomId,
        'sender': widget.sender,
      }),
    );
  }

  void sendMessage() {
    if (_controller.text.isEmpty) return;

    stompClient?.send(
      destination: '/pub/chat/message',
      body: json.encode({
        'type': 'TALK',
        'roomId': widget.chatRoom.roomId,
        'sender': widget.sender,
        'message': _controller.text,
      }),
    );

    // 메시지를 보낼 때 소리 재생
    _audioPlayer.play(AssetSource('assets/sounds/send_message.mp3'));

    setState(() {
      _controller.clear();
      _scrollToBottom(); // 메시지를 보낸 후 스크롤
    });
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void dispose() {
    stompClient?.deactivate();
    _audioPlayer.dispose(); // 추가
    _scrollController.dispose(); // 추가
    super.dispose();
  }

  Widget buildMessage(Map<String, String> message) {
    final chatRadius = Radius.circular(10);
    if (message['type'] == 'ENTER') {
      return Center(
        child: RoundedContainer(
          radius: 15,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          backgroundColor: AppColors.whiteGrey,
          child: Text(
            '${message['sender']}님이 입장하셨습니다.',
            style: TextStyle(color: AppColors.thirdGrey),
          ),
        ).pSymmetric(v: 10),
      );
    } else if (message['sender'] == widget.sender) {
      return Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppColors.mainPurple,
            borderRadius: BorderRadius.only(
                topLeft: chatRadius,
                topRight: Radius.zero,
                bottomLeft: chatRadius,
                bottomRight: chatRadius),
          ),
          child: Text(
            message['message']!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      return Align(
        alignment: Alignment.centerLeft,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message['sender']!,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ).pSymmetric(h:10),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: chatRadius,
                      bottomLeft: chatRadius,
                      bottomRight: chatRadius),
                ),
                child:   Text(message['message']!),
              ),
            ]),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chatRoom.name),
        backgroundColor: Colors.white.withOpacity(0.1),
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              controller: _scrollController, // ScrollController 추가
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return buildMessage(messages[index]);
              },
            ),
          ),
          Container(
            color: AppColors.whiteGrey,
            padding: const EdgeInsets.only(
                bottom: 30.0, left: 8.0, right: 8.0, top: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: TextField(
                      style: TextStyle(color: AppColors.primaryGrey),
                      cursorColor: AppColors.mainPurple,
                      controller: _controller,
                      maxLines: 5,
                      // 최대 줄 수
                      minLines: 1,
                      // 최소 줄 수
                      decoration: InputDecoration(
                        hintText: '메시지 보내기...',
                        hintStyle: TextStyle(
                          color: AppColors.secondGrey, // 힌트 텍스트 색상
                        ),
                        border: InputBorder.none,
                      ),
                      onSubmitted: (value) => sendMessage(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: sendMessage,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: AppColors.whiteGrey,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Icon(
                      Icons.send,
                      color: AppColors.forthGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
