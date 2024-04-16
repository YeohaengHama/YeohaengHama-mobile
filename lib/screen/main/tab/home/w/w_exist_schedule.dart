import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/itinerary/a_check_itinerary.dart';
import 'package:fast_app_base/data/entity/itinerary/a_creat_itinerary.dart';
import 'package:fast_app_base/screen/main/tab/schedule/w_show_pick_day.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/entity/itinerary/vo_itinerary.dart';

import '../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../registration/calendar/s_calendar.dart';

class ExistScheduleWidget extends ConsumerWidget {
  const ExistScheduleWidget(this.itinerary, {super.key});
  final double tabListpV = 12;
  final double tabListph = 20;
  final CheckItinerary itinerary;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itineraryCheck = ref.watch(itineraryCheckProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        '${itinerary.area}, 여행 중 '
            .text
            .color(Colors.white)
            .size(25)
            .bold
            .center
            .make(),
        RoundButton(
          text: '일정 수정',
          fontSize: 14,
          onTap: (){Nav.push(CalenderScreen());},
          textColor: Colors.white,
          leftWidget: const Icon(
            Icons.calendar_today_outlined,
            size: 20,
            color: Colors.white,
          ),
          bgColor: AppColors.secondGrey.withOpacity(0.13),
          height: 35,
        ),
        ShowPickDay(itineraryCheck!).pOnly(bottom: 10),
        Container(color: Colors.white,
          child: Row(
            children: [
              Container(
                child: '관광지'
                    .text
                    .size(18)
                    .bold
                    .color(AppColors.primaryGrey)
                    .make(),
              ).pSymmetric(h: tabListph, v: tabListpV),
              Container(
                child: '맛집'
                    .text
                    .size(18)
                    .bold
                    .color(AppColors.primaryGrey)
                    .make(),
              ).pSymmetric(h: tabListph, v: tabListpV),
              Container(
                child: '여행일기'
                    .text
                    .size(18)
                    .bold
                    .color(AppColors.primaryGrey)
                    .make(),
              ).pSymmetric(h: tabListph, v: tabListpV),
            ],
          ),
        ),
      ],
    );
  }
}
