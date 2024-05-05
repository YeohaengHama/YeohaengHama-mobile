import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_no_schdule.dart';
import 'package:flutter/material.dart';

import '../../../../registration/calendar/s_calendar.dart';

class NonSchduleWidget extends StatelessWidget {
  const NonSchduleWidget({
    super.key,
    required this.tabListph,
    required this.tabListpV,
  });

  final double tabListph;
  final double tabListpV;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        '여행, 떠나볼까요?'
            .text
            .color(Colors.white)
            .size(25)
            .bold
            .center
            .make(),
        RoundButton(
          text: '일정 등록',
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
        const NoScheduleWidget(),
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
