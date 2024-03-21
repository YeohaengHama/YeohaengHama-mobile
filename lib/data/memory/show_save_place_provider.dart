import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/itinerary/vo_pick_place.dart';

final ShowPickPlaceApiResponseProvider =
StateNotifierProvider<PickPlaceNotifier, List<PickPlace>>((ref) {
  return PickPlaceNotifier();
});

class PickPlaceNotifier extends StateNotifier<List<PickPlace>> {
  PickPlaceNotifier() : super([]);

  void addOrUpdatePickPlace(PickPlace newPickPlace) {
    // 이미 있는 pickPlace를 찾아 업데이트하거나, 없으면 새로운 pickPlace를 추가합니다.
    final index = state.indexWhere((pickPlace) => pickPlace.contentId == newPickPlace.contentId);
    if (index != -1) {
      // 이미 있는 pickPlace를 찾았을 경우, 업데이트합니다.
      state[index] = newPickPlace;
    } else {
      // 없으면 새로운 pickPlace를 추가합니다.
      state = [...state, newPickPlace];
    }
  }
}
