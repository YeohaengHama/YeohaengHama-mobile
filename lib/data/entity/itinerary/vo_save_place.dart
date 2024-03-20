import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_save_place.freezed.dart';
part 'vo_save_place.g.dart';


@freezed
class SavePlace with _$SavePlace {
  const factory SavePlace(
  {
    required int accountId,
    required String placeNum,
    required String contentTypeId,
}
      ) = _SavePlace;

  factory SavePlace.fromJson(Map<String, dynamic> json) =>
      _$SavePlaceFromJson(json);

}




