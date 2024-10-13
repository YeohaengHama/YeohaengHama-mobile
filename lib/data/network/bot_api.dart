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
      });

      final response = await _dio.post(
        url,
        data: formData,
      );

      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final type = data['type'] as String;

        // ChatbotResponse를 제네릭 타입으로 변환하는 부분
        ChatbotResponse<dynamic> chatbotResponse;

        switch (type) {
          case 'searchKeyword':
            chatbotResponse = ChatbotResponse<List<Place>>.fromJson(
              data,
                  (json) => (json as List<dynamic>)
                  .map((e) => Place.fromJson(e as Map<String, dynamic>))
                  .toList(),
            );
            break;

          case 'searchShorts':
          case 'randomShorts':
            chatbotResponse = ChatbotResponse<Shorts>.fromJson(
              data,
                  (json) => Shorts.fromJson(json as Map<String, dynamic>),
            );
            break;

          case 'searchItinerary':
          case 'randomItinerary':
            chatbotResponse = ChatbotResponse<Itinerary>.fromJson(
              data,
                  (json) => Itinerary.fromJson(json as Map<String, dynamic>),
            );
            break;

          case 'searchDiary':
          case 'randomDiary':
            chatbotResponse = ChatbotResponse<Diary>.fromJson(
              data,
                  (json) => Diary.fromJson(json as Map<String, dynamic>),
            );
            break;

          case 'randomPlace':
            chatbotResponse = ChatbotResponse<RandomPlace>.fromJson(
              data,
                  (json) => RandomPlace.fromJson(json as Map<String, dynamic>),
            );
            break;

          case 'randomArea':
            chatbotResponse = ChatbotResponse<RandomArea>.fromJson(
              data,
                  (json) => RandomArea.fromJson(json as Map<String, dynamic>),
            );
            break;

        // message 타입 처리 추가
          case 'message':
            chatbotResponse = ChatbotResponse<Null>.fromJson(
              data,
                  (json) => null, // result가 없기 때문에 null로 처리
            );
            break;

          default:
            chatbotResponse = ChatbotResponse<Null>.fromJson(
              data,
                  (json) => null, // default의 경우도 result는 null로 처리
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
      print('Error occurred: $e');
      throw Exception('서버와 통신이 원할하지 않습니다. 잠시 후 다시 시도해주세요.');
      rethrow;
    }
  }
}
