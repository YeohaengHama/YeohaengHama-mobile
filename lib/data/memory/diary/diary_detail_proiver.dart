import 'package:fast_app_base/data/entity/area/search_simple_toursim_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/area/serch_detail_result.dart';
import '../../entity/diary/vo_detail_diary.dart';

final detailDiaryProvider =
StateNotifierProvider<DetailDiaryNotifier, AsyncValue<DetailDiary>>((ref) {
  return DetailDiaryNotifier();
});

class DetailDiaryNotifier extends StateNotifier<AsyncValue<DetailDiary>> {
  DetailDiaryNotifier() : super(AsyncValue.loading());



  void addDetailDiary(DetailDiary detailDiary) {
    state = AsyncValue.data(detailDiary);
  }



}
