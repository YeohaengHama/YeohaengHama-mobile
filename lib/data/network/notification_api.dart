import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../entity/notification/vo_notification_message.dart';
import '../memory/notification/notification_provider.dart';

final notificationApiProvider =
Provider<NotificationApi>((ref) => NotificationApi());

class NotificationApi {
  final Dio _dio = Dio();
  final String baseUrl = serverUrl;

  Future<void> startListeningToServer(String id, WidgetRef ref) async {
    final client = http.Client();
    final request = http.Request('GET', Uri.parse('https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api/notifications/subscribe/$id'));
    final List<NotificationMessage> _messages = [];

    try {
      final notiMassage = ref.read(notificationMessageListProvider.notifier);
      final response = await client.send(request);
      bool connected = false;
      String currentId = '';
      String currentEvent = '';
      String currentData = '';

      response.stream
          .transform(utf8.decoder)
          .transform(const LineSplitter())
          .listen((line) {
        print('Received line: $line');

        if (!connected) {
          connected = true;
          print('서버와 성공적으로 연결되었습니다.');
          // 연결 성공 메시지 생성 및 추가
        }

        if (line.startsWith('id:')) {
          currentId = line.substring(3).trim();
        } else if (line.startsWith('event:')) {
          currentEvent = line.substring(6).trim();
        } else if (line.startsWith('data:')) {
          currentData = line.substring(5).trim();
        } else if (line.isEmpty) {
          if (currentId.isNotEmpty && currentEvent.isNotEmpty && currentData.isNotEmpty) {
            final message = NotificationMessage(
              id: currentId,
              event: currentEvent,
              data: currentData,
            );
            notiMassage.addNotificationMessage(message);
            _messages.add(message); // Add the message to the local list

            currentId = '';
            currentEvent = '';
            currentData = '';
          }
        }
      }, onError: (error) {
        print('서버와의 연결 중 오류 발생: $error');
        // 연결 오류 메시지 생성 및 추가
        // startListeningToServer(id, ref);

        // 재연결 시도 로직 추가
      }, onDone: () {
        print('서버와의 연결이 종료되었습니다.');
        // startListeningToServer(id, ref);

      });
    } catch (e) {
      print('서버와 연결할 수 없습니다: $e');
      // 재연결 시도 로직 추가        startListeningToServer(id, ref);
      // startListeningToServer(id, ref);

    } finally {
      client.close();
    }
  }
}