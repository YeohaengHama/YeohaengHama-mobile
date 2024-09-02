import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/info/s_pick_place_info.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../../../../data/memory/itinerary/add_pick_each_place_provider.dart';
import '../../../../../../../data/memory/itinerary/itinerary_check_provider.dart';

class ChangePlace extends ConsumerStatefulWidget {
  const ChangePlace({Key? key}) : super(key: key);

  @override
  ConsumerState<ChangePlace> createState() => _ChangePlaceState();
}

class _ChangePlaceState extends ConsumerState<ChangePlace> {
  int currentDay = 0;

  @override
  Widget build(BuildContext context) {
    final addPickPlaceListNotifier = ref.watch(addPickEachPlaceProvider);
    final selectedDayIndexNotifier = ref.read(selectedDayIndexNotifierProvider.notifier);
    final createdItinerary = ref.watch(itineraryCheckProvider);

    // 필터링된 리스트를 가져옵니다.
    List<AddPickPlace> filteredList = addPickPlaceListNotifier
        .where((element) => element.day == selectedDayIndexNotifier.state + 1)
        .toList();

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: DropdownButton<int>(
          value: selectedDayIndexNotifier.state ,
          onChanged: (int? index) {
            if (index != null) {
              selectedDayIndexNotifier.state = index;
              selectedDayIndexNotifier.setSelectedDayIndex(index);
              setState(() {
                currentDay = index + 1;
              });
            }
          },
          selectedItemBuilder: (BuildContext context) {
            return List.generate(createdItinerary!.placesByDay.length, (index) {
              final day = 'Day-${index + 1}';
              return Container(
                alignment: Alignment.center,
                child: Text(day, style: TextStyle(color: AppColors.primaryGrey)),
              );
            });
          },
          items: List.generate(createdItinerary!.placesByDay.length, (index) {
            final day = 'Day-${index + 1}';
            return DropdownMenuItem<int>(
              value: index,
              child: Text(day, style: TextStyle(color: Colors.black)),
            );
          }),
          dropdownColor: Colors.white,
          underline: SizedBox.shrink(),
          icon: Icon(Icons.arrow_drop_down, color: AppColors.primaryGrey),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return ListTile(
                  title: Tap(
                    onTap: () {
                      Nav.pop(context);
                      Nav.pop(context);
                      Nav.push(PickPlaceInfoScreen(filteredList[index]));
                    },
                    child: Center(child: Text('${index + 1}. ${filteredList[index].placeName}')),
                  ),
                );
              },
              childCount: filteredList.length,
            ),
          ),
        ],
      ),
    );
  }
}
