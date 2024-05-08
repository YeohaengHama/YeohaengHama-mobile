import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../entity/search/vo_search_diary_area.dart';

final SearchDiaryAreaProvider =
StateNotifierProvider<SearchDiaryAreaNotifier, List<SearchDiaryArea>>(
      (ref) {
    return SearchDiaryAreaNotifier(); // 리뷰 목록을 저장하는 StateNotifierProvider 생성
  },
);

class SearchDiaryAreaNotifier extends StateNotifier<List<SearchDiaryArea>> {
  SearchDiaryAreaNotifier() : super([]); // 빈 리스트로 초기화

  void addDiary(List<SearchDiaryArea> diarys) {
    state = diarys; // 새 리뷰를 기존 리뷰 목록에 추가
  }
  void clearDiarys() {
    state = []; // 리뷰 목록을 비움
  }
}
