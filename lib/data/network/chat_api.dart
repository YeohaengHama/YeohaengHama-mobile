
import 'package:dio/dio.dart';
import 'package:fast_app_base/data/memory/account/user_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants.dart';
import '../entity/chat/chatRoom.dart';
import '../memory/chat/chat_room_proivder.dart';

final chatApiProvider = Provider<ChatApi>((ref) => ChatApi());

class ChatApi {
  final Dio _dio = Dio();
  final String baseUrl = chatServerUrl;

  Future<void> findAllChatRoom(WidgetRef ref) async {
    final account = ref.read(accountProvider);
    final url = '$baseUrl/chat/roomFindAccount?accountId=${account!.id}';

    try {
      final response = await _dio.get(
          url,
      );

      if (response.statusCode == 200) {
        print('채팅방 불러오기 성공: ${response.data}');
        final jsonData = response.data as List<dynamic>;
        // 가계부 생성 성공 시 setCurrentBudget를 호출하여 데이터를 저장
        final chatRooms = jsonData
            .map((json) =>
            ChatRoom.fromJson(json as Map<String, dynamic>))
            .toList();
        ref.read(chatRoomsProvider.notifier).setRooms(chatRooms);
      } else if (response.statusCode == 401) {
        print('error');
        return;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      rethrow;
    }
  }
  Future<void> createRoom(String roomName, WidgetRef ref) async {
    if (roomName.trim().isEmpty) {
      print('방 제목을 입력해 주세요.');
      return;
    }

    final url = '$baseUrl/chat/room';
    final params = {'itineraryId': roomName};

    try {
      final response = await _dio.post(url, data: params);

      if (response.statusCode == 200) {
        print('채팅방 개설 성공: ${response.data}');
        await findAllChatRoom(ref); // 새로운 방 생성 후 업데이트
      } else {
        print('채팅방 개설 실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
    }
  }
}


