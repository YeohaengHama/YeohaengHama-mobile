import 'package:hooks_riverpod/hooks_riverpod.dart';

// 리뷰 작성 여부를 저장하는 Provider
final editModeProvider = StateNotifierProvider<editModeNotifier, bool>((ref) {
  return editModeNotifier();
});

// StateNotifier를 사용하여 상태를 관리
class editModeNotifier extends StateNotifier<bool> {
  editModeNotifier() : super(false);

  // 리뷰 작성 여부를 업데이트하는 메서드
  void setEditMode(bool isEdit) {
    state = isEdit;
  }
}
