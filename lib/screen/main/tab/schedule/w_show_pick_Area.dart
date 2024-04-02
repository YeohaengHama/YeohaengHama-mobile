import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/common.dart';
import '../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../data/memory/area/selectedDayIndex_provider.dart';


class ShowPickArea extends ConsumerStatefulWidget {
  const ShowPickArea(this.itinerary, {Key? key}) : super(key: key);
  final CheckItinerary itinerary;

  @override
  ConsumerState<ShowPickArea> createState() => _ShowPickAreaState();
}

class _ShowPickAreaState extends ConsumerState<ShowPickArea> {
  @override
  Widget build(BuildContext context) {
    final selectedDayIndexNotifier = ref.read(selectedDayIndexNotifierProvider.notifier);
    return Column(
      children: [
        Container(
          height: 200,
          width: maxWidthSize,
          color: Colors.white,
          child: Align(
            alignment: Alignment.topCenter,
            child: Consumer(
              builder: (context, watch, child) {
                final selectedIndex = ref.watch(selectedDayIndexNotifierProvider); // 상태 읽어오기
                return DropdownButton<int>(
                  value: selectedIndex,
                  onChanged: (int? index) {
                    selectedDayIndexNotifier.state = index ?? 0;//// 상태 업데이트
                    selectedDayIndexNotifier.setSelectedDayIndex(index!);
                  },
                  items: List.generate(widget.itinerary.placesByDay.length, (index) {
                    final day = 'Day-${index + 1}';
                    return DropdownMenuItem<int>(
                      value: index,
                      child: Text(day),
                    );
                  }),
                );
              },
            ),
          ),
        ),
        Consumer(
          builder: (context, watch, child) {
            final selectedIndex =selectedDayIndexNotifier.state;
            return Text('Selected Index: $selectedIndex');
          },
        ),
      ],
    );
  }
}
