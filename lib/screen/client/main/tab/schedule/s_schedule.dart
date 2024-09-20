import 'dart:math';

import 'package:fast_app_base/common/theme/text_size.dart';
import 'package:fast_app_base/data/network/budget_api.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/provider/p_edit_mode.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/w_public_transport.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/w_TransportationDropdown.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/w_pickArea.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/w_schedule_map.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/w_show_pick_day.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/w_traffic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../common/common.dart';

import '../../../../../common/dart/extension/datetime_extension.dart';
import '../../../../../common/widget/scaffold/show_bottom_dialog.dart';
import '../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../data/memory/itinerary/show_save_place_provider.dart';
import '../../../../../data/network/itinerary_api.dart';
import '../../search/s_space_search.dart';
import 'budget/main_screen/s_budget.dart';
import 'edit/d_edit_schedule.dart';

class ScheduleScreen extends ConsumerStatefulWidget {
  const ScheduleScreen(this.itinerary, {super.key});

  @override
  ConsumerState<ScheduleScreen> createState() => _ScheduleScreenState();
  final CheckItinerary itinerary;
}


class _ScheduleScreenState extends ConsumerState<ScheduleScreen> {
  ItineraryApi itineraryApi = ItineraryApi(); // itineraryApi를 초기화하는 코드 추가
  BudgetApi budgetApi = BudgetApi();

  bool isEditMode = false;



  @override
  Widget build(BuildContext context) {
    final pickPlaceList = ref.watch(showPickPlaceApiResponseProvider);
    final _editModeProvider = ref.read(editModeProvider.notifier);
    return Scaffold(
      backgroundColor: AppColors.outline,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    widget.itinerary.name.text
                        .size(15)
                        .bold
                        .color(AppColors.primaryGrey)
                        .make(),
                    Tap(
                        onTap: () {
                          ShowBottomDialog(context, EditScheduleDialog());
                        },
                        child: '편집'
                            .text
                            .color(AppColors.thirdGrey)
                            .size(10)
                            .bold
                            .make()
                            .pSymmetric(h: 5))
                  ],
                ),
                formatDateRange(
                        widget.itinerary.startDate, widget.itinerary.endDate)
                    .text
                    .size(titleSize - 2)
                    .color(AppColors.thirdGrey)
                    .make()
              ],
            ),
            leading: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  // 뒤로가기 버튼 클릭 시 동작
                  Nav.push(const SpaceSearchFragment(null));
                }),
            actions: [
              IconButton(
                  onPressed: () async {
                    await budgetApi.showBudget(widget.itinerary, ref);
                    Nav.push(BudgetScreen(widget.itinerary));
                  },
                  icon: const Icon(Icons.wallet)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.ios_share_outlined)),
              IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: const Icon(Icons.list)),
            ],
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: maxWidthSize,
              height: 270,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onVerticalDragUpdate: (_) {},
                child: const ScheduleMapWidget(),
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
                      Stack(
                        children: [
                          Center(
                            child: Row(
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
                          ),
                          Positioned(
                            right: 10,
                            top: 0,
                            bottom: 0,
                            child:isEditMode
                                ? Tap(
                                  onTap: () {
                                    _editModeProvider.setEditMode(false);
                                    setState(() {
                                      isEditMode = false;
                                    });

                                  },
                                  child: '취소'
                                      .text
                                      .color(AppColors.thirdGrey)
                                      .size(10)
                                      .bold
                                      .make()
                                      .pSymmetric(h: 10),
                                )
                                : Tap(
                                  onTap: () {
                                    _editModeProvider.setEditMode(true);

                                    setState(() {
                                      isEditMode = true;
                                    });
                                  },
                                  child: '편집'
                                  .text
                                  .color(AppColors.thirdGrey)
                                  .size(10)
                                  .bold
                                  .make()
                                  .pSymmetric(h: 10),
                                ),
                          ),
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
                              return Tap(
                                onTap: () {
                                  Nav.push(const SpaceSearchFragment(null));
                                },
                                child: SizedBox(
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
                                ).pOnly(left: 10),
                              );
                            } else {
                              final reversedIndex =
                                  pickPlaceList.length - 1 - index;
                              return SizedBox(
                                width: 105,
                                height: 100,
                                child: PickAreaWidget(
                                    pickPlaceList[reversedIndex],
                                    widget.itinerary),
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
                  height: 160,
                  child: ShowPickDay(widget.itinerary),
                ),
                const Line(
                  height: 15,
                  color: AppColors.outline,
                ),
                const TrafficWidget(),
                Center(
                  child: Container(
                      color: Colors.white,
                      width: double.maxFinite,
                      child: Center(child: TrafficRouteDropDown())),
                ),
                SizedBox(height: 500, child: PublicTransportWidget())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
