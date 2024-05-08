

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/itinerary/a_add_pick_place.dart';

final addPickEachPlaceProvider = StateNotifierProvider<AddPickEachPlaceListNotifier, List<AddPickPlace>>((ref) {
  return AddPickEachPlaceListNotifier();
});

  class AddPickEachPlaceListNotifier extends StateNotifier<List<AddPickPlace>> {
  AddPickEachPlaceListNotifier() : super([]);

  // class AddPickEachPlaceListNotifier extends StateNotifier<List<AddPickPlace>> {
  // AddPickEachPlaceListNotifier(List<AddPickPlace> initialState) : super(initialState);
  // void setAddPickPlaces(List<AddPickPlace> addPickPlaces) {
  //   state = addPickPlaces;
  // }

  void setAddPickPlace(List<AddPickPlace> addPickPlace) {
    state = addPickPlace;
  }

  void removeAddPickPlace(AddPickPlace addPickPlace) {
    state = state.where((element) => element != addPickPlace).toList();
  }
  void clearPlace() {
    state = []; // 리뷰 목록을 비움
  }
}
