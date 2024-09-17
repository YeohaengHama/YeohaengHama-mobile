import 'package:hooks_riverpod/hooks_riverpod.dart';

// `isPlayingShorts` 상태를 관리하는 StateNotifier
class IsPlayingShortsNotifier extends StateNotifier<bool> {
  IsPlayingShortsNotifier() : super(false);

  void setPlayingShorts(bool value) {
    state = value;
  }
}

// `isPlayingShorts` 프로바이더
final isPlayingShortsProvider = StateNotifierProvider<IsPlayingShortsNotifier, bool>(
      (ref) => IsPlayingShortsNotifier(),
);
