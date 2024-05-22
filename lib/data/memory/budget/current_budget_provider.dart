import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entity/budget/vo_current_budget.dart';


final currentBudgetProvider = StateNotifierProvider<CurrentBudgetNotifier, CurrentBudget?>((ref) {
  return CurrentBudgetNotifier();
});

class CurrentBudgetNotifier extends StateNotifier<CurrentBudget?> {
  CurrentBudgetNotifier() : super(null);

  void setCurrentBudget(CurrentBudget budget) {
    state = budget;
  }


}
