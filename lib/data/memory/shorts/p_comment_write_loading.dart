import 'package:hooks_riverpod/hooks_riverpod.dart';

// 리뷰 작성 여부를 저장하는 Provider
final commentWriteLoadingProvider = StateNotifierProvider<commentWriteLoadingNotifier, bool>((ref) {
  return commentWriteLoadingNotifier();
});

// StateNotifier를 사용하여 상태를 관리
class commentWriteLoadingNotifier extends StateNotifier<bool> {
  commentWriteLoadingNotifier() : super(false);

  // 리뷰 작성 여부를 업데이트하는 메서드
  void setCheckWrited(bool isWritten) {
    state = isWritten;
  }
}
