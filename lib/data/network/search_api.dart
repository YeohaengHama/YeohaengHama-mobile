
import 'package:dio/dio.dart';
import 'package:fast_app_base/data/memory/search/search_simple_diary_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants.dart';
import '../../screen/client/main/search/provider/is_loading_provider.dart';
import '../entity/search/vo_search_diary_area.dart' as SearchDiaryArea;

final SearchApiProvider = Provider<SearchApi>((ref) => SearchApi());

class SearchApi {
  final Dio _dio = Dio();
  final String baseUrl =
      serverUrl;


  Future<void> searchDiaryArea(String keyword, WidgetRef ref) async {
    final url = '$baseUrl/search/diaryArea';

    try {
      final response = await _dio.post(
        url,
        data: {
          'keyWord': keyword,
          'numOfRows': 30,
          'page' : 0,
        },
      );

      if (response.statusCode == 200) {
        final isLoading = ref.read(isLoadingProvider.notifier);
        final jsonData = response.data['data']['searchDiaryDTOS'] as List<dynamic>;
        print(jsonData);
        if (jsonData.isEmpty) {
          ref.read(SearchDiaryAreaProvider.notifier).clearDiarys();
          isLoading.setLoading(false);
          print('일기 목록이 비어있습니다.');
        } else {
          final diarys = jsonData.map((json) {
            final Map<String, dynamic> diaryJson = json as Map<String, dynamic>;
            final accountShowDTOJson = diaryJson['account'] as Map<String, dynamic>; // 'account' 키로 수정
            final accountShowDTO = SearchDiaryArea.AccountShowDTO.fromJson(accountShowDTOJson);
            return SearchDiaryArea.SearchDiaryArea(
              itinerary: diaryJson['itinerary'] as int,
              diary: diaryJson['diary'] as int,
              tag: (diaryJson['tag'] as List).map((tag) => tag.toString()).toList(),
              date: diaryJson['date'] as String,
              title: diaryJson['title'] as String,
              content: diaryJson['content'] as String,
              photos: (diaryJson['photos'] as List).map((photo) => photo.toString()).toList(),
              accountShowDTO: accountShowDTO,
            );
          }).toList();

          ref.read(SearchDiaryAreaProvider.notifier).addDiary(diarys);

          isLoading.setLoading(false);
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
      ref.read(SearchDiaryAreaProvider.notifier).clearDiarys();

    }
  }
  }