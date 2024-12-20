import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/open_api/open_api_area_location.dart';
import 'package:fast_app_base/data/entity/open_api/open_api_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants.dart';
import '../entity/area/saerch_image_result.dart';
import '../entity/area/search_simple_restaurant_result.dart';
import '../entity/area/search_simple_toursim_result.dart';
import '../entity/area/serch_detail_result.dart';
import '../entity/open_api/open_api_area.dart';
import '../entity/open_api/open_api_detail.dart';
import '../entity/open_api/search_location_result.dart';
import '../memory/area/area_detail_provider.dart';
import '../memory/area/area_image_provider.dart';
import '../memory/area/search_location_result_provider.dart';
import '../memory/search/p_search_random_area.dart';
import '../memory/search/search_simple_area_provider.dart';
import '../memory/search/search_simple_restaurant_provider.dart';



final areaApiProvider = Provider<AreaApi>((ref) => AreaApi());

class AreaApi {
  final Dio _dio = Dio();
  final String baseUrl =
      serverUrl;
  Future<Response> searchRandomArea(OpenApiArea openApiArea, WidgetRef ref) async {
    final randomAreaNotifier = ref.read(randomAreaApiResponseProvider.notifier);

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
        Map<String, dynamic> responseData = response.data;
        final List<dynamic> items = responseData['data']['place'];
        final List<SearchSimpleTourismResult> results = [];

        for (var item in items) {
          final contentTypeId = item['contenttypeid'].toString();
          final contentId = item['contentid'].toString();
          final title = item['title'].toString();
          final addr1 = item['addr1'].toString();
          final addr2 = item['addr2'].toString();
          final firstimage = item['firstimage'].toString();

          final searchSimpleTourismResult = SearchSimpleTourismResult(
            contentTypeId: contentTypeId,
            contentId: contentId,
            title: title,
            addr1: addr1,
            addr2: addr2,
            firstimage: firstimage,
          );

          results.add(searchSimpleTourismResult);
        }
        randomAreaNotifier.resetSimpleAreas();

        // 여러 항목을 한 번에 추가
        randomAreaNotifier.addSimpleAreas(results);

        return response;
      } else if (response.statusCode == 401) {
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }

  Future<Response> postSearchTourismArea(OpenApiArea openApiArea, WidgetRef ref) async {
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
        Map<String, dynamic> responseData = response.data;
        final List<dynamic> items = responseData['data']['place'];
        final List<SearchSimpleTourismResult> results = [];

        for (var item in items) {
          final contentTypeId = item['contenttypeid'].toString();
          final contentId = item['contentid'].toString();
          final title = item['title'].toString();
          final addr1 = item['addr1'].toString();
          final addr2 = item['addr2'].toString();
          final firstimage = item['firstimage'].toString();

          final searchSimpleTourismResult = SearchSimpleTourismResult(
            contentTypeId: contentTypeId,
            contentId: contentId,
            title: title,
            addr1: addr1,
            addr2: addr2,
            firstimage: firstimage,
          );

          results.add(searchSimpleTourismResult);
        }
        simpleAreaNotifier.resetSimpleAreas();

        // 여러 항목을 한 번에 추가
        simpleAreaNotifier.addSimpleAreas(results);

        return response;
      } else if (response.statusCode == 401) {
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }

