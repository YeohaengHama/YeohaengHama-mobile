import 'package:fast_app_base/data/entity/account/vo_account.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part'vo_account_save_place.freezed.dart';
part'vo_account_save_place.g.dart';
@freezed
class AccountSavePlace with _$AccountSavePlace {
  const factory AccountSavePlace(
      final int id,
      final String placeNum,
      final String contentTypeID,
      final Account account,
      ) = _AccountSavePlace;

  factory AccountSavePlace.fromJson(Map<String, dynamic> json) =>
      _$AccountSavePlaceFromJson(json);
}
