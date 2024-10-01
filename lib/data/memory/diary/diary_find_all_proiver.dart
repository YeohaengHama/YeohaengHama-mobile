import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entity/diary/vo_find_all_diary.dart';

final DiaryFindAllProvider =
StateNotifierProvider<DiaryFindAllNotifier, List<FindAllDiary>>(
      (ref) {
    return DiaryFindAllNotifier(); // 리뷰 목록을 저장하는 StateNotifierProvider 생성
  },
);

class DiaryFindAllNotifier extends StateNotifier<List<FindAllDiary>> {
  DiaryFindAllNotifier() : super([]); // 빈 리스트로 초기화

  void addDiary(List<FindAllDiary> diarys) {
    state = diarys; // 새 리뷰를 기존 리뷰 목록에 추가
  }
  void updateDiarys(List<FindAllDiary> diarys) {
    state = diarys; // 리뷰 목록을 업데이트
  }
  void clearDiarys() {
    state = []; // 리뷰 목록을 비움
  }
}
