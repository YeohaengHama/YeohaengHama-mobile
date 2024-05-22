import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_current_budget.freezed.dart';

part 'vo_current_budget.g.dart';

@freezed
class CurrentBudget with _$CurrentBudget {
  factory CurrentBudget({
    required int budgetId,
    required int totalAmount,
    required int itineraryId,
    required Map<String, List<Expenditure>> expendituresList,
  }) = _CurrentBudget;

  factory CurrentBudget.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    final Map<String, dynamic> rawExpendituresList =
        data['expendituresList'] ?? {};
    final Map<String, List<Expenditure>> expendituresList = {};

    // Iterate over keys in rawExpendituresList
    rawExpendituresList.forEach((key, value) {
      // Check if value is null or empty
      if (value == null || (value is List && value.isEmpty)) {
        // If null or empty, assign empty list to expendituresList
        expendituresList[key] = [];
      } else {
        // If not null or empty, parse the list of expenditures
        expendituresList[key] = (value as List<dynamic>)
            .map((e) => Expenditure.fromJson(e as Map<String, dynamic>))
            .toList();
      }
    });

    // Return the constructed CurrentBudget instance
    return CurrentBudget(
      budgetId: data['budgetId'] as int,
      totalAmount: data['totalAmount'] as int,
      itineraryId: data['itineraryId'] as int,
      expendituresList: expendituresList,
    );
  }
}

@freezed
class Expenditure with _$Expenditure {
  factory Expenditure({
    required int id,
    required int place,
    required int day,
    required String paymentMethod,
    required String category,
    required String name,
    required int amount,
  }) = _Expenditure;

  factory Expenditure.fromJson(Map<String, dynamic> json) =>
      _$ExpenditureFromJson(json);
}
