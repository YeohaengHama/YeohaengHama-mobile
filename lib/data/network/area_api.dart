import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/area/search_simple_result.dart';
import '../entity/open_api/open_api_area.dart';
import '../memory/simple_area_provider.dart';

final areaApiProvider = Provider<AreaApi>((ref) => AreaApi());

class AreaApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';


  Future<Response> postSearchArea(OpenApiArea openApiArea, WidgetRef ref) async {
    final simpleAreaNotifier = ref.read(simpleAreaApiResponseProvider.notifier);

    try {
      final response = await _dio.post(
        '$baseUrl/openApi/searchArea',
        data: {
          'numOfRows': openApiArea.numOfRows,
          'page': openApiArea.page,
          'keyword': openApiArea.keyword,
          'contentTypeId': openApiArea.contentTypeId,
          'mobileOS': openApiArea.mobileOS,
        },
      );

      if (response.statusCode == 200) {
        String responseDataString = response.data.toString().replaceAll('<xmp>', '').replaceAll('</xmp>', '');
        Map<String, dynamic> responseData = json.decode(responseDataString);

        final List<dynamic> items = responseData['response']['body']['items']['item'];
        for (var item in items) {
          final contentTypeId = item['contenttypeid'].toString();
          final contentId = item['contentid'].toString();
          final title = item['title'].toString();
          final addr1 = item['addr1'].toString();
          final addr2 = item['addr2'].toString();
          final firstimage = item['firstimage'].toString();

          final searchSimpleResult = SearchSimpleResult(
            contentTypeId: contentTypeId,
            contentId: contentId,
            title: title,
            addr1: addr1,
            addr2: addr2,
            firstimage: firstimage,
          );
          simpleAreaNotifier.addSimpleArea(searchSimpleResult);
        }
        return response;
      } else if (response.statusCode == 401) {
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }
}
