import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_search_diary_area.freezed.dart';
part 'vo_search_diary_area.g.dart';


@freezed
class SearchDiaryArea with _$SearchDiaryArea {
  const factory SearchDiaryArea({
    required int diary,
    required int itinerary,
    required List<String> tag,
    required String date,
    required String title,
    required String content,
    required List<String> photos,
    required AccountShowDTO accountShowDTO,
  }) = _SearchDiaryArea;

  factory SearchDiaryArea.fromJson(Map<String, dynamic> json) =>
      _$SearchDiaryAreaFromJson(json);
}

@freezed
class AccountShowDTO with _$AccountShowDTO {
  const factory AccountShowDTO({
    required int id,
    required String nickname,
    String? photoUrl,
  }) = _AccountShowDTO;

  factory AccountShowDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountShowDTOFromJson(json);
}
