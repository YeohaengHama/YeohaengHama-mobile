import 'package:fast_app_base/data/entity/itinerary/vo_place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_day_list.freezed.dart';
part 'vo_day_list.g.dart';


@freezed
class DayList with _$DayList {
  const factory DayList(
  {
    required String day,
    required List<Place> place
}
      ) = _DayList;

  factory DayList.fromJson(Map<String, dynamic> json) =>
      _$DayListFromJson(json);
}
