import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedDayProvider = StateNotifierProvider<SelectedDayProvider, int>((ref) => SelectedDayProvider());

class SelectedDayProvider extends StateNotifier<int> {
  SelectedDayProvider() : super(0);

  void setSelectedDay(int index) {
    state = index;
  }
}
