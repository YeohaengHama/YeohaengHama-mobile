import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_statistics.freezed.dart';
part 'vo_statistics.g.dart';

@freezed
class Statistics with _$Statistics {
  const factory Statistics({
    required Budget budget,
    required Individual individual,
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) => _$StatisticsFromJson(json);
}

@freezed
class Budget with _$Budget {
  const factory Budget({
    required Category category,
    required Amount amount,
  }) = _Budget;

  factory Budget.fromJson(Map<String, dynamic> json) => _$BudgetFromJson(json);
}

@freezed
class Individual with _$Individual {
  const factory Individual({
    required Category category,
    required Amount amount,
  }) = _Individual;

  factory Individual.fromJson(Map<String, dynamic> json) => _$IndividualFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required double lodging,
    required double flight,
    required double traffic,
    required double tour,
    required double food,
    required double shopping,
    required double other,
    required AmountDetail amount, // 추가된 필드
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class Amount with _$Amount {
  const factory Amount({
    required double lodging,
    required double flight,
    required double traffic,
    required double tour,
    required double food,
    required double shopping,
    required double other,
  }) = _Amount;

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);
}

@freezed
class AmountDetail with _$AmountDetail { // 새로운 클래스 추가
  const factory AmountDetail({
    required double lodging,
    required double flight,
    required double traffic,
    required double tour,
    required double food,
    required double shopping,
    required double other,
  }) = _AmountDetail;

  factory AmountDetail.fromJson(Map<String, dynamic> json) => _$AmountDetailFromJson(json);
}
