import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_find_all_diary.freezed.dart';
part 'vo_find_all_diary.g.dart';

@freezed
class FindAllDiary with _$FindAllDiary {
  const factory FindAllDiary({
    required int itinerary,
    required List<String> tag,
    required String date,
    required String title,
    required String content,
    required List<String> photos, // 수정된 부분
    required AccountShowDTO accountShowDTO,
  }) = _FindAllDiary;

  factory FindAllDiary.fromJson(Map<String, dynamic> json) =>
      _$FindAllDiaryFromJson(json);
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