  Future<Response> postSearchRestaurantArea(OpenApiArea openApiArea, WidgetRef ref) async {
    final simpleAreaRestaurantNotifier = ref.read(simpleAreaRestaurantApiResponseProvider.notifier);

    try {
      final response = await _dio.post(
        '$baseUrl/openApi/searchArea',
        data: {
          'numOfRows': 100,
          'page': openApiArea.page,
          'keyword': openApiArea.keyword,
          'contentTypeId': openApiArea.contentTypeId,
          'mobileOS': openApiArea.mobileOS,
        },
      );

      if (response.statusCode == 200) {

        Map<String, dynamic> responseData = response.data; // 수정된 부분
        final List<dynamic> items = responseData['data']['place'];
        for (var item in items) {
          final contentTypeId = item['contenttypeid'].toString();
          final contentId = item['contentid'].toString();
          final title = item['title'].toString();
          final addr1 = item['addr1'].toString();
          final addr2 = item['addr2'].toString();
          final firstimage = item['firstimage'].toString();


          final searchSimpleRestaurantResult = SearchSimpleRestaurantResult(
            contentTypeId: contentTypeId,
            contentId: contentId,
            title: title,
            addr1: addr1,
            addr2: addr2,
            firstimage: firstimage,

          );
          simpleAreaRestaurantNotifier.addSimpleArea(searchSimpleRestaurantResult);
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
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }
  Future<Response> postDiaryArea(OpenApiArea openApiArea, WidgetRef ref) async {
    final simpleAreaRestaurantNotifier = ref.read(simpleAreaRestaurantApiResponseProvider.notifier);

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

          final searchSimpleRestaurantResult = SearchSimpleRestaurantResult(
            contentTypeId: contentTypeId,
            contentId: contentId,
            title: title,
            addr1: addr1,
            addr2: addr2,
            firstimage: firstimage,

          );
          simpleAreaRestaurantNotifier.addSimpleArea(searchSimpleRestaurantResult);
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
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }


  Future<Response> postDetailArea(OpenApiDetail openApiDetail, WidgetRef ref) async {
    final detailAreaNotifier = ref.read(DetailAreaApiResponseProvider.notifier);

    try {
      final response = await _dio.post(
        '$baseUrl/openApi/searchDetail',
        data: {
          'contentId': openApiDetail.contentId,
          'contentTypeId': openApiDetail.contentTypeId,
          'numOfRows': openApiDetail.numOfRows,
          'page': openApiDetail.page,
          'mobileOS': openApiDetail.mobileOS,
        },
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;

        final item = responseData['data'];


          final contentTypeId = item['contenttypeid'].toString();
          final contentId = item['contentid'].toString();
          final title = item['title'].toString();
          final addr1 = item['addr1'].toString();
          final addr2 = item['addr2'].toString();
          final overView = item['overview'].toString();
          final mapX = item['mapx'].toString();
          final mapY = item['mapy'].toString();

          final searchDetailResult = SearchDetailResult(
            contentTypeId: contentTypeId,
            contentId: contentId,
            title: title,
            addr1: addr1,
            addr2: addr2,
            overView: overView,
            mapX: mapX,
            mapY: mapY
          );
          detailAreaNotifier.addDetailArea(searchDetailResult);
          print(searchDetailResult);

        return response;
      } else if (response.statusCode == 401) {
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }
  Future<Response> postAreaImage(OpenApiImage openApiImage, WidgetRef ref) async {
    final areaImageNotifier = ref.read(AreaImageApiResponseProvider.notifier);

    try {
      final response = await _dio.post(
        '$baseUrl/openApi/searchImage',
        data: {
          'contentId': openApiImage.contentId,
          'numOfRows': openApiImage.numOfRows,
          'pageNo': openApiImage.pageNo,
          'mobileOS': openApiImage.mobileOS,
        },
      );

      if (response.statusCode == 200) {
        String responseDataString = response.data.toString().replaceAll('<xmp>', '').replaceAll('</xmp>', '');
        Map<String, dynamic> responseData = json.decode(responseDataString);

        final dynamic itemsData = responseData['response']['body']['items'];

        if (itemsData != "") {
          // 데이터가 있는 경우
          final dynamic items = itemsData['item'];
          if (items != null && items is List && items.isNotEmpty) {
            for (var item in items) {
              final originImgUrl = item['originimgurl'].toString();
              final smallImgUrl = item['smallimageurl'].toString();

              final searchImageResult = SearchImageResult(
                  imagesUrl: [originImgUrl, smallImgUrl]
              );
              areaImageNotifier.addAreaImage(searchImageResult);
              print(searchImageResult);
            }
          } else {
            // Handle the case where 'item' is empty or not present
            const searchImageResult = SearchImageResult(
                imagesUrl: [''] // Add an empty string to imagesUrl
            );
            areaImageNotifier.addAreaImage(searchImageResult);
            print(searchImageResult);
          }
        } else {
          // 데이터가 없는 경우
          const searchImageResult = SearchImageResult(
              imagesUrl: [''] // Add an empty string to imagesUrl
          );
          areaImageNotifier.addAreaImage(searchImageResult);
          print(searchImageResult);
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
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }
  Future<Response> searchLocationList(OpenApiAreaLocation openApiAreaLocation, WidgetRef ref) async {
    final searchLocationNotifier = ref.read(searchLocationProvider.notifier);

    try {
      final response = await _dio.post(
        '$baseUrl/openApi/searchLocation',
        data: {
          'numOfRows': '500',
          'page': 0,
          'mapX' : openApiAreaLocation.mapX,
          'mapY': openApiAreaLocation.mapY,
          'radius': openApiAreaLocation.radius,
          'contentTypeId' : openApiAreaLocation.contentTypeId,
          'mobileOS': openApiAreaLocation.mobileOS,
        },
      );

      if (response.statusCode == 200) {
        String responseDataString = response.data.toString().replaceAll('<xmp>', '').replaceAll('</xmp>', '');
        Map<String, dynamic> responseData = json.decode(responseDataString);

        final List<dynamic> items = responseData['response']['body']['items']['item'];
        List<SearchLocationResult> locations = items.map((item) => SearchLocationResult.fromJson(item)).toList();
        print(locations);
        searchLocationNotifier.setSearchLocations(locations);

        return response;
      } else if (response.statusCode == 401) {
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }

}
