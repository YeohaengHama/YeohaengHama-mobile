import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../entity/shorts/vo_shorts_read.dart';

final ShortsReadProvider =
StateNotifierProvider<ShortsReadNotifier,  AsyncValue<ShortsRead>>(
      (ref) {
    return ShortsReadNotifier(); // 리뷰 목록을 저장하는 StateNotifierProvider 생성
  },
);

class ShortsReadNotifier extends StateNotifier<AsyncValue<ShortsRead>> {
  ShortsReadNotifier() : super(AsyncLoading()); // 빈 리스트로 초기화

  void readShorts(ShortsRead shorts) {
    state = AsyncData(shorts); // 새 리뷰를 기존 리뷰 목록에 추가
  }


}
