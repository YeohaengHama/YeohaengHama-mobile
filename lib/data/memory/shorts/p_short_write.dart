// shorts_write_notifier.dart

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/shorts/vo_short_write.dart';
final shortsWriteProvider = StateNotifierProvider<ShortsWriteNotifier, ShortsWrite>((ref) {
  return ShortsWriteNotifier();
});
class ShortsWriteNotifier extends StateNotifier<ShortsWrite> {
  ShortsWriteNotifier() : super(
    ShortsWrite(
      accountId: 0,
      video: '',
      title: '',
      content: '',
      itineraryId: 0,
      itineraryTitle: '',
    ),
  );

  // 상태를 업데이트하는 메서드들

  void updateAccountId(int accountId) {
    state = state.copyWith(accountId: accountId);
  }

  void updateVideo(String video) {
    state = state.copyWith(video: video);
  }

  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void updateContent(String content) {
    state = state.copyWith(content: content);
  }

  void updateItineraryId(int itineraryId) {
    state = state.copyWith(itineraryId: itineraryId);
  }

  void updateItineraryTitle(String itineraryTitle) {
    state = state.copyWith(itineraryTitle: itineraryTitle);
  }
  void updateShortsWirte(ShortsWrite shortsWrite) {
    print(shortsWrite);
    state = shortsWrite;
  }
  void resetShortsWrite() {
    state = state.copyWith(
      accountId: 0,
      video: '',
      title: '',
      content: '',
      itineraryId: 0,
      itineraryTitle: '',
    );
  }
}
