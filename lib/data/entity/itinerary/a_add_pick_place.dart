import 'package:freezed_annotation/freezed_annotation.dart';

part 'a_add_pick_place.freezed.dart';
part 'a_add_pick_place.g.dart';

@freezed
class AddPickPlace with _$AddPickPlace {
  const factory AddPickPlace(
  {
    required int day,
    required String placeType,
    required String placeNum,
    String? placeName,
    required String  addr1,
    required double mapx,
    required double mapy,
    String? startTime,
    String? endTime,
    String? memo


}
      ) = _AddPickPlace;

  factory AddPickPlace.fromJson(Map<String, dynamic> json) =>
      _$AddPickPlaceFromJson(json);
}
