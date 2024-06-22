import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_edit_budget.freezed.dart';
part 'vo_edit_budget.g.dart';

@freezed
class EditBudget with _$EditBudget {
  const factory EditBudget({
    required int expendituresId,
    required int budgetId,
    required int totalAmount,
    required PayerId payerId,
    required bool divided,
    required List<AccountId> accountId,
    required List<int> amount,
    required Place place,
    required int day,
    required String paymentMethod,
    required String content,
    required String category,
    required bool individual,
  }) = _EditBudget;

  factory EditBudget.fromJson(Map<String, dynamic> json) => _$EditBudgetFromJson(json);
}

@freezed
class PayerId with _$PayerId {
  const factory PayerId({
    required int id,
    required String nickname,
    required String photoUrl,
    required String accountRole,
  }) = _PayerId;

  factory PayerId.fromJson(Map<String, dynamic> json) => _$PayerIdFromJson(json);
}

@freezed
class AccountId with _$AccountId {
  const factory AccountId({
    required int id,
    required String nickname,
    required String photoUrl,
    required String accountRole,
  }) = _AccountId;

  factory AccountId.fromJson(Map<String, dynamic> json) => _$AccountIdFromJson(json);
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
