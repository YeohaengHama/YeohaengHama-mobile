import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entity/review/a_review_show_all.dart'; // ReviewShowAll 클래스 파일 경로에 따라 수정

final ReviewShowAllListProvider =
StateNotifierProvider<ReviewShowAllListNotifier, List<ReviewShowAll>>(
      (ref) {
    return ReviewShowAllListNotifier(); // 리뷰 목록을 저장하는 StateNotifierProvider 생성
  },
);

class ReviewShowAllListNotifier extends StateNotifier<List<ReviewShowAll>> {
  ReviewShowAllListNotifier() : super([]); // 빈 리스트로 초기화

  void addReview(List<ReviewShowAll> reviews) {
    state = reviews; // 새 리뷰를 기존 리뷰 목록에 추가
  }
  void updateReviews(List<ReviewShowAll> reviews) {
    state = reviews; // 리뷰 목록을 업데이트
  }
  void clearReviews() {
    state = []; // 리뷰 목록을 비움
  }
}
