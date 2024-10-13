
import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/itinerary/check_save_place/a_check_save_place.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_delete_place.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_pick_place.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_save_place.dart';
import 'package:fast_app_base/data/entity/menu/all_itinerary.dart';
import 'package:fast_app_base/data/network/budget_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants.dart';
import '../entity/itinerary/a_add_pick_place.dart';
import '../entity/itinerary/a_check_itinerary.dart';
import '../entity/itinerary/a_creat_itinerary.dart';
import '../entity/open_api/open_api_detail.dart';

import '../memory/itinerary/add_pick_each_place_provider.dart';
import '../memory/itinerary/itinerary_check_provider.dart';
import '../memory/itinerary/itinerary_created_provider.dart';
import '../memory/itinerary/itinerary_show_all_provider.dart';
import '../memory/itinerary/share_itinerary_list_provider.dart';
import '../memory/itinerary/show_save_place_provider.dart';

import '../memory/account/user_provider.dart';
import 'package:http/http.dart' as http;
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';  // MediaType 사용을 위한 임포트

final itineraryApiProvider = Provider<ItineraryApi>((ref) => ItineraryApi());

class ItineraryApi {
  final Dio _dio = Dio();
  final String baseUrl = serverUrl;
  final String testUrl = 'http://localhost:8080/api';
  final String jinUrl = 'http://172.16.111.158:8080/api';

  Future<void> postJoinItinerary(Itinerary itinerary, WidgetRef ref) async {
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
        final budgetApi = BudgetApi();

        final CreateItinerary createItinerary = CreateItinerary(
          id: responseData['id'] as int,
          name: responseData['name'] as String,
          type: (responseData['type'] as List<dynamic>)
              .map((type) => type as String)
              .toList(),
          style: (responseData['style'] as List<dynamic>)
              .map((style) => style as String)
              .toList(),
          transportation: responseData['transportation'] as String?,
          area: responseData['area'] as String,
          startDate: responseData['startDate'] as String,
          endDate: responseData['endDate'] as String,
        );

        ref
            .read(itineraryCreatedProvider.notifier)
            .addItinerary(createItinerary);
        await budgetApi.createBudget(createItinerary.id, ref);
        await getItinerary(ref, createItinerary.id.toString());

        print('일정 생성 완료');

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
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }

