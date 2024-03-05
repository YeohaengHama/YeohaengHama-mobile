import 'dart:math';

import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/tab/schedule/w_pickArea.dart';
import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../../../../entity/schedule/vo_schedule.dart';
import '../../../post_detail/w_map.dart';
import '../../search/s_space_search.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key, this.schedule});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
  final Schedule? schedule;

}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.outline,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            title:'국내 여행'.text.size(15).bold.color(AppColors.primaryGrey).make(),
            leading: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // 뒤로가기 버튼 클릭 시 동작
                  Nav.push(SpaceSearchFragment());
                }),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.ios_share_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.list)),
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
                  child:
                  Column(children: [
                    Icon(Icons.arrow_drop_up_sharp,size: 30,color: AppColors.secondGrey,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        '담은 장소'.text.color(AppColors.primaryGrey).size(15).bold.make().pOnly(right: 5,bottom: 5),
                        Transform.rotate(
                          angle: 270 * (pi / 180), // 270도를 라디안으로 변환
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 15,
                            color: AppColors.secondGrey,
                          ).pOnly(left:5 ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: maxWidthSize,
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: (widget.schedule?.pickMyArea?.length ?? 0) + 1, // 마지막에 추가할 빈 테두리 박스를 위해 1을 더합니다
                        itemBuilder: (context, index) {
                          if (index == widget.schedule?.pickMyArea?.length) {
                            // 마지막 항목인 경우
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
                                child: Icon(Icons.add,color: AppColors.forthGrey,),
                              ),
                            ).pOnly(left: 10);
                          } else {
                            // 기존 항목들에 대한 처리
                            final currentItem = widget.schedule?.pickMyArea?[index];
                            return SizedBox(
                              width: 105,
                              height: 100,
                              child: PickAreaWidget(schedule: schedule1, currentIndex: index),
                            ).pOnly(left: 5);
                          }
                        },
                      ),
                    ),



                  ],),
                ),
              ],
            ),
          )
          // 다른 SliverAppBar 구성 추가 가능
        ],
      ),
    );
  }
}
