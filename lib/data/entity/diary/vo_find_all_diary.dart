import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_find_all_diary.g.dart';
part 'vo_find_all_diary.freezed.dart';

@freezed
class FindAllDiary with _$FindAllDiary {
  const factory FindAllDiary(
  {
    required int id,
    required int itinerary,
    required String date,
    required String title,
    required String content,
    required List<Map<String, String>> diaryPhotoUrls,
}
      ) = _FindAllDiary;

  factory FindAllDiary.fromJson(Map<String, dynamic> json) =>
      _$FindAllDiaryFromJson(json);
}
