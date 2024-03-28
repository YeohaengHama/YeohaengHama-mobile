import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_pick_place.freezed.dart';

@freezed
class PickPlace with _$PickPlace {
  const factory PickPlace(
  {
    required String contentId,
    required String contentTypeId,
    required String title,
    required String addr1,
    required String firstImage,
}
      ) = _PickPlace;


}
