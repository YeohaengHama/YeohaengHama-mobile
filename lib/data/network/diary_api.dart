import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/diary/vo_find_account_diary.dart'
    as FindAccountDiary;
import 'package:fast_app_base/data/entity/diary/vo_find_all_diary.dart'
    as FindAllDiary;

import 'package:fast_app_base/data/entity/diary/vo_save_diary.dart';
import 'package:fast_app_base/data/memory/diary/diary_find_all_proiver.dart';
import 'package:fast_app_base/data/memory/diary/diary_show_account_all_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants.dart';
import '../entity/diary/vo_detail_diary.dart';
import '../memory/diary/diary_detail_proiver.dart';
import '../memory/user_provider.dart';

final diaryApiProvider = Provider<DiaryApi>((ref) => DiaryApi());

class DiaryApi {
  final Dio _dio = Dio();
  final String baseUrl = serverUrl;

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
            final accountShowDTOJson =
                diaryJson['accountShowDTO'] as Map<String, dynamic>;
            final accountShowDTO =
                FindAccountDiary.AccountShowDTO.fromJson(accountShowDTOJson);
            return FindAccountDiary.FindAccountDiary(
              itineraryId: diaryJson['itineraryId'] as int,
              diaryId: diaryJson['diaryId'] as int,
              tag: (diaryJson['tag'] as List)
                  .map((tag) => tag.toString())
                  .toList(),
              date: diaryJson['date'] as String,
              title: diaryJson['title'] as String,
              content: diaryJson['content'] as String,
              photos: (diaryJson['photos'] as List)
                  .map((photo) => photo.toString())
                  .toList(),
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
            final accountShowDTOJson =
                diaryJson['accountShowDTO'] as Map<String, dynamic>;
            final accountShowDTO =
                FindAllDiary.AccountShowDTO.fromJson(accountShowDTOJson);
            return FindAllDiary.FindAllDiary(
              itineraryId: diaryJson['itineraryId'] as int,
              diaryId: diaryJson['diaryId'] as int,
              tag: (diaryJson['tag'] as List)
                  .map((tag) => tag.toString())
                  .toList(),
              date: diaryJson['date'] as String,
              title: diaryJson['title'] as String,
              content: diaryJson['content'] as String,
              photos: (diaryJson['photos'] as List)
                  .map((photo) => photo.toString())
                  .toList(),
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

  Future<void> showDetailDiary(int diaryId, WidgetRef ref) async {
    final _dio = Dio();
    final url = '$baseUrl/Diary/show?diaryId=$diaryId';


    try {
      final response = await _dio.post(url);

      if (response.statusCode == 200) {
        final jsonData = response.data['data'] as Map<String, dynamic>;

        final Map<String, dynamic> diaryJson = jsonData as Map<String, dynamic>;
        final accountShowDTOJson = diaryJson['account'] as Map<String, dynamic>;
        final account = Account.fromJson(accountShowDTOJson);

        final Map<int, List<Review>> reviews = {};
        if (diaryJson.containsKey('reviews')) {
          final reviewsJson = diaryJson['reviews'] as Map<String, dynamic>;
          reviewsJson.forEach((key, value) {
            final int contentId = int.parse(key);
            final List<dynamic> reviewListJson = value as List<dynamic>;
            final List<Review> reviewList = reviewListJson
                .map((reviewJson) =>
                Review.fromJson(reviewJson as Map<String, dynamic>))
                .toList();
            reviews[contentId] = reviewList;
          });
        }

        final detailDiary = DetailDiary(
          itinerary: diaryJson['itinerary'] as int,
          tag: (diaryJson['tag'] as List)
              .map((tag) => tag.toString())
              .toList(),
          date: DateTime.parse(diaryJson['date'] as String),
          title: diaryJson['title'] as String,
          content: diaryJson['content'] as String,
          photos: (diaryJson['photos'] as List)
              .map((photo) => photo.toString())
              .toList(),
          account: account,
          reviews: reviews,
        );

        ref.read(detailDiaryProvider.notifier).addDetailDiary(detailDiary);
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
