import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/w_show_pick_place.dart';

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
              return GestureDetector(
                onTap: () async {
                  final int? picked = await showCupertinoModalPopup<int>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200.0,
                        color: CupertinoColors.white,
                        child: CupertinoPicker(
                          itemExtent: 32.0,
                          onSelectedItemChanged: (int index) {
                            selectedDayIndexNotifier.setSelectedDayIndex(index);
                            setState(() {
                              currentDay = index + 1;
                            });
                          },
                          children: List<Widget>.generate(widget.itinerary.placesByDay.length, (int index) {
                            return Center(
                              child: Text('Day-${index + 1}'),
                            );
                          }),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey6,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Day-${selectedIndex + 1}'),
                      Icon(CupertinoIcons.down_arrow),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        ShowPickPlace(selectedDayIndexNotifier.state + 1),
      ],
    );
  }
}
