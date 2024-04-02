import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedDayIndexNotifierProvider = StateNotifierProvider<SelectedDayIndexNotifier, int>((ref) => SelectedDayIndexNotifier());

class SelectedDayIndexNotifier extends StateNotifier<int> {
  SelectedDayIndexNotifier() : super(0);

  void setSelectedDayIndex(int index) {
    state = index;
  }
}
