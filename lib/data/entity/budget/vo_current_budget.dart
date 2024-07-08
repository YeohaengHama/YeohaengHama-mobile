import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_current_budget.freezed.dart';
part 'vo_current_budget.g.dart';

@freezed
class CurrentBudget with _$CurrentBudget {
  factory CurrentBudget({
    required int budgetId,
    required int budgetTotalAmount,  // No longer nullable
    required int totalAmount,
    required int itineraryId,
    required Map<int, List<Expenditure>> expenditures,
  }) = _CurrentBudget;

  factory CurrentBudget.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    final Map<String, dynamic> rawExpendituresList =
        data['expenditures'] ?? {};
    final Map<int, List<Expenditure>> expenditures = {};

    // Iterate over keys in rawExpendituresList
    rawExpendituresList.forEach((key, value) {
      // Check if value is null or empty
      if (value == null || (value is List && value.isEmpty)) {
        // If null or empty, assign empty list to expenditures
        expenditures[int.parse(key)] = [];
      } else {
        // If not null or empty, parse the list of expenditures
        expenditures[int.parse(key)] = (value as List<dynamic>)
            .map((e) => Expenditure.fromJson(e as Map<String, dynamic>))
            .toList();
      }
    });

    // Return the constructed CurrentBudget instance
    return CurrentBudget(
      budgetId: data['budgetId'] as int,
      budgetTotalAmount: (data['budgetTotalAmount'] as int?) ?? 0,  // Default to 0 if null
      totalAmount: data['totalAmount'] as int,
      itineraryId: data['itineraryId'] as int,
      expenditures: expenditures,
    );
  }
}

@freezed
class Expenditure with _$Expenditure {
  factory Expenditure({
    required int id,
    required int expendituresTotalAmount,
    required Place place,
    required int day,
    required String paymentMethod,
    required Account payerId,
    required String category,
    required String content,
    required bool individual,
    required List<Calculation> calculate,
  }) = _Expenditure;

  factory Expenditure.fromJson(Map<String, dynamic> json) =>
      _$ExpenditureFromJson(json);
}

@freezed
class Calculation with _$Calculation {
  factory Calculation({
    required int id,
    required Account accountShowDTO,
    required int amount,
  }) = _Calculation;

  factory Calculation.fromJson(Map<String, dynamic> json) =>
      _$CalculationFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required String nickname,
    String? photoUrl,
    String? accountRole,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class Place with _$Place {
  const factory Place({
    required int id,
    required String placeName,
    required String placeNum,
    required String placeType,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
