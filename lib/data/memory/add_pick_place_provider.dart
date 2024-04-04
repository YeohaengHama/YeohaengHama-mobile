import 'package:fast_app_base/data/entity/itinerary/a_add_pick_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addPickPlaceProvider = StateNotifierProvider<AddPickPlaceListNotifier, List<AddPickPlace>>((ref) {
  return AddPickPlaceListNotifier([]);
});

class AddPickPlaceListNotifier extends StateNotifier<List<AddPickPlace>> {
  AddPickPlaceListNotifier(List<AddPickPlace> initialState) : super(initialState);

  // void setAddPickPlaces(List<AddPickPlace> addPickPlaces) {
  //   state = addPickPlaces;
  // }

  void setAddPickPlace(AddPickPlace addPickPlace) {
    state = [...state, addPickPlace];
  }

  void removeAddPickPlace(AddPickPlace addPickPlace) {
    state = state.where((element) => element != addPickPlace).toList();
  }
}
