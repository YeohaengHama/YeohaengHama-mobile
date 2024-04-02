import 'dart:math';

import 'package:fast_app_base/data/entity/itinerary/a_creat_itinerary.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/tab/schedule/w_pickArea.dart';
import 'package:fast_app_base/screen/main/tab/schedule/w_show_pick_Area.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/common.dart';
import '../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../data/memory/show_save_place_provider.dart';
import '../../../../data/network/itinerary_api.dart';
import '../../../../entity/schedule/vo_schedule.dart';
import '../../../post_detail/w_map.dart';
import '../../search/s_space_search.dart';

class ScheduleScreen extends ConsumerStatefulWidget {
  const ScheduleScreen(this.itinerary, {super.key});

  @override
  ConsumerState<ScheduleScreen> createState() => _ScheduleScreenState();
  final CheckItinerary itinerary;
}

class _ScheduleScreenState extends ConsumerState<ScheduleScreen> {
  ItineraryApi itineraryApi = ItineraryApi(); // itineraryApi를 초기화하는 코드 추가

  @override
  Widget build(BuildContext context) {
    final pickPlaceList = ref.watch(showPickPlaceApiResponseProvider);

    return Scaffold(
      backgroundColor: AppColors.outline,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            title: widget.itinerary.name.text
                .size(15)
                .bold
                .color(AppColors.primaryGrey)
                .make(),
            leading: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // 뒤로가기 버튼 클릭 시 동작
                  Nav.push(const SpaceSearchFragment());
                }),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.wallet)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.ios_share_outlined)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  width: maxWidthSize,
                  height: 270,
                  child: mapWidget(),
                ),
                Container(
                  color: Colors.white,
                  width: maxWidthSize,
                  height: 170,
                  child: Column(
                    children: [
                      const Icon(
                        Icons.arrow_drop_up_sharp,
                        size: 30,
                        color: AppColors.secondGrey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          '담은 장소'
                              .text
                              .color(AppColors.primaryGrey)
                              .size(15)
                              .bold
                              .make()
                              .pOnly(right: 5, bottom: 5),
                          Transform.rotate(
                            angle: 270 * (pi / 180), // 270도를 라디안으로 변환
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 15,
                              color: AppColors.secondGrey,
                            ).pOnly(left: 5),
                          )
                        ],
                      ),
                      SizedBox(
                        width: maxWidthSize,
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: (pickPlaceList.length ?? 0) + 1,
                          itemBuilder: (context, index) {
                            final pickPlaceList =
                                ref.watch(showPickPlaceApiResponseProvider);
                            if (pickPlaceList.isEmpty ||
                                index == pickPlaceList.length) {
                              // pickPlaceList가 비어 있거나, 마지막 항목인 경우
                              return SizedBox(
                                width: 105,
                                height: 100,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.thirdGrey,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Icon(Icons.add,
                                      color: AppColors.forthGrey),
                                ),
                              ).pOnly(left: 10);
                            } else {
                              // 기존 항목들에 대한 처리
                              return SizedBox(
                                width: 105,
                                height: 100,
                                child: PickAreaWidget(pickPlaceList[index],widget.itinerary),
                              ).pOnly(left: 5);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Height(15),
                ShowPickArea(widget.itinerary)
              ],
            ),
          )
          // 다른 SliverAppBar 구성 추가 가능
        ],
      ),
    );
  }
}
