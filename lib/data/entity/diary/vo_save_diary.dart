import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_save_diary.freezed.dart';

@freezed
class SaveDiary with _$SaveDiary {
  const factory SaveDiary(
  {
    required int itinerary,
    required String date,
    required String title,
    required String content,
    @Default([]) List<String>? photos,
  }

      ) = _SaveDiary;

}
