import 'package:fast_app_base/screen/main/search/s_space_search.dart';
import 'package:fast_app_base/screen/registration/tag/w_tag_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/memory/itinerary/Itinerary_provider.dart';
import '../pick/s_area_pick.dart';

class TagScreen extends ConsumerStatefulWidget {
  const TagScreen({super.key});

  @override
  ConsumerState<TagScreen> createState() => _TagScreenState();
}

class _TagScreenState extends ConsumerState<TagScreen> {

  final Map<int, String> whoTagMap = {
    0: '기타',
    1: '혼자',
    2: '친구와',
    3: '연인과',
    4: '배우자와',
    5: '아이와',
    6: '부모님과',
  };

  final Map<int, String> styleTagMap = {
    1: '체험∙액티비티',
    2: 'SNS 핫플레이스',
    3: '자연과 함께',
    4: '유명한 관광지는 필수',
    5: '여유롭게 힐링',
    6: '문화∙예술∙역사',
    7: '여행지 느낌 물씬',
    8: '쇼핑은 열정적으로',
    9: '관광보다 먹방',
  };

// 나머지 코드에 whoTagMap, styleTagMap 사용


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            '어떤 스타일의\n여행을 할 계획인가요?'
                .text
                .bold
                .color(AppColors.primaryGrey)
                .size(24)
                .make(),
            const SizedBox(height: 50),
            '누구와'
                .text
                .bold
                .color(AppColors.primaryGrey)
                .size(15)
                .make(),
            const SizedBox(height: 16),
            TagButton(whoTagMap: whoTagMap),
            const SizedBox(height: 16),

            '스타일'
                .text
                .bold
                .color(AppColors.primaryGrey)
                .size(15)
                .make(),
            TagButton(styleTagMap: styleTagMap),
            const Height(80),
          ],).pOnly(left: contentLeftPadding),


          Center(
            child: Tap(
              onTap:(){
                final List<String> selectedWhoTags =
                    ref.read(itineraryProvider.notifier).selectedWhoTags;
                final List<String> selectedStyleTags =
                    ref.read(itineraryProvider.notifier).selectedStyleTags;
                print('Selected Who Tags: $selectedWhoTags');
                print('Selected Style Tags: $selectedStyleTags');
                Nav.push(AreaPick());} ,
              child: RoundedContainer(
                radius: 5,
                backgroundColor: AppColors.mainPurple,
                child: SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [


                      '완료'.text.bold.white.make(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Height(12),
          Center(child: '다음에 하기'.text.underline.bold.color(AppColors.secondGrey).make()),

        ],
      ),
    );
  }
}
