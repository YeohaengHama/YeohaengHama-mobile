import 'package:hooks_riverpod/hooks_riverpod.dart';

// 리뷰 작성 여부를 저장하는 Provider
final reviewCheckWritedProvider = StateNotifierProvider<ReviewCheckWritedNotifier, bool>((ref) {
  return ReviewCheckWritedNotifier();
});

// StateNotifier를 사용하여 상태를 관리
class ReviewCheckWritedNotifier extends StateNotifier<bool> {
  ReviewCheckWritedNotifier() : super(false);

  // 리뷰 작성 여부를 업데이트하는 메서드
  void setReviewCheckWrited(bool isWritten) {
    state = isWritten;
  }
}
