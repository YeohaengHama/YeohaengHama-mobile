import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entity/menu/all_itinerary.dart'; // ItineraryShowAll 클래스 파일 경로에 따라 수정

final ItineraryShowAllListProvider =
StateNotifierProvider<ItineraryShowAllListNotifier, List<AllItinerary>>(
      (ref) {
    return ItineraryShowAllListNotifier(); // 리뷰 목록을 저장하는 StateNotifierProvider 생성
  },
);

class ItineraryShowAllListNotifier extends StateNotifier<List<AllItinerary>> {
  ItineraryShowAllListNotifier() : super([]); // 빈 리스트로 초기화

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
