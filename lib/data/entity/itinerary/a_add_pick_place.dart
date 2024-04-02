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
    String? startTime,
    String? endTime,
    String? memo


}
      ) = _AddPickPlace;

  factory AddPickPlace.fromJson(Map<String, dynamic> json) =>
      _$AddPickPlaceFromJson(json);
}
