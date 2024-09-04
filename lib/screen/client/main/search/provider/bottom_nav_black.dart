import 'package:hooks_riverpod/hooks_riverpod.dart';

// `BottomNavBlack` 상태를 관리하는 StateNotifier
class BottomNavBlackNotifier extends StateNotifier<bool> {
  BottomNavBlackNotifier() : super(false);

  void setBlack(bool value) {
    state = value;
  }
}

// `BottomNavBlack` 프로바이더
final BottomNavBlackProvider = StateNotifierProvider<BottomNavBlackNotifier, bool>(
      (ref) => BottomNavBlackNotifier(),
);
