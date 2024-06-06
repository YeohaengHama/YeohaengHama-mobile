import 'package:fast_app_base/screen/client/main/tab/schedule/w_show_pick_place.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../data/memory/area/selectedDayIndex_provider.dart';



class ShowPickDay extends ConsumerStatefulWidget {
  const ShowPickDay(this.itinerary, {Key? key}) : super(key: key);
  final CheckItinerary itinerary;

  @override
  ConsumerState<ShowPickDay> createState() => _ShowPickAreaState();
}

class _ShowPickAreaState extends ConsumerState<ShowPickDay> {
  @override
  Widget build(BuildContext context) {
    final selectedDayIndexNotifier = ref.read(selectedDayIndexNotifierProvider.notifier);
    int currentDay = 0;
    return Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Consumer(
            builder: (context, watch, child) {
              final selectedIndex = ref.watch(selectedDayIndexNotifierProvider);
              return DropdownButton<int>(
                value: selectedIndex,
                onChanged: (int? index) {
                  selectedDayIndexNotifier.state = index != null ? index + 1 : 0;
                  selectedDayIndexNotifier.setSelectedDayIndex(index!);
                  setState(() {
                    currentDay = index! + 1;
                  });
                },
                items: List.generate(widget.itinerary.placesByDay.length, (index) {
                  final day = 'Day-${index + 1}';
                  return DropdownMenuItem<int>(
                    value: index,
                    child: Text(day),

                  );
                }
                ), underline: SizedBox(),
              );
            },
          ),
        ),
        ShowPickPlace(selectedDayIndexNotifier.state+1),


      ],
    );
  }
}


