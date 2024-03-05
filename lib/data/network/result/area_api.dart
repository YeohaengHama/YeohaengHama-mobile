
import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_area.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final areaApiProvider = Provider<AreaApi>((ref) => AreaApi());

class AreaApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api/';


  Future<void> AreaSearchsData(Area area) async {
    final url = '$baseUrl/openApi/searchArea';

    try {
      final response = await _dio.post(
        url,
        data: {
          'numOfRows': area.numOfRows,
          'page': area.page,
          'keyword': area.keyword,
          'contentTypeId': area.contentTypeId,
          'mobileOs': area.mobileOs
        },
      );

      if (response.statusCode == 200) {
        print('검색 성공: ${response.data}');
      } else if (response.statusCode == 409) {
        print('검색 실패');
      } else {
        print('검색 실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
    }
  }
  
  
}