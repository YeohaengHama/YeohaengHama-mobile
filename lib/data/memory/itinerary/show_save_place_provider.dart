import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entity/itinerary/vo_pick_place.dart';

final showPickPlaceApiResponseProvider = StateNotifierProvider<PickPlaceNotifier, List<PickPlace>>((ref) {
  return PickPlaceNotifier();
});

class PickPlaceNotifier extends StateNotifier<List<PickPlace>> {
  PickPlaceNotifier() : super([]);

  void addOrRemovePickPlace(PickPlace newPickPlace) {
    // 이미 있는 PickPlace를 찾아 삭제하거나, 없으면 새로운 PickPlace를 추가합니다.
    final index = state.indexWhere((pickPlace) => pickPlace.contentId == newPickPlace.contentId);
    if (index != -1) {
      // 이미 있는 PickPlace를 찾았을 경우, 해당 인덱스의 PickPlace를 삭제합니다.
      // 새로운 상태 리스트 생성
      final newState = List<PickPlace>.from(state)..removeAt(index);
      state = newState;
    } else {
      // 없으면 새로운 PickPlace를 추가합니다.
      state = [...state, newPickPlace];
    }

  }

  void addAllPickPlace(List<PickPlace> pickPlace){
    state = pickPlace;
  }
  void addPickPlace(PickPlace newPickPlace) {
    final isDuplicate = state.any((pickPlace) => pickPlace.contentId == newPickPlace.contentId);
    // 이미 있다면 더 이상 진행하지 않고 종료합니다.
    if (isDuplicate) return;

    // 중복되지 않은 경우에만 새로운 PickPlace를 추가합니다.
    state = [...state, newPickPlace];
  }

  void removePickPlace(String contentId) {
    state = state.where((pickPlace) => pickPlace.contentId != contentId).toList();
  }
}
