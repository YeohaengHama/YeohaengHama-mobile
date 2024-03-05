import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/search/s_space_search.dart';
import 'package:fast_app_base/screen/main/tab/schedule/w_schedule.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import '../../../../entity/schedule/vo_schedule.dart';
import '../../../post_detail/w_map.dart';

class ScheduleFragment extends StatefulWidget {
  const ScheduleFragment({super.key});

  @override
  State<ScheduleFragment> createState() => _ScheduleFragmentState();
}

class _ScheduleFragmentState extends State<ScheduleFragment> {
  @override
  Widget build(BuildContext context) {
    return ScheduleScreen(schedule: schedule1);
  }
}
