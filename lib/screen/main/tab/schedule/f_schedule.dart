import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/search/s_space_search.dart';
import 'package:fast_app_base/screen/main/tab/schedule/s_schedule.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math';

import '../../../../data/memory/Itinerary_provider.dart';
import '../../../../entity/schedule/vo_schedule.dart';
import '../../../post_detail/w_map.dart';
import 'f_non_schedule.dart';

class ScheduleFragment extends ConsumerWidget {
  const ScheduleFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itineraryList = ref.watch(itineraryProvider);

    if (itineraryList.isNotEmpty) {
      return ScheduleScreen(itineraryList.first);
    } else {
      return NonSecheduleFragment(); // Placeholder는 필요에 따라 변경할 수 있습니다.
    }
  }
}
