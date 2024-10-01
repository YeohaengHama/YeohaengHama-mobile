import 'package:fast_app_base/common/cli_common.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/animated_width_collapse.dart';
import 'package:fast_app_base/screen/client/fab/w_floating_daangn_button.riverpod.dart';


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main/menu/my_trip/diary/wirte/s_select_itinerary.dart';
import '../registration/calendar/s_calendar.dart';



class FloatingDaangnButton extends ConsumerWidget {
  FloatingDaangnButton({super.key});

  final duration = 300.ms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final floatingButtonState = ref.watch(floatingButtonStateProvider);
    final isExpanded = floatingButtonState.isExpanded;
    final isSmall = floatingButtonState.isSmall;


    return Stack(
      children: [
        IgnorePointer(
          ignoring: !isExpanded,
          child: AnimatedContainer(
            duration: duration,
            color: isExpanded ? Colors.black.withOpacity(0.4) : Colors.transparent,
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AnimatedOpacity(
                  opacity: isExpanded ? 1 : 0,
                  duration: duration,
                  child: Container(
                    width: 160,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(right: 15, bottom: 10),
                    decoration: BoxDecoration(

                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.mainPurple)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _floatItem('일정 추가하기', Icons.airplanemode_active,(){Nav.push(const CalenderScreen());}),
                        _floatItem('일기 작성하기', Icons.edit_note, (){Nav.push(const SelectItineraryScreen());}),

                      ],
                    ),
                  ),
                ),
                Tap(
                  onTap: () {
                    ref.read(floatingButtonStateProvider.notifier).onTapButton();
                  },
                  child: AnimatedContainer(
                    duration: duration,
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                        color: isExpanded
                            ? Colors.white
                            : AppColors.pastelPuple,
                        borderRadius: BorderRadius.circular(30),
                    border:Border.all(color: AppColors.pastelPuple, width: 2)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedRotation(
                            turns: isExpanded ? 0.125 : 0,
                            duration: duration,
                            child: Icon(Icons.add,color: isExpanded
                                ? AppColors.pastelPuple
                                : Colors.white),),
                        AnimatedWidthCollapse(
                          visible: !isSmall,
                          duration: duration,
                          child: '작성하기'.text.color(Colors.white).bold.make(),
                        )
                      ],
                    ),
                  ).pOnly(
                      right: 20),
                ),
              ],
            ))
      ],
    );
  }

  _floatItem(String title, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap, // 전달된 콜백 함수를 사용하여 항목 클릭 이벤트 연결
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: AppColors.pastelPuple),
              const Width(8),
              title.text.bold.color(AppColors.mainPurple).make(),
            ],
          ).pOnly(bottom: 5, top: 5),
        ],
      ),
    );
  }

}
