import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_find_account_diary.freezed.dart';
part 'vo_find_account_diary.g.dart';


@freezed
class FindAccountDiary with _$FindAccountDiary {
  const factory FindAccountDiary(
  {
    required int id,
    required int itinerary,
    required String date,
    required String title,
    required String content,
    required List<Map<String, String>> diaryPhotoUrls,
    
}
      ) = _FindAccountDiary;

  factory FindAccountDiary.fromJson(Map<String, dynamic> json) =>
      _$FindAccountDiaryFromJson(json);
}
