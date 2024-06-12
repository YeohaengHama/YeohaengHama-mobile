import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entity/budget/vo_statistics.dart';


final statisticsProvider = StateNotifierProvider<StatisticsNotifier, Statistics?>((ref) {
  return StatisticsNotifier();
});

class StatisticsNotifier extends StateNotifier<Statistics?> {
  StatisticsNotifier() : super(null);

  void updateStatistics(Statistics newStatistics) {
    state = newStatistics;
  }
}
