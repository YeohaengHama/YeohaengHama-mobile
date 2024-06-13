import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/budget/seleted_day_provider.dart';
import 'package:fast_app_base/data/memory/itinerary/add_pick_each_place_provider.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/w_pick_place.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/memory/itinerary/add_pick_place_provider.dart';

class BudgetPickArea extends ConsumerWidget {
  const BudgetPickArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickPlaceList = ref.watch(addPickEachPlaceProvider);
    final selectedDay = ref.watch(selectedDayProvider);

    // 선택된 날짜와 day 속성이 일치하는 아이템만 필터링하여 출력
    final filteredList = pickPlaceList.where((item) => item.day == selectedDay);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: '장소 선택'.text.make(),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: filteredList.length,
        itemBuilder: (context, index) {
          final place = filteredList.elementAt(index);
          return ListTile(
            title: PickPlaceWidget(place), // 예시: AddPickPlace에 name 속성이 있다고 가정
            // 다른 위젯 설정 및 동작 구현
          );
        },
      ),
    );
  }
}
