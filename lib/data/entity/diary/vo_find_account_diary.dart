import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_find_account_diary.freezed.dart';
part 'vo_find_account_diary.g.dart';

@freezed
class FindAccountDiary with _$FindAccountDiary {
  const factory FindAccountDiary({
    required int itinerary,
    required List<String> tag,
    required String date,
    required String title,
    required String content,
    required List<String> photos,
    required AccountShowDTO accountShowDTO,
  }) = _FindAccountDiary;

  factory FindAccountDiary.fromJson(Map<String, dynamic> json) =>
      _$FindAccountDiaryFromJson(json);
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
