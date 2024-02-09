import 'package:fast_app_base/screen/main/tab/home/w/w_home_diary.dart';
import 'package:flutter/material.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/tab/home/w/w_hama_area.dart';
import 'package:fast_app_base/screen/main/tab/home/w/w_no_schdule.dart';

class HomeFragment extends StatelessWidget {
  final double tabListpV = 12;
  final double tabListph = 20;
  final double areaSize = 130;
  final double contentP = 15;
  final double contentLeftPadding = 30;
  final double listFontSize = 20.0;
  final double diaryContainerWidth = 270;
  final double diaryContainerHeight = 250;

  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.outline,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: AppColors.mainPurple,
            title: null,
            actions: [
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => openEndDrawer(context),
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ],
            expandedHeight: 260,
            // Adjust this height based on your needs
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: AppColors.mainPurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    '여행, 떠나볼까요?'
                        .text
                        .color(Colors.white)
                        .size(25)
                        .bold
                        .center
                        .make(),
                    RoundButton(
                      text: '일정 등록',
                      fontSize: 14,
                      onTap: () => null,
                      textColor: Colors.white,
                      leftWidget: const Icon(
                        Icons.calendar_today_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      bgColor: AppColors.secondGrey.withOpacity(0.13),
                      height: 35,
                    ),
                    const NoScheduleWidget(),
                    Container(color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            child: '관광지'
                                .text
                                .size(18)
                                .bold
                                .color(AppColors.primaryGrey)
                                .make(),
                          ).pSymmetric(h: tabListph, v: tabListpV),
                          Container(
                            child: '맛집'
                                .text
                                .size(18)
                                .bold
                                .color(AppColors.primaryGrey)
                                .make(),
                          ).pSymmetric(h: tabListph, v: tabListpV),
                          Container(
                            child: '여행일기'
                                .text
                                .size(18)
                                .bold
                                .color(AppColors.primaryGrey)
                                .make(),
                          ).pSymmetric(h: tabListph, v: tabListpV),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  const Line(color: AppColors.outline, height: lineHeight),
                  Container(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '여행하마 ',
                            style: TextStyle(
                                color: AppColors.mainPurple,
                                fontSize: listFontSize,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '여행 추천지',
                            style: TextStyle(
                                color: AppColors.primaryGrey,
                                fontSize: listFontSize,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ).pSymmetric(v: 8),
                  ).pOnly(left: contentLeftPadding, top: contentP),
                  SizedBox(
                    width: double.infinity,
                    height: areaSize + areaSize + 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: (areaList.length / 2).ceil(),
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (index * 2 < areaList.length)
                              SizedBox(
                                width: areaSize,
                                height: areaSize,
                                child: HamaAreaWidget(
                                  areaList[index * 2],
                                  indexInList: index * 2 + 1,
                                ),
                              ).p(5),
                            if (index * 2 + 1 < areaList.length)
                              SizedBox(
                                width: areaSize,
                                height: areaSize,
                                child: HamaAreaWidget(
                                  areaList[index * 2 + 1],
                                  indexInList: index * 2 + 2,
                                ),
                              ).p(5),
                          ],
                        );
                      },
                    ),
                  ).pOnly(left: contentLeftPadding-5, top: contentP - 5),
                  const Line(color: AppColors.outline, height: lineHeight),
                  Container(
                    alignment: Alignment.topLeft,
                    child: '국내 여행자들의 생생한 여행일기'
                        .text
                        .bold
                        .size(listFontSize)
                        .make()
                        .pSymmetric(v: contentP , h: contentLeftPadding).pOnly(top: 6),
                  ),

                  SizedBox(
                    width: maxWidthSize,
                    height: diaryContainerHeight+20,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: diaryList.length,
                        itemBuilder: (context, index) {
                        return Row(
                          children: [
                            SizedBox(
                              width: diaryContainerWidth,
                              height: diaryContainerHeight,
                              child: HomeDiaryWidget(diaryList[index]),
                            )
                          ],
                        ).pOnly(right: 15);
                        }),
                  ).pOnly(left: contentLeftPadding,bottom: contentP),


                  Container(
                    color: Colors.white,
                    height: 300,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void openEndDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }
}
