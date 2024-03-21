import 'package:freezed_annotation/freezed_annotation.dart';

part 'a_check_save_place.freezed.dart';
part 'a_check_save_place.g.dart';


@freezed
class CheckSavePlace with _$CheckSavePlace {
  const factory CheckSavePlace(
  {
    required String placeNum,
    required String contentTypeId,

}
      ) = _CheckSavePlace;

  factory CheckSavePlace.fromJson(Map<String, dynamic> json) =>
      _$CheckSavePlaceFromJson(json);
}
