
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_area.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/area/search_simple_result.dart';
import '../entity/open_api/open_api_area.dart';
import '../memory/simple_area_provider.dart';

final areaApiProvider = Provider<AreaApi>((ref) => AreaApi());

class AreaApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';


  Future<Response> postSearchArea(OpenApiArea openApiArea) async {
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
      final container = ProviderContainer();

      final simpleAreaNotifier = container.read(simpleAreaApiResponseProvider.notifier);

      // print('Response Data: ${response.data}');

      if (response.statusCode == 200) {
        // 성공적인 응답 데이터를 Dart Map으로 변환
        String responseDataString = response.data.toString().replaceAll('<xmp>', '').replaceAll('</xmp>', '');
// JSON 디코딩
        Map<String, dynamic> responseData = json.decode(responseDataString);

        // String addr1 = responseData['response']['body']['items']['item'][0]['addr1'];
        // print('주소1: $addr1');
        final List<dynamic> items = responseData['response']['body']['items']['item'];
        for (var item in items) {
          final contentTypeId = item['contenttypeid'].toString();
          final contentId = item['contentid'].toString();
          final title = item['title'].toString();
          final addr1 = item['addr1'].toString();
          final addr2 = item['addr2'].toString();
          final firstImage = item['firstimage'].toString();

          final searchSimpleResult = SearchSimpleResult(
            contentTypeId: contentTypeId,
            contentId: contentId,
            title: title,
            addr1: addr1,
            addr2: addr2,
            firstImage: firstImage,
          );
          simpleAreaNotifier.addSimpleArea(searchSimpleResult);
          print(searchSimpleResult);
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
      // 예외 발생 시에도 Future를 반환하여 호출자에게 예외 정보를 전달할 수 있도록 합니다.
      throw e;
    }
  }

}