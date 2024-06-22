
import 'package:fast_app_base/data/entity/diary/vo_find_all_diary.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/home_diary_holder.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_exist_schedule.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_hama_area.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_home_diary.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_non_schedule.dart';
import 'package:flutter/material.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



import '../../../../../data/memory/diary/diary_find_all_proiver.dart';
import '../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../data/network/diary_api.dart';
import '../../search/s_space_search.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {


  @override
  void initStat() {
    super.initState();
    final diaryApi = ref.read(diaryApiProvider);
    diaryApi.showAllDiary(ref);
  }

  final double tabListpV = 12;

  final double tabListph = 20;

  final double areaSize = 130;

  final double contentP = 15;

  final double contentLeftPadding = 30;

  final double listFontSize = 20.0;

  final double diaryContainerWidth = 270;

  final double diaryContainerHeight = 250;

  @override
  Widget build(BuildContext context) {
    final createdItinerary = ref.watch(itineraryCheckProvider);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.mainPurple,
      // Android에서 적용됨
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.mainPurple,
      // Android에서 네비게이션 바의 색상 설정
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: AppColors.outline,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: AppColors.mainPurple,
            title: null,
            scrolledUnderElevation: 0,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpaceSearchFragment(null)),
                  );
                },
                icon: const Icon(
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
                background: createdItinerary != null
                    ? ExistScheduleWidget(createdItinerary)
                    : NonSchduleWidget(
                        tabListph: tabListph, tabListpV: tabListpV)),
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
                  ).pOnly(top: contentP - 5),
                  const Line(color: AppColors.outline, height: lineHeight),
                  Container(
                    alignment: Alignment.topLeft,
                    child: '국내 여행자들의 생생한 여행일기'
                        .text
                        .bold
                        .size(listFontSize)
                        .make()
                        .pSymmetric(v: contentP, h: contentLeftPadding)
                        .pOnly(top: 6),
                  ),
                  HomeDiaryHolder(),
                  const Height(30),
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


