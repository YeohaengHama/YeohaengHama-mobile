import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../data/memory/add_pick_place_provider.dart';

class ShowPickPlace extends ConsumerWidget {
  const ShowPickPlace(this.currentDay, {Key? key}) : super(key: key);
  final int currentDay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addPickPlaceListNotifier = ref.watch(addPickPlaceProvider);
    print(currentDay);
    // 현재 일치하는 요소만 필터링
    List<AddPickPlace> filteredList = addPickPlaceListNotifier.where((element) => element.day == currentDay).toList();
    print(filteredList);

    return Container(
      height: 85,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: filteredList.asMap().entries.map((entry) {
            final index = entry.key;
            final addPickPlace = entry.value;
            return RoundedContainer(
              radius: 20,
              padding:const EdgeInsets.symmetric(horizontal: 20),
              backgroundColor: Colors.white,
              borderColor: AppColors.outline,
              borderWidth: 3,
              child: SizedBox(
                width: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.mainPurple, // 동그란 배경 색상
                          ),
                          padding: const EdgeInsets.all(4), // 동그란 배경과 텍스트 사이의 간격 조절
                          child: Text(
                            '${index + 1}',
                            style: const TextStyle(
                              color: Colors.white, // 텍스트 색상
                            ),
                          ),
                        ).pOnly(right: 4), // 인덱스 출력
                        addPickPlace.placeName!.text.color(AppColors.primaryGrey).size(15).bold.make(),
                      ],
                    ),
                    addPickPlace.addr1 != null ? addPickPlace.addr1!.text.color(AppColors.thirdGrey).size(10).make() : ''.text.size(15).make(),
                    // AddPickPlace의 다른 속성에 대한 출력
                  ],
                ),
              ),
            ).pOnly(right: 15);
          }).toList(),
        ),
      ).pOnly(left: 10),
    );
  }
}
