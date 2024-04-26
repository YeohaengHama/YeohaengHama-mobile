import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entity/diary/vo_find_account_diary.dart';

final DiaryFindAccountAllProvider =
StateNotifierProvider<DiaryFindAccountAllNotifier, List<FindAccountDiary>>(
      (ref) {
    return DiaryFindAccountAllNotifier(); // 리뷰 목록을 저장하는 StateNotifierProvider 생성
  },
);

class DiaryFindAccountAllNotifier extends StateNotifier<List<FindAccountDiary>> {
  DiaryFindAccountAllNotifier() : super([]); // 빈 리스트로 초기화

  void addDiary(List<FindAccountDiary> diarys) {
    state = diarys; // 새 리뷰를 기존 리뷰 목록에 추가
  }
  void updateDiarys(List<FindAccountDiary> diarys) {
    state = diarys; // 리뷰 목록을 업데이트
  }
  void clearDiarys() {
    state = []; // 리뷰 목록을 비움
  }
}
