import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/itinerary/a_check_itinerary.dart';
import 'package:fast_app_base/screen/client/main/tab/home/chat_bot/s_chat_bot.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/helper/s_helper.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_show_pick_day.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_show_pick_place.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/widget/scaffold/show_bottom_dialog.dart';
import '../../../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../schedule/edit/d_edit_schedule.dart';
import 'info/s_pick_place_info.dart';

class ExistScheduleWidget extends ConsumerWidget {
  const ExistScheduleWidget(this.itinerary, {super.key});

  final double tabListpV = 12;
  final double tabListph = 20;
  final CheckItinerary itinerary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDayIndexProvider =
        ref.watch(selectedDayIndexNotifierProvider);
    final selectedDayIndexNotifier =
        ref.read(selectedDayIndexNotifierProvider.notifier);
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
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShowPickDay(itineraryCheck!).pOnly(left: 20),
              ],
            ),
            Center(
              child: Container(
                alignment: Alignment.center, // Center align the container
                child: RoundButton(
                  text: '일정 수정',
                  fontSize: 14,
                  onTap: () {
                    ShowBottomDialog(context, EditScheduleDialog());
                  },
                  textColor: Colors.white,
                  leftWidget: const Icon(
                    Icons.cloud_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  bgColor: AppColors.secondGrey.withOpacity(0.13),
                  height: 35,
                ),
              ),
            ).pOnly(top: 5),
          ],
        ),
        ShowPickPlace(selectedDayIndexNotifier.state + 1),
        Container(
          color: Colors.white,
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
                child:
                    '맛집'.text.size(18).bold.color(AppColors.primaryGrey).make(),
              ).pSymmetric(h: tabListph, v: tabListpV),
              Container(
                child: '여행일기'
                    .text
                    .size(18)
                    .bold
                    .color(AppColors.primaryGrey)
                    .make(),
              ).pSymmetric(h: tabListph, v: tabListpV),
              Tap(
                onTap: () {
                 Nav.push(ChatBotScreen());
                },
                child: Container(
                  child: '챗봇'
                      .text
                      .size(18)
                      .bold
                      .color(AppColors.primaryGrey)
                      .make(),
                ).pSymmetric(h: tabListph, v: tabListpV),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
