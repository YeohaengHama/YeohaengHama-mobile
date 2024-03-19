import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_delete_place.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_save_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

import '../memory/Itinerary_provider.dart';
import '../memory/user_provider.dart';

final itineraryApiProvider = Provider<ItineraryApi>((ref) => ItineraryApi());
class ItineraryApi {
  final Dio _dio = Dio();
  final String baseUrl ='https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';

  Future<Response> postJoinItinerary(Itinerary itinerary) async {

    try {
      final response = await _dio.post(
        '$baseUrl/join/${itinerary.accountId}',
        data: {
          'accountId' : itinerary.accountId,
          'name' :itinerary.name ,
          'type' : itinerary.type,
          'style' : itinerary.itineraryStyle,
          'transportation' :  itinerary.transportation,
          'area' : itinerary.area,
          'startDate' : itinerary.startDate,
          'endDate' : itinerary.endDate,
          'expense' : itinerary.expense,
        },
      );

      if (response.statusCode == 200) {
       print('일정 생성 완료');
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

  Future<Response> testInsert(int a) async {
    try {
      print(a);
      print(a.runtimeType);
      final response = await _dio.post(
        '${baseUrl}/account/testIntInsert',
        data: {'a' : a }
      );

      if (response.statusCode == 200) {
        print('test완료');
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
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }
  Future<Response> postSavePlace(SavePlace savePlace, WidgetRef ref) async {
    try {
      print(savePlace.accountId.runtimeType);


      final response = await _dio.post(
        'http://172.16.111.158:8080/api/account/savePlace',
        data: savePlace.toJson(),
      );

      if (response.statusCode == 200) {
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
  Future<Response> postDeletePlace(DeletePlace deletePlace, WidgetRef ref) async {
    try {
      final response = await _dio.post(
        'http://172.16.111.158:8080/api/account/deletePlace',
        data: {
          'accountId' : deletePlace.accountId,
          'placeId' : deletePlace.placeId
        },
      );

      if (response.statusCode == 200) {
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

}