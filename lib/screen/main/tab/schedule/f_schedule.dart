
import 'package:fast_app_base/screen/main/tab/schedule/s_schedule.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import '../../../../data/memory/itinerary/itinerary_check_provider.dart';

import 'f_non_schedule.dart';

class ScheduleFragment extends ConsumerWidget {
  const ScheduleFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itinerary = ref.watch(itineraryCheckProvider);

    if (itinerary != null ) {
      return ScheduleScreen(itinerary);
    } else {
      return NonSecheduleFragment(); // Placeholder는 필요에 따라 변경할 수 있습니다.
    }
  }
}
