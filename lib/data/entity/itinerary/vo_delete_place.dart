import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_delete_place.freezed.dart';
part 'vo_delete_place.g.dart';


@freezed
class DeletePlace with _$DeletePlace {
  const factory DeletePlace(
      {
        required int accountId,
        required int placeId,
      }
      ) = _DeletePlace;

  factory DeletePlace.fromJson(Map<String, dynamic> json) =>
      _$DeletePlaceFromJson(json);
}