import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/open_api/open_api_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/area/saerch_image_result.dart';
import '../entity/area/search_simple_restaurant_result.dart';
import '../entity/area/search_simple_toursim_result.dart';
import '../entity/area/serch_detail_result.dart';
import '../entity/open_api/open_api_area.dart';
import '../entity/open_api/open_api_detail.dart';
import '../memory/area/area_detail_provider.dart';
import '../memory/area/area_image_provider.dart';
import '../memory/area/area_simple_provider.dart';
import '../memory/area/area_simple_restaurant_provider.dart';


final areaApiProvider = Provider<AreaApi>((ref) => AreaApi());

class AreaApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';


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

          final searchSimpleTourismResult = SearchSimpleTourismResult(
            contentTypeId: contentTypeId,
            contentId: contentId,
            title: title,
            addr1: addr1,
            addr2: addr2,
            firstimage: firstimage,

          );
          simpleAreaNotifier.addSimpleArea(searchSimpleTourismResult);
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
  Future<Response> postSearchRestaurantArea(OpenApiArea openApiArea, WidgetRef ref) async {
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
      throw e;
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
        String responseDataString = response.data.toString().replaceAll('<xmp>', '').replaceAll('</xmp>', '');
        Map<String, dynamic> responseData = json.decode(responseDataString);

        final List<dynamic> items = responseData['response']['body']['items']['item'];
        for (var item in items) {
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

        final dynamic itemsData = responseData['response']['body']['items']['item'];

        if (itemsData != null && itemsData is List && itemsData.isNotEmpty) {
          final List<dynamic> items = itemsData;
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
          // Handle the case where 'items' is empty or not present
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
      throw e;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }

}
