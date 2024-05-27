import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entity/chat/message.dart';

final chatServiceProvider = Provider<ChatService>((ref) {
  return ChatService();
});

class ChatService {
  WebSocketChannel? _channel;

  void connect(String url, Function(Message) onMessageReceived) {
    _channel = WebSocketChannel.connect(Uri.parse(url));

    _channel?.stream.listen((data) {
      final decodedMessage = jsonDecode(data);
      final message = Message.fromJson(decodedMessage);
      onMessageReceived(message);
    });
  }
  void sendMessage(Message message) {
    if (_channel != null) {
      final encodedMessage = jsonEncode(message.toJson());
      _channel?.sink.add(encodedMessage);
      print('Sent message: $encodedMessage'); // 로그 출력 추가
    }
  }


  void disconnect() {
    _channel?.sink.close();
  }
}
