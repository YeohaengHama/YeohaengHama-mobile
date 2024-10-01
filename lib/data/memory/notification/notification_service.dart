import 'dart:convert';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

Future<void> initializeNotifications() async {
  var initializationSettingsAndroid = const AndroidInitializationSettings('@mipmap/ic_launcher');
  var initializationSettingsIOS = DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
    onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) async {
      // iOS에서 로컬 알림을 수신했을 때의 처리
    },
  );
  var initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (NotificationResponse response) async {
      // 알림을 선택했을 때의 처리
      if (response.payload != null) {
        print('notification payload: ${response.payload}');
      }
    },
  );
}

Future<void> startListeningToServer(String id) async {
  final client = http.Client();
  final request = http.Request('GET', Uri.parse('https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api/notifications/subscribe/$id'));

  try {
    final response = await client.send(request);
    bool connected = false;

    response.stream
        .transform(const Utf8Decoder())
        .transform(const LineSplitter())
        .listen((line) {
      print('Received line: $line');

      if (!connected) {
        connected = true;
        print('서버와 성공적으로 연결되었습니다.');
        // 연결 성공 알림 표시
        showNotification('서버와 성공적으로 연결되었습니다.');
      }

      if (line.startsWith('data: ')) {
        final message = line.substring(6); // 'data: ' 부분을 제거
        print('Received message: $message');
        showNotification(message);
      }
    }, onError: (error) {
      print('서버와의 연결 중 오류 발생: $error');
      // 연결 오류 알림 표시
      showNotification('서버와의 연결 중 오류 발생. 재연결을 시도합니다.');
      // 재연결 시도
      // Future.delayed(Duration(seconds: 5), () => startListeningToServer(id));
    }, onDone: () {
      print('서버와의 연결이 종료되었습니다.');
      // 연결 종료 알림 표시
      showNotification('서버와의 연결이 종료되었습니다. 재연결을 시도합니다.');
      // 재연결 시도
      // Future.delayed(Duration(seconds: 5), () => startListeningToServer(id));
    });
  } catch (e) {
    print('서버와 연결할 수 없습니다: $e');
    showNotification('서버와 연결할 수 없습니다. 네트워크를 확인하십시오.');
    // 재연결 시도
    // Future.delayed(Duration(seconds: 5), () => startListeningToServer(id));
  }
}

Future<void> showNotification(String message) async {
  var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
    'important_notifications',
    'Important Notifications',
    channelDescription: 'Notifications for important updates and alerts',
    importance: Importance.max,
    priority: Priority.high,
    ticker: 'ticker',
  );
  var iOSPlatformChannelSpecifics = const DarwinNotificationDetails(
    presentAlert: true,  // 알림을 표시합니다.
    presentBadge: true,  // 뱃지를 표시합니다.
    presentSound: true,  // 소리를 재생합니다.
    presentBanner : true,
    presentList: true,
  );

  var platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
    iOS: iOSPlatformChannelSpecifics,
  );
  await flutterLocalNotificationsPlugin.show(
    0,
    'Server Notification',
    message,
    platformChannelSpecifics,
    payload: 'item x',
  );
}
