import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/itinerary/share_itinerary.dart';
import '../../entity/menu/all_itinerary.dart';

final shareItineraryListProvider = StateNotifierProvider<ShareItineraryListNotifier, List<AllItinerary>>((ref) {
  return ShareItineraryListNotifier();
});

class ShareItineraryListNotifier extends StateNotifier<List<AllItinerary>> {
  ShareItineraryListNotifier() : super([]);
  void addItinerary(List<AllItinerary> itinerarys) {
    state = itinerarys; // 새 리뷰를 기존 리뷰 목록에 추가
  }
  void updateItinerarys(List<AllItinerary> itinerarys) {
    state = itinerarys; // 리뷰 목록을 업데이트
  }
  void clearItinerarys() {
    state = []; // 리뷰 목록을 비움
  }
}
