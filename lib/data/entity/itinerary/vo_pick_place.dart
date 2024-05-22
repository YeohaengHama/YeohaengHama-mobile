import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_pick_place.freezed.dart';
part 'vo_pick_place.g.dart';


@freezed
class PickPlace with _$PickPlace {
  const factory PickPlace(
  {
    required String contentId,
    required String contentTypeId,
    required String title,
    required String addr1,
    required String mapx,
    required String mapy,
    required String firstImage,
}
      ) = _PickPlace;

  factory PickPlace.fromJson(Map<String, dynamic> json) =>
      _$PickPlaceFromJson(json);
}
