
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/shorts/vo_shorts_read.dart';
final shortsSearchProvider = StateNotifierProvider<ShortsSearchNotifier, ShortsRead>((ref) {
  return ShortsSearchNotifier();
});

class ShortsSearchNotifier extends StateNotifier<ShortsRead> {
  ShortsSearchNotifier() : super(ShortsRead(shortsList: []));

  void addShort(Shorts short) {
    state = state.copyWith(shortsList: [...state.shortsList, short]);
  }

  void removeShort(int shortsId) {
    state = state.copyWith(
      shortsList: state.shortsList.where((short) => short.shortsId != shortsId).toList(),
    );
  }

  void updateShort(Shorts updatedShort) {
    state = state.copyWith(
      shortsList: state.shortsList.map((short) {
        return short.shortsId == updatedShort.shortsId ? updatedShort : short;
      }).toList(),
    );
  }
}
