
import 'package:dio/dio.dart';
import 'package:fast_app_base/data/memory/search/search_simple_diary_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants.dart';
import '../../screen/client/main/search/provider/is_loading_provider.dart';
import '../entity/account/show_all_account.dart';
import '../entity/search/vo_search_diary_area.dart' as SearchDiaryArea;
import '../entity/shorts/vo_shorts_read.dart';
import '../memory/account/all_account_provider.dart';
import '../memory/shorts/p_shorts_search.dart';

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
  Future<void> searchShorts(String area, WidgetRef ref) async {
    final url = '$baseUrl/shorts/search';
    final dio = Dio();

    try {
      final formData = FormData.fromMap({
        'area': area,

      });

      final response = await _dio.get(
        url,
        data: formData,
      );


      if (response.statusCode == 200) {
        final data = response.data['data'];
        final shortsRead = ShortsRead.fromJson(data);
        final _shortsSearchProvider = ref.read(shortsSearchProvider.notifier);
        _shortsSearchProvider.state = shortsRead;
        print(data);
      } else if (response.statusCode == 401) {
        print('Unauthorized');
      } else {
        print('Failed with status code: ${response.statusCode}');
        throw Exception('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('An exception occurred: $e');
      throw e;
    }
  }
  Future<void> searchAccount(WidgetRef ref, String name) async {
    final url = '$baseUrl/search/account';

    try {
      final response = await _dio.post(
          url,
          data: {
            "keyWord": name,
            "numOfRows": 3,
            "page": 0
          }
      );

      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];
        List<ShowAllAccount> accounts = data.map((account) => ShowAllAccount.fromJson(account)).toList();
        print(accounts);
        final accountProvider = ref.read(allAccountProvider.notifier);
        accountProvider.addAccount(accounts);
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('유저 목록이 비어있습니다.');
    }
  }
  }