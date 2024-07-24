import 'package:hooks_riverpod/hooks_riverpod.dart';

// `isPlaying` 상태를 관리하는 StateNotifier
class IsPlayingNotifier extends StateNotifier<bool> {
  IsPlayingNotifier() : super(false);

  void setPlaying(bool value) {
    state = value;
  }
}

// `isPlaying` 프로바이더
final isPlayingProvider = StateNotifierProvider<IsPlayingNotifier, bool>(
      (ref) => IsPlayingNotifier(),
);
