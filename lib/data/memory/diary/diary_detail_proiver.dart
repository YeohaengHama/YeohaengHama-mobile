import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/diary/vo_detail_diary.dart';

final detailDiaryProvider =
StateNotifierProvider<DetailDiaryNotifier, AsyncValue<DetailDiary>>((ref) {
  return DetailDiaryNotifier();
});

class DetailDiaryNotifier extends StateNotifier<AsyncValue<DetailDiary>> {
  DetailDiaryNotifier() : super(const AsyncValue.loading());



  void addDetailDiary(DetailDiary detailDiary) {
    state = AsyncValue.data(detailDiary);
  }



}