  Future<void> editItinerary(Itinerary itinerary, WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);
      final itineraryProvider = ref.read(itineraryCheckProvider);
      final response = await _dio.post(
        '$baseUrl/itinerary/update?accountId=${accountNotifier.state!.id}&itineraryId=${itineraryProvider!.itineraryId}',
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
        await getItinerary(ref, itineraryProvider.itineraryId.toString());
        print('일정 수정 완료');
      } else if (response.statusCode == 401) {
        throw Exception('실패. 상태 코드: ${response.statusCode}');
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

  Future<Response> postSavePlace(SavePlace savePlace, WidgetRef ref) async {
    try {
      print(savePlace.accountId.runtimeType);
      final itinerary = ref.read(itineraryCheckProvider);
      final response = await _dio.post(
          '$baseUrl/account/savePlace?accountId=${savePlace.accountId}',
          data: {
            'itineraryId': int.parse(itinerary!.itineraryId.toString()),
            'placeNum': savePlace.placeNum,
            'contentTypeId': savePlace.contentTypeId,
          });

      if (response.statusCode == 200) {
        await addShowSavePlace(ref);
        const snackBar = SnackBar(
          content: Text('장소가 저장되었습니다..'),
          duration: Duration(seconds: 2),
          backgroundColor: AppColors.mainPurple,
        );
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
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }

  Future<Response> postDeletePlace(
      DeletePlace deletePlace, WidgetRef ref) async {
    // &placeNum${deletePlace.placeNum}&contentTypeId${deletePlace.contentTypeId}
    try {
      final pickPlaceNotifier =
          ref.read(showPickPlaceApiResponseProvider.notifier);

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
      rethrow;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }

  Future<bool> checkSavePlace(
      CheckSavePlace checkSavePlace, WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);
      final itinerary = ref.read(itineraryCheckProvider);

      final response = await _dio.post(
          '$baseUrl/account/checkSavePlace?accountId=${accountNotifier.state!.id}',
          data: {
            'itineraryId': int.parse(itinerary!.itineraryId.toString()),
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
      rethrow;
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
        Map<String, dynamic> responseData = response.data;

        final item = responseData['data'];

        if (item != null && item.isNotEmpty) {
          final contentTypeId = item['contenttypeid'].toString();
          final contentId = item['contentid'].toString();
          final title = item['title'].toString();
          final addr1 = item['addr1'].toString();
          final mapx = item['mapx'].toString();
          final mapy = item['mapy'].toString();
          final firstImage = item['firstimage'].toString();

          // 성공적으로 가져온 항목의 값을 Map으로 반환
          return {
            'contentTypeId': contentTypeId,
            'contentId': contentId,
            'title': title,
            'addr1': addr1,
            'mapx': mapx,
            'mapy': mapy,
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
      rethrow;
    }
  }

  Future<Response> showSavePlace(WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);
      final itinerary = ref.read(itineraryCheckProvider);

      final response = await _dio.post(
          '$baseUrl/account/${accountNotifier.state!.id}',
          data: {"itineraryId": itinerary!.itineraryId});
      if (response.statusCode == 200) {
        // final jsonData = response.data['data'] as List<dynamic>;
        //
        // final pickPlace = jsonData
        //       .map((json) =>
        //     PickPlace.fromJson(json as Map<String, dynamic>))
        //       .toList();
        // ref.read(showPickPlaceApiResponseProvider.notifier)
        //     .addOrRemovePickPlace(pickPlace);
        //
        // }
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
          String mapx = contents['mapx'];
          String mapy = contents['mapy'];

          final pickPlace = PickPlace(
              contentId: placeNum,
              contentTypeId: contentTypeId,
              title: title,
              addr1: addr1,
              mapx: mapx,
              mapy: mapy,
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
      rethrow;
    } finally {
      // container.dispose();
    }
  }

  Future<Response> addShowSavePlace(WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);

      final itinerary = ref.read(itineraryCheckProvider);

      final response = await _dio.post(
          '$baseUrl/account/${accountNotifier.state!.id}',
          data: {"itineraryId": itinerary!.itineraryId});
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
          String mapx = contents['mapx'];
          String mapy = contents['mapy'];

          final pickPlace = PickPlace(
              contentId: placeNum,
              contentTypeId: contentTypeId,
              title: title,
              addr1: addr1,
              mapx: mapx,
              mapy: mapy,
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
      rethrow;
    } finally {
      // container.dispose();
    }
  }

  Future<Response> removeShowSavePlace(WidgetRef ref, String removeId) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);
      final itinerary = ref.read(itineraryCheckProvider);

      final response = await _dio.post(
          '$baseUrl/account/${accountNotifier.state!.id}',
          data: {"itineraryId": itinerary!.itineraryId});
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

          print('아이디:$removeId');
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
      rethrow;
    } finally {
      // container.dispose();
    }
  }

  Future<Response> getItinerary(WidgetRef ref, String id) async {
    try {
      final itineraryCreatedNotifier =
          ref.read(itineraryCreatedProvider.notifier);

      final response = await _dio.get(
        '$baseUrl/itinerary/$id',
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data['data'];

        final CheckItinerary checkItinerary = CheckItinerary.fromJson(data);
        ref.read(itineraryCheckProvider.notifier).setItinerary(checkItinerary);
        await PostAddNewEachPickPlace(ref);

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
      rethrow;
    } finally {
      // container.dispose();
    }
  }

  Future<Response> PostAddPickPlace(
      List<AddPickPlace> addPickPlaces, WidgetRef ref) async {
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
        '$baseUrl/itinerary/joinPlaces/${itineraryCheckNotifier.state?.itineraryId}',
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
      rethrow;
    }
  }




  Future<Response> PostAddEachPickPlace(
      WidgetRef ref, AddPickPlace addPickPlace, int? placeOrder) async {
    try {
      final itineraryCheckNotifier = ref.read(itineraryCheckProvider.notifier);
      Response response;

      // FormData 생성
      FormData formData = FormData();
      if (placeOrder == null) {
        formData.fields.addAll([
          MapEntry('day', addPickPlace.day.toString()),
          MapEntry('startTime', addPickPlace.startTime ?? 'string'),
          MapEntry('endTime', addPickPlace.endTime ?? 'string'),
          MapEntry('placeType', addPickPlace.placeType),
          MapEntry('placeNum', addPickPlace.placeNum.toString()),
          MapEntry('placeName', addPickPlace.placeName!),
          MapEntry('addr1', addPickPlace.addr1),
          MapEntry('mapx', addPickPlace.mapx.toString()),
          MapEntry('mapy', addPickPlace.mapy.toString()),
          MapEntry('memo', addPickPlace.memo ?? 'string'),
        ]);
      } else {
        formData.fields.addAll([
          MapEntry('placeOrder', placeOrder.toString()),
          MapEntry('day', addPickPlace.day.toString()),
          MapEntry('startTime', addPickPlace.startTime ?? 'string'),
          MapEntry('endTime', addPickPlace.endTime ?? 'string'),
          MapEntry('placeType', addPickPlace.placeType),
          MapEntry('placeNum', addPickPlace.placeNum.toString()),
          MapEntry('placeName', addPickPlace.placeName!),
          MapEntry('addr1', addPickPlace.addr1),
          MapEntry('mapx', addPickPlace.mapx.toString()),
          MapEntry('mapy', addPickPlace.mapy.toString()),
          MapEntry('memo', addPickPlace.memo ?? 'string'),
        ]);
      }

      // 이미지 URL이 있을 경우
      if (addPickPlace.image != null && addPickPlace.image!.isNotEmpty) {
        try {
          // URL을 이용한 MultipartFile 생성
          final url = addPickPlace.image!; // 이미지 URL
          final imageResponse = await http.get(Uri.parse(url)); // 이미지 다운로드
          if (imageResponse.statusCode == 200) {
            final mimeType = lookupMimeType(addPickPlace.image!); // MIME 타입 추론
            final imageFile = MultipartFile.fromBytes(
              imageResponse.bodyBytes, // 이미지 데이터를 바이트로 변환
              filename: 'image.jpg', // 파일 이름 설정
              contentType: MediaType.parse(mimeType ?? 'application/octet-stream'), // MIME 타입 설정
            );

            formData.files.add(MapEntry('image', imageFile)); // 파일 추가
          }
        } catch (e) {
          print('이미지 처리 중 오류 발생: $e');
        }
      }

      // 요청 보내기
      response = await _dio.post(
        '$baseUrl/itinerary/joinPlace/${itineraryCheckNotifier.state?.itineraryId}',
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
        ),
      );

      if (response.statusCode == 200) {
        final jsonDataList = response.data['data'] as List<dynamic>;
        final List<AddPickPlace> addPickPlaces =
        jsonDataList.map((json) => AddPickPlace.fromJson(json)).toList();

        if (addPickPlaces.isEmpty) {
          ref.read(addPickEachPlaceProvider.notifier).clearPlace();
          print('장소 목록이 비어있습니다.');
        } else {
          ref.read(addPickEachPlaceProvider.notifier).setAddPickPlace(addPickPlaces);
          print('장소 추가 성공: $addPickPlaces');
        }

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
      rethrow;
    }
  }


  Future<Response?> PostAddNewEachPickPlace(WidgetRef ref) async {
    try {
      final itineraryCheckNotifier = ref.read(itineraryCheckProvider.notifier);
      print(CheckItinerary);
      Response response;
      print(itineraryCheckNotifier.state!.itineraryId);
      response = await _dio.post(
        '$baseUrl/itinerary/joinPlace/${itineraryCheckNotifier.state!.itineraryId}',
        data: {},
      );

      if (response.statusCode == 200) {
        ref.read(addPickEachPlaceProvider.notifier).clearPlace();
        final jsonDataList = response.data['data'] as List<dynamic>;
        final List<AddPickPlace> addPickPlaces =
            jsonDataList.map((json) => AddPickPlace.fromJson(json)).toList();
        // Nav.push(ScheduleScreen(itineraryCheckNotifier.state!));
        ref
            .read(addPickEachPlaceProvider.notifier)
            .setAddPickPlace(addPickPlaces);
        print('장소 추가 성공: $addPickPlaces');

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
      ref.read(addPickEachPlaceProvider.notifier).clearPlace();
      return null; // 여기에 null 반환
    }
  }

  Future<Response> PostDeleteEachPickPlace(WidgetRef ref, int placeId) async {
    try {
      final itineraryCheckNotifier = ref.read(itineraryCheckProvider.notifier);
      Response response;

      final data = {
        'itineraryId': itineraryCheckNotifier.state!.itineraryId,
        'placeId': placeId
      };

      response = await _dio.post(
        '$baseUrl/itinerary/deletePlace',
        data: data,
      );

      if (response.statusCode == 200) {
        final jsonDataList = response.data['data'] as List<dynamic>;
        final List<AddPickPlace> addPickPlaces =
            jsonDataList.map((json) => AddPickPlace.fromJson(json)).toList();

        if (addPickPlaces.isEmpty) {
          ref.read(addPickEachPlaceProvider.notifier).clearPlace();
          print('장소 목록이 비어있습니다.');
        } else {
          ref
              .read(addPickEachPlaceProvider.notifier)
              .setAddPickPlace(addPickPlaces);
          print('장소 삭제 성공: $addPickPlaces');
        }

        print('일정에 장소 삭제 완료');
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
      rethrow;
    }
  }

  Future<void> showAllItinerary(WidgetRef ref) async {
    final accountNotifier = ref.read(accountProvider.notifier).state!;
    final url = '$baseUrl/itinerary/itineraryShow/${accountNotifier.id}';
    try {
      final response = await _dio.get(
        url,
      );

      if (response.statusCode == 200) {
        final jsonData = response.data['data'] as List<dynamic>;
        if (jsonData.isEmpty) {
          ref.read(ItineraryShowAllListProvider.notifier).clearItinerarys();
          print('일정 목록이 비어있습니다.');
        } else {
          final itinerarys = jsonData
              .map(
                  (json) => AllItinerary.fromJson(json as Map<String, dynamic>))
              .toList();
          ref
              .read(ItineraryShowAllListProvider.notifier)
              .addItinerary(itinerarys);
          print('일정 불러오기 성공: $itinerarys');
        }
      } else if (response.statusCode == 401) {
        print('error');
        return;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('오류');
      rethrow;
    }
  }

  Future<void> showAllShareItinerary(WidgetRef ref) async {
    final accountNotifier = ref.read(accountProvider.notifier).state!;
    final url = '$baseUrl/itinerary/itineraryShareShow/${accountNotifier.id}';
    try {
      final response = await _dio.get(url);

      if (response.statusCode == 200) {
        final data = response.data['data'];

        // Check if the data is null
        if (data == null) {
          ref.read(shareItineraryListProvider.notifier).clearItinerarys();
          print('일정 목록이 비어있습니다.');
        } else {
          final jsonData = data as List<dynamic>;
          final itinerarys = jsonData
              .map(
                  (json) => AllItinerary.fromJson(json as Map<String, dynamic>))
              .toList();
          ref
              .read(shareItineraryListProvider.notifier)
              .addItinerary(itinerarys);
          print('일정 불러오기 성공: $itinerarys');
        }
      } else if (response.statusCode == 401) {
        print('error');
        return;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('오류');
      rethrow;
    }
  }

  Future<void> DeleteItinerary(int itineraryId, WidgetRef ref) async {
    try {
      final account = ref.read(accountProvider.notifier);

      final response = await _dio.post(
        '$baseUrl/itinerary/delete?itineraryId=$itineraryId&accountId=${account.state!.id}',
      );

      if (response.statusCode == 200) {
        await showAllItinerary(ref);
        print('일정삭제 완료');
        return;
      } else if (response.statusCode == 401) {
        print('error');
        return;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      rethrow;
    }
  }

  Future<void> inviteItinerary(String accountId, String itineraryId,
      BuildContext context, WidgetRef ref) async {
    try {
      final response = await _dio.post(
          '$baseUrl/itinerary/addAccount?accountId=$accountId&itineraryId=$itineraryId');

      if (response.statusCode == 200) {
        await getItinerary(ref, itineraryId.toString());

        print('일정 초대 완료');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: AppColors.mainPurple,
              content: Text(
                "이제부터 친구와 함께 여행하마! 💜",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
        );

        return;
      } else if (response.statusCode == 401) {
        print('error');
        return;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      rethrow;
    }
  }

  Future<void> itineraryCopy(
      BuildContext context, WidgetRef ref, int itineraryId) async {
    final accountNotifier = ref.read(accountProvider.notifier).state!;
    final url = '$baseUrl/itinerary/copy';
    try {
      final response = await _dio.post(url, data: {
        "accountId": int.parse(accountNotifier.id),
        "itineraryId": itineraryId,
      });

      if (response.statusCode == 200) {
        final responseData = response.data;
        final int newItineraryId = responseData['data']['itineraryId'];

        final budgetApi = BudgetApi();
        budgetApi.createBudget(newItineraryId, ref);
        print('일정 담기 성공');

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: AppColors.mainPurple,
          content: Text(
            "내 일정에 쏘옥!✨ 여행하마와 함께 떠나볼까요?💜",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
      } else if (response.statusCode == 401) {
        print('error');
        return;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('오류');
      rethrow;
    }
  }
}
