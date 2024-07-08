

import 'package:dio/dio.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/itinerary/a_check_itinerary.dart';
import 'package:fast_app_base/data/entity/review/vo_check_write_review.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../common/constants.dart';
import '../entity/budget/vo_add_budget.dart';
import '../entity/budget/vo_current_budget.dart';

import '../entity/budget/vo_statistics.dart';
import '../memory/budget/current_budget_provider.dart';
import '../memory/budget/statistics_provider.dart';
import '../memory/itinerary/itinerary_check_provider.dart';
import '../memory/account/user_provider.dart';

final budgetApiProvider = Provider<BudgetApi>((ref) => BudgetApi());

class BudgetApi {
  final Dio _dio = Dio();
  final String baseUrl = serverUrl;

  Future<void> createBudget(int itineraryId, WidgetRef ref) async {
    final url = '$baseUrl/Budget/create?itineraryId';

    try {
      final response = await _dio.post(
        url,
        data: {
          "itineraryId" : itineraryId,
          "totalAmount" : 0
        }
      );

      if (response.statusCode == 200) {
        print('가계부 생성 성공: ${response.data}');
        // 가계부 생성 성공 시 setCurrentBudget를 호출하여 데이터를 저장
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }



  Future<void> showBudget(CheckItinerary checkItinerary, WidgetRef ref) async {
    final url = '$baseUrl/Budget/budgetShow';

    try {
      final response = await _dio.post(
        url,
        data: {
          "budgetId" : checkItinerary.budgetId,
          "accountId" : checkItinerary.account.id
        }
      );

      if (response.statusCode == 200) {
        print('가계부 불러오기 성공: ${response.data}');
        // 가계부 생성 성공 시 setCurrentBudget를 호출하여 데이터를 저장

        ref.read(currentBudgetProvider.notifier).setCurrentBudget(CurrentBudget.fromJson(response.data));
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }

  Future<void> showExpenditures(CheckItinerary checkItinerary, WidgetRef ref) async {
    final url = '$baseUrl/Budget/budgetShow';

    try {
      final response = await _dio.post(
          url,
          data: {
            "budgetId" : checkItinerary.budgetId,
            "accountId" : checkItinerary.account.id
          }
      );

      if (response.statusCode == 200) {
        print('가계부 불러오기 성공: ${response.data}');
        // 가계부 생성 성공 시 setCurrentBudget를 호출하여 데이터를 저장

        ref.read(currentBudgetProvider.notifier).setCurrentBudget(CurrentBudget.fromJson(response.data));
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }
  Future<void> addBudget(AddBudget addBudget,WidgetRef ref) async {
    final url = '$baseUrl/Budget/addExpenditures';
    final account = ref.read(accountProvider);
    try {
      final response = await _dio.post(
        url,
        data: {
          "expendituresId": addBudget.expendituresId,
          "budgetId": addBudget.budgetId,
          "totalAmount": addBudget.totalAmount,
          "payerId": addBudget.payerId,
          "accountId": addBudget.accountId,
          "amount": addBudget.amount,
          "place": addBudget.place,
          "day": addBudget.day,
          "paymentMethod": addBudget.paymentMethod,
          "content": addBudget.content,
          "category": addBudget.category,
          "individual": addBudget.individual,
          "divided" : addBudget.divided,
        },
      );

      if (response.statusCode == 200) {
        final itinerary = ref.read(itineraryCheckProvider);
        print('가계부 추가 성공: ${response.data}');
        // 가계부 생성 성공 시 setCurrentBudget를 호출하여 데이터를 저장
        await showBudget(itinerary!,ref);


      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }


  Future<void> deleteBudgetOne(int expendituresId, WidgetRef ref) async {
    final url = '$baseUrl/Budget/expendituresDeleteOne';

    try {
      final response = await _dio.post(
          url,
          data: {
            "expendituresId" : expendituresId

          }
      );

      if (response.statusCode == 200) {
        print('지출 삭제 성공: ${response.data}');
        final itinerary = ref.read(itineraryCheckProvider);

        await showBudget(itinerary!, ref);
        // 가계부 생성 성공 시 setCurrentBudget를 호출하여 데이터를 저장
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }



  Future<void> budgetStatistics(CheckItinerary checkItinerary, WidgetRef ref) async {
    final url = '$baseUrl/Budget/statistics';

    try {
      final response = await _dio.post(
        url,
        data: {
          "budgetId": checkItinerary.budgetId,
          "accountId": checkItinerary.account.id
        },
      );

      if (response.statusCode == 200) {
        print('가계부 불러오기 성공: ${response.data}');
        // JSON 데이터를 Budget 객체로 변환하여 상태를 업데이트
        final statisticsData = Statistics.fromJson(response.data['data']);
        ref.read(statisticsProvider.notifier).updateStatistics(statisticsData); // updateBudget 호출하여 Budget 객체 업데이트
      } else if (response.statusCode == 401) {
        print('error');
        return null;
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
