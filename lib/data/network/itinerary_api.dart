import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/itinerary/check_save_place/a_check_save_place.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_delete_place.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_pick_place.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_save_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

import '../entity/itinerary/a_add_pick_place.dart';
import '../entity/itinerary/a_check_itinerary.dart';
import '../entity/itinerary/a_creat_itinerary.dart';
import '../entity/open_api/open_api_detail.dart';

import '../memory/itinerary/itinerary_check_provider.dart';
import '../memory/itinerary/itinerary_created_provider.dart';
import '../memory/itinerary/show_save_place_provider.dart';

import '../memory/user_provider.dart';

final itineraryApiProvider = Provider<ItineraryApi>((ref) => ItineraryApi());

class ItineraryApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';
  final String testUrl = 'http://localhost:8080/api';
  final String jinUrl = 'http://172.16.111.158:8080/api';

  Future<void> postJoinItinerary(Itinerary itinerary,WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);

      final response = await _dio.post(
        '$baseUrl/itinerary/join/${accountNotifier.state!.id}',
        data: {
          'name': itinerary.name,
          'type': itinerary.type,
          'style': itinerary.itineraryStyle,
          'transportation': itinerary.transportation,
          'area': itinerary.area,
          'startDate': itinerary.startDate,
          'endDate': itinerary.endDate,
          'expense': itinerary.expense,
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = response.data['data'];
        print('일정 생성 완료');

        final CreateItinerary createItinerary = CreateItinerary(
          id: responseData['id'] as int,
          name: responseData['name'] as String,
          type: (responseData['type'] as List<dynamic>).map((type) => type as String).toList(),
          style: (responseData['style'] as List<dynamic>).map((style) => style as String).toList(),
          transportation: responseData['transportation'] as String?,
          area: responseData['area'] as String,
          startDate: responseData['startDate'] as String,
          endDate: responseData['endDate'] as String,
          expense: responseData['expense'] as String?,
        );

        ref.read(itineraryCreatedProvider.notifier).addItinerary(createItinerary);
        getItinerary(ref, createItinerary.id.toString());
        print(createItinerary);

      } else if (response.statusCode == 401) {
        throw Exception('실패. 상태 코드: ${response.statusCode}');
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


  Future<Response> postSavePlace(SavePlace savePlace, WidgetRef ref) async {
    try {
      print(savePlace.accountId.runtimeType);

      final response = await _dio.post(
          '$baseUrl/account/savePlace?accountId=${savePlace.accountId}',
          data: {
            'placeNum': savePlace.placeNum,
            'contentTypeId': savePlace.contentTypeId,
          });

      if (response.statusCode == 200) {
        await addShowSavePlace(ref);
        print('장소 저장 완료');
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

  Future<Response> postDeletePlace(
      DeletePlace deletePlace, WidgetRef ref) async {
    // &placeNum${deletePlace.placeNum}&contentTypeId${deletePlace.contentTypeId}
    try {
      final pickPlaceNotifier = ref.read(showPickPlaceApiResponseProvider.notifier);

      final response = await _dio.post(
        '$baseUrl/account/deletePlace?accountId=${deletePlace.accountId}',
        data: {
          'placeNum': deletePlace.placeNum,
          'contentTypeId': deletePlace.contentTypeId
        },
      );

      if (response.statusCode == 200) {
        await removeShowSavePlace(ref, deletePlace.placeNum);
        print('장소 삭제 완료');


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

  Future<bool> checkSavePlace(
      CheckSavePlace checkSavePlace, WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);

      final response = await _dio.post(
          '$baseUrl/account/checkSavePlace?accountId=${accountNotifier.state!.id}',
          data: {
            'placeNum': checkSavePlace.placeNum,
            'contentTypeId': checkSavePlace.contentTypeId
          });

      if (response.statusCode == 200) {
        final responseData = response.data as Map<String, dynamic>;
        final bool isSaved = responseData['data'] ?? false;
        return isSaved;
      } else if (response.statusCode == 401) {
        print('error');
        return false;
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

  Future<Map<String, dynamic>> pickPlaceContents(
      OpenApiDetail openApiDetail, WidgetRef ref) async {
    try {
      final response = await _dio.post(
        '$baseUrl/openApi/searchDetail',
        data: {
          'contentId': openApiDetail.contentId.toString(),
          'contentTypeId': openApiDetail.contentTypeId.toString(),
          'numOfRows': '1'.toString(),
          'pageNo': '1'.toString(),
          'mobileOS': '1'.toString(),
        },
      );

      if (response.statusCode == 200) {
        String responseDataString = response.data
            .toString()
            .replaceAll('<xmp>', '')
            .replaceAll('</xmp>', '');
        Map<String, dynamic> responseData = json.decode(responseDataString);

        final List<dynamic> items =
            responseData['response']['body']['items']['item'];
        if (items != null && items.isNotEmpty) {
          var item = items.first;
          final contentTypeId = item['contenttypeid'].toString();
          final contentId = item['contentid'].toString();
          final title = item['title'].toString();
          final addr1 = item['addr1'].toString();
          final firstImage = item['firstimage'].toString();

          // 성공적으로 가져온 항목의 값을 Map으로 반환
          return {
            'contentTypeId': contentTypeId,
            'contentId': contentId,
            'title': title,
            'addr1': addr1,
            'firstImage': firstImage,
          };
        } else {
          // 아이템이 없을 경우 null 반환
          return {};
        }
      } else if (response.statusCode == 401) {
        // 인증 실패 시 null 반환
        return {};
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }



  Future<Response> showSavePlace(WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);

      final response = await _dio.get(
        '$baseUrl/account/${accountNotifier.state!.id}',
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data; // 응답 데이터를 Map으로 가져옴
        List<dynamic> dataList = responseData['data'] as List<dynamic>;
        for (var data in dataList) {
          String placeNum = data['placeNum'].toString(); // placeNum 값 추출
          String contentTypeId =
              data['contentTypeId'].toString(); // contentTypeId 값 추출

          final openApiDetail = OpenApiDetail(
            contentId: placeNum,
            contentTypeId: contentTypeId,
            mobileOS: 'IOS',
          );

          // pickPlaceContents 함수 호출하여 title과 firstImage 값 가져오기
          Map<String, dynamic> contents =
              await pickPlaceContents(openApiDetail, ref);
          String title = contents['title'];
          String firstImage = contents['firstImage'];
          String addr1 = contents['addr1'];

          final pickPlace = PickPlace(
              contentId: placeNum,
              contentTypeId: contentTypeId,
              title: title,
              addr1: addr1,
              firstImage: firstImage);
          ref
              .read(showPickPlaceApiResponseProvider.notifier)
              .addOrRemovePickPlace(pickPlace);
        }
        return response;
      } else if (response.statusCode == 401) {
        print('error');
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    } finally {
      // container.dispose();
    }
  }
  Future<Response> addShowSavePlace(WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);

      final response = await _dio.get(
        '$baseUrl/account/${accountNotifier.state!.id}',
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data; // 응답 데이터를 Map으로 가져옴
        List<dynamic> dataList = responseData['data'] as List<dynamic>;
        for (var data in dataList) {
          String placeNum = data['placeNum'].toString(); // placeNum 값 추출
          String contentTypeId =
          data['contentTypeId'].toString(); // contentTypeId 값 추출

          final openApiDetail = OpenApiDetail(
            contentId: placeNum,
            contentTypeId: contentTypeId,
            mobileOS: 'IOS',
          );

          // pickPlaceContents 함수 호출하여 title과 firstImage 값 가져오기
          Map<String, dynamic> contents =
          await pickPlaceContents(openApiDetail, ref);
          String title = contents['title'];
          String firstImage = contents['firstImage'];
          String addr1 = contents['addr1'];

          final pickPlace = PickPlace(
              contentId: placeNum,
              contentTypeId: contentTypeId,
              title: title,
              addr1: addr1,
              firstImage: firstImage);
          ref
              .read(showPickPlaceApiResponseProvider.notifier)
              .addPickPlace(pickPlace);
        }
        return response;
      } else if (response.statusCode == 401) {
        print('error');
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    } finally {
      // container.dispose();
    }
  }
  Future<Response> removeShowSavePlace(WidgetRef ref, String removeId) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);

      final response = await _dio.get(
        '$baseUrl/account/${accountNotifier.state!.id}',
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data; // 응답 데이터를 Map으로 가져옴
        List<dynamic> dataList = responseData['data'] as List<dynamic>;
        for (var data in dataList) {
          String placeNum = data['placeNum'].toString(); // placeNum 값 추출
          String contentTypeId =
          data['contentTypeId'].toString(); // contentTypeId 값 추출

          final openApiDetail = OpenApiDetail(
            contentId: placeNum,
            contentTypeId: contentTypeId,
            mobileOS: 'IOS',
          );

          // pickPlaceContents 함수 호출하여 title과 firstImage 값 가져오기
          Map<String, dynamic> contents =
          await pickPlaceContents(openApiDetail, ref);
          String title = contents['title'];
          String firstImage = contents['firstImage'];
          String addr1 = contents['addr1'];

          print('아이디:${removeId}');
          ref
              .read(showPickPlaceApiResponseProvider.notifier)
              .removePickPlace(removeId);

        }
        return response;
      } else if (response.statusCode == 401) {
        print('error');
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    } finally {
      // container.dispose();
    }
  }
  Future<Response> getItinerary(WidgetRef ref, String id) async {
    try {
      final itineraryCreatedNotifier = ref.read(itineraryCreatedProvider.notifier);

      final response = await _dio.get(
        '$baseUrl/itinerary/${id}',
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data['data'];

        final CheckItinerary checkItinerary = CheckItinerary.fromJson(data);
        ref.read(itineraryCheckProvider.notifier).setItinerary!(checkItinerary);

        return response;
      } else if (response.statusCode == 401) {
        print('error');
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    } finally {
      // container.dispose();
    }
  }
  Future<Response> PostAddPickPlace(List<AddPickPlace> addPickPlaces, WidgetRef ref) async {
    try {
      final itineraryCheckNotifier = ref.read(itineraryCheckProvider.notifier);

      // 각 장소를 맵으로 변환하여 리스트에 추가
      List<Map<String, dynamic>> data = [];
      for (var addPickPlace in addPickPlaces) {
        data.add({
          'day': addPickPlace.day,
          'startTime': addPickPlace.startTime,
          'endTime': addPickPlace.endTime,
          'placeType': addPickPlace.placeType,
          'placeNum': addPickPlace.placeNum,
          'placeName': addPickPlace.placeName,
          'memo': addPickPlace.memo,
        });
      }

      final response = await _dio.post(
        '$baseUrl/itinerary/${itineraryCheckNotifier.state?.itineraryId}',
        data: data, // 리스트 전달
      );

      if (response.statusCode == 200) {
        print('일정에 장소 추가 완료');
        return response;
      } else if (response.statusCode == 401) {
        print('error');
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }



}
