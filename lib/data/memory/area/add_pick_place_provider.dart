import 'package:fast_app_base/data/entity/itinerary/a_add_pick_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addPickPlaceProvider = StateNotifierProvider<AddPickPlaceNotifier, AddPickPlace?>((ref) {
  return AddPickPlaceNotifier();
});

class AddPickPlaceNotifier extends StateNotifier<AddPickPlace?> {
  AddPickPlaceNotifier() : super(null);

  void setAddPickPlace(AddPickPlace? addPickPlace) {
    state = addPickPlace;
  }
}
