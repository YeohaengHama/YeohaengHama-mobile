import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/vo_user.dart';
part 'vo_diary.freezed.dart';
@freezed
class Diary with _$Diary {
  const factory Diary(
    final User user,
    final int diaryId,
    final String diaryTitle,
    final String diaryContent,
      final List<String> diaryImages,

      ) = _Diary;

}
