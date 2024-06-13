
import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedTrafficRouteIndexNotifierProvider = StateNotifierProvider<SelectedTrafficRouteIndexNotifier, int>((ref) => SelectedTrafficRouteIndexNotifier());

class SelectedTrafficRouteIndexNotifier extends StateNotifier<int> {
  SelectedTrafficRouteIndexNotifier() : super(0);

  void setSelectedTrafficRouteIndex(int index) {
    state = index;
  }
}
