import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/chat/cached_chat_log.dart';
import 'package:fast_app_base/screen/client/main/tab/meeting/s_gallery.dart';
import 'package:fast_app_base/screen/client/main/tab/meeting/s_image_detail.dart';
import 'package:fast_app_base/screen/client/main/tab/meeting/w_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../../../../data/entity/chat/chatRoom.dart';
import '../../../../../data/entity/chat/chat_log.dart';
import '../../../../../data/memory/chat/chat_cache.dart';
import '../../../../../data/memory/chat/p_chat_log.dart';
import '../../../../../data/network/chat_api.dart';

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
  final ScrollController _scrollController = ScrollController();
  final AudioPlayer _audioPlayer = AudioPlayer();
  late final ChatCache _chatCache = ChatCache();

  @override
  void initState() {
    super.initState();
    connect();
    _loadChatLog();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.addListener(() {
        if (_scrollController.hasClients) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _scrollToBottom();

          });
        }
      });
    });
  }

  // 이미지 저장 함수
  Future<void> _saveImage(String imageUrl) async {
    try {
      final result = await ImageGallerySaver.saveImage(
        (await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl))
            .buffer
            .asUint8List(),
        quality: 100,
        name: "chat_image_${DateTime.now().millisecondsSinceEpoch}.jpg",
      );
      print("Image saved: $result");
    } catch (e) {
      print("Failed to save image: $e");
    }
  }

  // 이미지 상세 보기 함수
  void _showImageDetail(String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            ImageDetailScreen(sender: widget.sender, imageUrl: imageUrl),
      ),
    );
  }

  // 채팅 로그 로드 함수
  Future<void> _loadChatLog() async {
    final chatApi = ref.read(chatApiProvider);
    final chatLog = await chatApi.readChatLog(widget.chatRoom.roomId, ref);
    final chatLogP = ref.read(chatLogProvider.notifier).state;

    setState(() {
      messages = chatLogP.messages.map((message) {
        return {
          'type': message.type,
          'sender': message.sender,
          'message': message.message,
        };
      }).toList();

      // CachedMessage 객체 리스트로 캐시 추가
      List<CachedMessage> cachedMessages = chatLogP.messages.map((message) {
        return CachedMessage(
          type: message.type,
          sender: message.sender,
          message: message.message,
        );
      }).toList();

      _chatCache.addCachedChatLog(
        CachedChatLog(roomId: widget.chatRoom.roomId, messages: cachedMessages),
      );
    });
  }

  // WebSocket 연결 함수
  void connect() {
    stompClient = StompClient(
      config: StompConfig(
        url: 'ws://43.202.208.22:8080/ws-stomp/websocket',
        onConnect: onConnect,
        onStompError: (StompFrame frame) {
          print('Stomp error: ${frame.body}');
        },
        onWebSocketError: (dynamic error) => print('WebSocket error: $error'),
        onDisconnect: (frame) {
          print('Disconnected');
        },
        onDebugMessage: (msg) => print('Debug: $msg'),
        stompConnectHeaders: {
          'Authorization': 'Bearer yourToken',
        },
        webSocketConnectHeaders: {
          'Authorization': 'Bearer yourToken',
        },
      ),
    );

    stompClient?.activate();
  }

  // WebSocket 연결 후 호출되는 콜백 함수
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
        });
      },
    );

    // 사용자가 채팅방에 입장했음을 알리는 메시지 전송
    stompClient?.send(
      destination: '/pub/chat/message',
      body: json.encode({
        'type': 'ENTER',
        'roomId': widget.chatRoom.roomId,
        'sender': widget.sender,
      }),
    );
  }

  // 메시지 전송 함수
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

    _audioPlayer.play(AssetSource('assets/sounds/send_message.mp3'));

    setState(() {
      _controller.clear();
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        // 현재 스크롤 위치가 최하단에 있는지 확인
        if (_scrollController.position.atEdge && _scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        }
      }
    });
  }



  @override
  void dispose() {
    stompClient?.deactivate();
    _audioPlayer.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  // 메시지 빌드 함수
  Widget buildMessage(Map<String, String> message) {
    final chatRadius = Radius.circular(10);

    if (message['type'] == 'ENTER') {
      return Center(
        child: RoundedContainer(
          radius: 15,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          backgroundColor: AppColors.whiteGrey,
          child: Text(
            '${message['sender']}님이 접속하셨습니다.',
            style: TextStyle(color: AppColors.thirdGrey),
          ),
        ).pSymmetric(v: 10),
      );
    } else if (message['type'] == 'IMAGE') {
      return _buildImageMessage(message);
    } else {
      return _buildTextMessage(message);
    }
  }

  // 이미지 메시지 빌드 함수
  Widget _buildImageMessage(Map<String, String> message) {
    return Align(
      alignment: message['sender'] == widget.sender
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: GestureDetector(
        onTap: () => _showImageDetail(message['message']!),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          padding: const EdgeInsets.all(10.0),
          constraints: BoxConstraints(
            maxWidth: 300,
            maxHeight: 300,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: message['message']!,
              fit: BoxFit.contain,
              placeholder: (context, url) => CircularProgressIndicator(color: Colors.transparent,),
              errorWidget: (context, url, error) =>
                  Text('이미지를 불러오는 데 실패했습니다.'),
            ),
          ),
        ),
      ),
    );
  }

  // 텍스트 메시지 빌드 함수
  Widget _buildTextMessage(Map<String, String> message) {
    final chatRadius = Radius.circular(10);

    if (message['sender'] == widget.sender) {
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
              bottomRight: chatRadius,
            ),
          ),
          child: Text(
            message['message']!,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppColors.whiteGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.zero,
              topRight: chatRadius,
              bottomLeft: chatRadius,
              bottomRight: chatRadius,
            ),
          ),
          child: Text(
            message['message']!,
            style: const TextStyle(color: Colors.black),
          ),
        ),
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
        actions:[ Tap(onTap: () {
          Nav.push(GalleryScreen(chatLog: messages));
        },
        child: Icon(Icons.photo_outlined).pOnly(right: 15))]
      ),
      body: GestureDetector(
        onTap: () {
          // 인풋 박스 외의 공간을 터치했을 때 키보드를 닫음
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return buildMessage(messages[index]);
                },
              ),
            ),
            TextInputWidget(
              chatRoom: widget.chatRoom,
              sender: widget.sender,
              controller: _controller,
              onSendMessage: sendMessage,
              scrollController: _scrollController, // 스크롤 컨트롤러 전달
            ),

          ],
        ),
      ),
    );
  }

}
