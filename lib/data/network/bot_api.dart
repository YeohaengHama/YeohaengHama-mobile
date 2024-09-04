import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../common/common.dart';
import '../entity/bot/chat_bot.dart';
import '../memory/account/user_provider.dart';
import '../memory/bot/p_chat_bot.dart';

final botApiProvider = Provider<BotApi>((ref) => BotApi());

class BotApi {
  final Dio _dio = Dio();
  final String baseUrl = serverUrl;

  Future<void> askBot(String question, WidgetRef ref) async {
    final account = ref.read(accountProvider);
    final url = '$baseUrl/chatAI/ask';

    try {
      // FormData 객체 생성
      final formData = FormData.fromMap({
        'question': question,
        // 필요한 추가 필드를 여기에 추가할 수 있습니다.
        // 예: 'userId': account.userId,
      });

      final response = await _dio.post(
        url,
        data: formData,
      );

      if (response.statusCode == 200) {
        // API 응답을 파싱하여 ChatbotResponse로 변환
        final data = response.data as Map<String, dynamic>;
        final type = data['type'] as String;

        // ChatbotResponse를 제네릭 타입으로 변환하는 함수를 정의합니다.
        ChatbotResponse<dynamic> chatbotResponse;

        switch (type) {
          case 'showDiaryAll':
            chatbotResponse = ChatbotResponse<ShowDiaryAllResult>.fromJson(
              data,
                  (json) => ShowDiaryAllResult.fromJson(json as Map<String, dynamic>),
            );
            break;
          case 'showDiaryPlace':
            chatbotResponse = ChatbotResponse<ShowDiaryPlaceResult>.fromJson(
              data,
                  (json) => ShowDiaryPlaceResult.fromJson(json as Map<String, dynamic>),
            );
            break;
          case 'showPopularArea':
            chatbotResponse = ChatbotResponse<ShowPopularAreaResult>.fromJson(
              data,
                  (json) => ShowPopularAreaResult.fromJson(json as Map<String, dynamic>),
            );
            break;
          case 'classifying':
          default:
            chatbotResponse = ChatbotResponse<Null>.fromJson(
              data,
                  (json) => null as Null,
            );
            break;
        }

        // 상태 관리에 ChatbotResponse를 업데이트
        ref.read(chatbotResponseNotifierProvider.notifier).setResponse(chatbotResponse);
      } else if (response.statusCode == 401) {
        print('Unauthorized access');
      } else {
        print('Failed with status code: ${response.statusCode}');
        throw Exception('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('An exception occurred: $e');
      throw e;
    }
  }
}
