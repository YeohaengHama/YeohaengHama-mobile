
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/shorts/vo_shorts_read.dart';
final shortsReadProvider = StateNotifierProvider<ShortsReadNotifier, ShortsRead>((ref) {
  return ShortsReadNotifier();
});

class ShortsReadNotifier extends StateNotifier<ShortsRead> {
  ShortsReadNotifier() : super(ShortsRead(shortsList: []));

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
