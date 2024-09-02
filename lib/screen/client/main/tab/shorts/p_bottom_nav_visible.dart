import 'package:hooks_riverpod/hooks_riverpod.dart';

// StateNotifier 클래스를 정의하여 상태를 관리합니다.
class BottomNavBarVisibleNotifier extends StateNotifier<bool> {
  BottomNavBarVisibleNotifier() : super(true); // 초기 상태를 true로 설정

  void hide() => state = false; // 바텀 네비게이션 바 숨기기
  void show() => state = true;  // 바텀 네비게이션 바 보이기
}
final bottomNavBarVisibleProvider = StateNotifierProvider<BottomNavBarVisibleNotifier, bool>((ref) {
  return BottomNavBarVisibleNotifier();
});