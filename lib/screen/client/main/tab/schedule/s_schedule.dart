import 'dart:math';


import 'package:fast_app_base/common/theme/text_size.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/w_pickArea.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/w_schedule_map.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/w_show_pick_day.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/wallet/s_wallet.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../common/common.dart';

import '../../../../../common/dart/extension/datetime_extension.dart';
import '../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../data/memory/itinerary/show_save_place_provider.dart';
import '../../../../../data/network/itinerary_api.dart';
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
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              widget.itinerary.name.text
                  .size(15)
                  .bold
                  .color(AppColors.primaryGrey)
                  .make(),
              formatDateRange(widget.itinerary.startDate, widget.itinerary.endDate).text.size(titleSize-2).color(AppColors.thirdGrey).make()
            ],) ,
            leading: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // 뒤로가기 버튼 클릭 시 동작
                  Nav.push(const SpaceSearchFragment());
                }),
            actions: [
              IconButton(onPressed: () {
                Nav.push(WalletScreen(widget.itinerary));
              }, icon: const Icon(Icons.wallet)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.ios_share_outlined)),
              IconButton(onPressed:() => Scaffold.of(context).openEndDrawer(), icon: const Icon(Icons.list)),
            ],
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: maxWidthSize,
              height: 270,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onVerticalDragUpdate: (_) {

                },
                child: ScheduleMapWidget(),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
                            angle: 270 * (pi / 180),
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
                              return SizedBox(
                                width: 105,
                                height: 100,
                                child: PickAreaWidget(
                                    pickPlaceList[index], widget.itinerary),
                              ).pOnly(left: 5);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Height(15),
                Container(
                  color: Colors.white,
                  height: 200,
                  child: ShowPickDay(widget.itinerary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
