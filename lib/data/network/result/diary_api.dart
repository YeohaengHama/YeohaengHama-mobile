import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/open_api/open_api_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/diary/vo_save_diary.dart';




final diaryApiProvider = Provider<DiaryApi>((ref) => DiaryApi());

class DiaryApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';

  Future<void> postDiary(SaveDiary diary, WidgetRef ref) async {
    final url = '$baseUrl/Diary/save';

    try {
      FormData formData = FormData.fromMap({
        'itinerary': diary.itinerary,
        'date': diary.date,
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

  // Future<void> showAllDiary( int id, int type, WidgetRef ref) async {
  //   final url = '$baseUrl/diary/showAll';
  //
  //   try {
  //     final response = await _dio.post(
  //       url,
  //       data: {
  //         'contentId': id,
  //         'contentTypeId': type,
  //       },
  //     );
  //
  //     if (response.statusCode == 200) {
  //       final jsonData = response.data['data'] as List<dynamic>;
  //       if (jsonData.isEmpty) {
  //         ref.read(DiaryShowAllListProvider.notifier).clearDiarys();
  //         print('리뷰 목록이 비어있습니다.');
  //       } else {
  //         final diarys = jsonData
  //             .map((json) =>
  //             DiaryShowAll.fromJson(json as Map<String, dynamic>))
  //             .toList();
  //         ref.read(DiaryShowAllListProvider.notifier).addDiary(diarys);
  //         print('리뷰 불러오기 성공: $diarys');
  //       }
  //     } else if (response.statusCode == 401) {
  //       print('error');
  //       return null;
  //     } else {
  //       print('실패. 상태 코드: ${response.statusCode}');
  //       throw Exception('실패. 상태 코드: ${response.statusCode}');
  //     }
  //   } catch (e) {
  //     ref.read(DiaryShowAllListProvider.notifier).clearDiarys();
  //     print('리뷰 목록이 비어있습니다.');
  //   }
  // }
}