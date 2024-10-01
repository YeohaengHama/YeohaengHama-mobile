import 'package:fast_app_base/data/entity/area/vo_pick_place_contents.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


final PickPlaceContentsApiResponseProvider =
StateNotifierProvider<PickPlaceContentsNotifier, AsyncValue<PickPlaceContents>>((ref) {
  return PickPlaceContentsNotifier();
});

class PickPlaceContentsNotifier extends StateNotifier<AsyncValue<PickPlaceContents>> {
  PickPlaceContentsNotifier() : super(const AsyncValue.loading());



  void addPickPlaceContents(PickPlaceContents pickPlaceContents) {
    state = AsyncValue.data(pickPlaceContents);
  }

}
