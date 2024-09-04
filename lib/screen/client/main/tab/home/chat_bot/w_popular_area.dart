import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../../../data/entity/bot/chat_bot.dart';
import '../../../../../../entity/dummies.dart';
import '../w/w_hama_area.dart';

class PopularAreaWidget extends StatelessWidget {
  final ShowPopularAreaResult data;

  PopularAreaWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    final double areaSize = 130;
    final double contentP = 15;

    // PopularArea 데이터의 UI를 구성합니다.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '음.. 이러한 여행지는 어때요? 🤔'.text.color(AppColors.secondGrey).make(),
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
      ],
    );
  }
}
