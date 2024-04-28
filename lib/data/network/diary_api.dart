
import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/diary/vo_find_account_diary.dart' as FindAccountDiary;
import 'package:fast_app_base/data/entity/diary/vo_find_all_diary.dart' as FindAllDiary;

import 'package:fast_app_base/data/entity/diary/vo_save_diary.dart';
import 'package:fast_app_base/data/memory/diary/diary_find_all_proiver.dart';
import 'package:fast_app_base/data/memory/diary/diary_show_account_all_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../memory/user_provider.dart';


final diaryApiProvider = Provider<DiaryApi>((ref) => DiaryApi());

class DiaryApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';

  Future<void> saveDiary(SaveDiary diary) async {
    final url = '$baseUrl/Diary/save';

    try {
      FormData formData = FormData.fromMap({
        'itinerary': diary.itinerary,
        'title': diary.title,
        'content': diary.content,
        for (int i = 0; i < diary.photos!.length; i++)
          'photos[$i]': await MultipartFile.fromFile(diary.photos![i]),
      });

      final response = await _dio.post(
        url,
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
      );

      if (response.statusCode == 200) {
        print('일기쓰기 성공: ${response.data}');
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }



  Future<void> showAccountAllDiary(int accountId, WidgetRef ref) async {
    final url = '$baseUrl/Diary/findAccountDiary?accountId=${accountId}';

    try {
      final response = await _dio.post(
        url,
      );

      if (response.statusCode == 200) {
        final jsonData = response.data['data'] as List<dynamic>;
        if (jsonData.isEmpty) {
          ref.read(DiaryFindAccountAllProvider.notifier).clearDiarys();
          print('일기 목록이 비어있습니다.');
        } else {
          final diarys = jsonData.map((json) {
            final Map<String, dynamic> diaryJson = json as Map<String, dynamic>;
            final accountShowDTOJson = diaryJson['accountShowDTO'] as Map<String, dynamic>;
            final accountShowDTO = FindAccountDiary.AccountShowDTO.fromJson(accountShowDTOJson);
            return FindAccountDiary.FindAccountDiary(
              itineraryId: diaryJson['itineraryId'] as int,
              diaryId: diaryJson['diaryId'] as int,
              tag: (diaryJson['tag'] as List).map((tag) => tag.toString()).toList(),
              date: diaryJson['date'] as String,
              title: diaryJson['title'] as String,
              content: diaryJson['content'] as String,
              photos: (diaryJson['photos'] as List).map((photo) => photo.toString()).toList(),
              accountShowDTO: accountShowDTO,
            );
          }).toList();
          ref.read(DiaryFindAccountAllProvider.notifier).addDiary(diarys);
          print('일기 불러오기 성공: $diarys');
        }
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print(e);
      ref.read(DiaryFindAccountAllProvider.notifier).clearDiarys();

    }
  }
  Future<void> showAllDiary(WidgetRef ref) async {
    final url = '$baseUrl/Diary/findAll';

    try {
      final response = await _dio.post(
        url,
      );

      if (response.statusCode == 200) {
        final jsonData = response.data['data'] as List<dynamic>;
        if (jsonData.isEmpty) {
          ref.read(DiaryFindAllProvider.notifier).clearDiarys();
          print('일기 목록이 비어있습니다.');
        } else {
          final diarys = jsonData.map((json) {
            final Map<String, dynamic> diaryJson = json as Map<String, dynamic>;
            final accountShowDTOJson = diaryJson['accountShowDTO'] as Map<String, dynamic>;
            final accountShowDTO = FindAllDiary.AccountShowDTO.fromJson(accountShowDTOJson);
            return FindAllDiary.FindAllDiary(
              itineraryId: diaryJson['itineraryId'] as int,
              diaryId: diaryJson['diaryId'] as int,
              tag: (diaryJson['tag'] as List).map((tag) => tag.toString()).toList(),
              date: diaryJson['date'] as String,
              title: diaryJson['title'] as String,
              content: diaryJson['content'] as String,
              photos: (diaryJson['photos'] as List).map((photo) => photo.toString()).toList(),
              accountShowDTO: accountShowDTO,
            );
          }).toList();
          ref.read(DiaryFindAllProvider.notifier).addDiary(diarys);
          print('일기 불러오기 성공: $diarys');
        }
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      ref.read(DiaryFindAccountAllProvider.notifier).clearDiarys();
      print('일기 목록이 비어있습니다.');
    }
  }
}