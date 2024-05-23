import 'package:dio/dio.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../common/constants.dart';
import '../entity/budget/vo_add_budget.dart';
import '../entity/budget/vo_current_budget.dart';
import '../memory/budget/add_budget_provider.dart';
import '../memory/budget/current_budget_provider.dart';

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



  Future<void> showBudget(int itineraryId, WidgetRef ref) async {
    final url = '$baseUrl/Budget/budgetShow';

    try {
      final response = await _dio.post(
        url,
        data: {
          "itinerary" : itineraryId
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
  Future<void> addBudget(AddBudget addBudget, WidgetRef ref) async {
    final url = '$baseUrl/Budget/addExpenditures';
    try {
      final response = await _dio.post(
        url,
        data: {
          "itineraryId": addBudget.itineraryId,
          "place": addBudget.place,
          "day": addBudget.day,
          "paymentMethod": addBudget.paymentMethod,
          "content": addBudget.content,
          "category": addBudget.category,
          "name": addBudget.name,
          "amount": addBudget.amount,
        },
      );

      if (response.statusCode == 200) {

        print('가계부 추가 성공: ${response.data}');
        // 가계부 생성 성공 시 setCurrentBudget를 호출하여 데이터를 저장
        await showBudget(addBudget.itineraryId,ref);


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
